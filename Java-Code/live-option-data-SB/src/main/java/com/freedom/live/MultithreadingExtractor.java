package com.freedom.live;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.joda.time.DateTime;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.json.BasicJsonParser;
import org.springframework.boot.json.JsonParser;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveOptionPriceData;
import com.freedom.live.models.LiveOptionPriceDataRepository;
import com.freedom.live.models.SelectedInstrument;

@Component
public class MultithreadingExtractor {

	/**
	 * @param urlFile
	 *            Path for file which consists of URLs to be scraped
	 * @param outputFile
	 *            File where scrape results will be written
	 * @throws InterruptedException
	 * @throws ExecutionException
	 * @throws TimeoutException
	 */

	@Autowired
	private LiveOptionPriceDataRepository LiveOptionPriceDataRepository;

	List<SelectedInstrument> instrumentList = new ArrayList<>();

	Map<SelectedInstrument, String> mapUrls = new HashMap<SelectedInstrument, String>();

	Date startTime;

	int scrapeCount = 0;

	Map<SelectedInstrument, Long> mapGlobalVolumes;

	List<LiveOptionPriceData> liveDataObjs = new ArrayList<>();
	
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy hh:mm:ss");

	public MultithreadingExtractor() {

		try {
			this.instrumentList = new ArrayList<SelectedInstrument>();
			this.mapUrls = new HashMap<SelectedInstrument, String>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<SelectedInstrument, Long>();
			this.liveDataObjs = new ArrayList<>();
		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}

	public void scrapeURLs() throws InterruptedException, ExecutionException, TimeoutException {
			ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 10,
                0L, TimeUnit.MILLISECONDS,
                new LinkedBlockingQueue<Runnable>());
//		ExecutorService executorService = Executors.newFixedThreadPool(20);
		// ExecutorService executorServiceSave = Executors.newFixedThreadPool();

			int count = 0;

		while (true/* count < 500 */) {
			for (SelectedInstrument instrument : instrumentList)

			{
				if(executor.getQueue().size() > 0)
				{
					continue;
				}
				String urlstr = "" + mapUrls.get(instrument);
				//
				// Create a callable instance which calls the function that invokes the scraping
				// for each URL
				//
				Callable<?> callable = new Callable<Object>() {
					public String call() throws Exception {
						LiveOptionPriceData data = scrapeIndividualURls(instrument, urlstr);

						if (data == null) {
							return "";
						}
						putDatainList(data);
						return "";

					}
				};
				//
				// Submit the task to executorService; At this point the scraping starts
				//
				
				executor.submit(callable);
				// executorService.submit(callable);

			}

			try {
				if (liveDataObjs.size() >= 5) {
					updateDB();
				}
			} catch (Exception e) {
				
				e.printStackTrace();
			}


			count++;
		}


	}

	/**
	 * Scrape the URL
	 * 
	 * @param urlstr
	 * @return
	 * @throws IOException
	 */

	
	public LiveOptionPriceData scrapeIndividualURls(SelectedInstrument instrument, String urlstr) throws IOException {

		if (startTime == null) {
			startTime = new Date();
		}

		String symbol = instrument.getSymbol();
		String optionType = instrument.getOption_type();
		float strikePrice = instrument.getOption_strike_price();
		
		Document document = null;

		// synchronized (MultithreadingExtractor.this)
		{
			document = Jsoup.connect(urlstr)
					// .header("Cache-control",
					// "no-cache").header("Cache-store",
					// "no-store").timeout(4000)
					.post();

			// sop(""+document);
		}
		scrapeCount++;

		// Date endTime = new Date();

		Elements descs = document.select("div#responseDiv");
		Element desc;
		desc = descs.first();
		List<Node> childNodes = desc.childNodes();

		Node first = childNodes.get(0);

		String lastPrice = "0";

		lastPrice = getValueFromNode(first, "lastPrice", "lowPrice",2);

		
		String volume = "0";
		
		volume = getValueFromNode(first, "numberOfContractsTraded", "underlyingValue",2);


		String openPrice = "0";
		
		openPrice = getValueFromNode(first, "openPrice", "closePrice",2);


		String highPrice = "0";
		
		highPrice = getValueFromNode(first, "highPrice", "companyName",4);


		String lowPrice = "0";
		
		lowPrice = getValueFromNode(first, "lowPrice", "strikePrice",2);
		
		String currTime = "0";
		
		currTime = getValueFromNode(first, "lastUpdateTime", "ocLink",2);


		if (new Long(volume).compareTo(mapGlobalVolumes.get(instrument)) > 0) {

			sop("update for symbol = " + symbol + ", optionType = " + optionType + ", strikePrice = " + strikePrice);

			long globalVolume = new Long(volume);

			mapGlobalVolumes.put(instrument, globalVolume);

			LiveOptionPriceData liveOptionPriceData = new LiveOptionPriceData();

			// LiveOptionPriceData.setId(0);
			
			try {

				liveOptionPriceData.setCurr_time(new DateTime(simpleDateFormat.parse(currTime)));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.MINUTE, -2);
				liveOptionPriceData.setCurr_time(new DateTime(cal.getTime()));
			}
			
			liveOptionPriceData.setSymbol(symbol);
			liveOptionPriceData.setOption_type(instrument.getOption_type());
			liveOptionPriceData.setOption_strike_price(instrument.getOption_strike_price());
			liveOptionPriceData.setVolume(globalVolume);
			liveOptionPriceData.setLast_price(new Float(lastPrice));
			liveOptionPriceData.setOpen_price(new Float(openPrice));
			liveOptionPriceData.setHigh_price(new Float(highPrice));
			liveOptionPriceData.setLow_price(new Float(lowPrice));

			return liveOptionPriceData;

		}

		// sop("Time Taken = " + (endTime.getTime() - startTime.getTime()) + "
		// ms for symbol = " + symbol + " and " + "scrapeCount = " +
		// scrapeCount);

		return null;

	}

	private String getValueFromNode(Node first, String strTarget, String strNext, int noCharsFromNext) {

		JsonParser parser = new BasicJsonParser();
		Map<String, Object> output = null;
		String finalBit = "";
		try {
			String input = first.toString().trim();
			int indexOfLowPrice = input.lastIndexOf(strNext);
			String lastPriceBit = input.substring(input.lastIndexOf(strTarget) - 1, indexOfLowPrice - noCharsFromNext);

			 finalBit = "{" + lastPriceBit + "}";
			 finalBit = finalBit.replaceAll(",", "");
			// input = input.replace("\"","");
			// input = "{\"bar\" : \"true\",\"baz\" : \"1\"}";
			output = parser.parseMap(finalBit);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//return getValueFromNode(first,strTarget,strNext,noCharsFromNext);
		}

		return "" + output.get(strTarget);
	}

	
	private void putDatainList(LiveOptionPriceData LiveOptionPriceData) {

		synchronized (liveDataObjs) {
			liveDataObjs.add(LiveOptionPriceData);
		}

	}

	private void updateDB() {

		try {
			synchronized (liveDataObjs) {
				LiveOptionPriceDataRepository.save(liveDataObjs);
				liveDataObjs = new ArrayList<LiveOptionPriceData>();
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}

	public static void main(String[] args) throws Exception {/*

		// JsoupTest jt = new JsoupTest();

		MultithreadingExtractor mt = new MultithreadingExtractor();

		String[] symbols = { "HPC", "COAL", "TM", "BATA", "WIPRO", "ADANIPORT", "ONGC", "IOC", "ZEE", "BOSCH"

		};

		String[] urls = {
				"http://www.moneycontrol.com/india/stockpricequote/refineries/hindustanpetroleumcorporation/HPC",
				"http://www.moneycontrol.com/india/stockpricequote/mining-minerals/coalindia/CI11",
				"http://www.moneycontrol.com/india/stockpricequote/computers-software/techmahindra/TM4",
				"http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01",
				"http://www.moneycontrol.com/india/stockpricequote/computers-software/wipro/W",
				"http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/adaniportsspecialeconomiczone/MPS",
				"http://www.moneycontrol.com/india/stockpricequote/oil-drilling-and-exploration/oilnaturalgascorporation/ONG",
				"http://www.moneycontrol.com/india/stockpricequote/refineries/indianoilcorporation/IOC",
				"http://www.moneycontrol.com/india/stockpricequote/media-entertainment/zeeentertainmententerprises/ZEE",
				"http://www.moneycontrol.com/india/stockpricequote/auto-ancillaries/bosch/B05" };

		for (int i = 0; i < symbols.length; i++) {

			String symbol = symbols[i];// "BATAINDIA" + i;

			mt.instrumentList.add(symbol);

			mt.mapUrls.put(SelectedInstrument, urls[i]);

			long globalVolume = new Long(0);
			mt.mapGlobalVolumes.put(symbol, globalVolume);
		}

		mt.scrapeURLs();
		// currTime.downloadData();
	*/}

	private String cleanData(String input) {
		input = input.replaceAll(",", "");
		input = input.replaceAll("<strong>", "");
		input = input.replaceAll("</strong>", "");
		return input;

	}

	private void sop(String text) {

		System.out.println(text);
	}

}
