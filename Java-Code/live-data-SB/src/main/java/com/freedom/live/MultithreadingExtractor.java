package com.freedom.live;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeoutException;

import javax.transaction.Transactional;

import org.joda.time.DateTime;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveStockData;
import com.freedom.live.models.LiveStockDataRepository;

import us.codecraft.xsoup.Xsoup;

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
	private LiveStockDataRepository liveStockDataRepository;

	List<String> symbols = new ArrayList<>();

	Map<String, String> mapUrls = new HashMap<String, String>();

	Date startTime;

	int scrapeCount = 0;

	Map<String, Long> mapGlobalVolumes;

	List<LiveStockData> liveDataObjs = new ArrayList<>();

	public MultithreadingExtractor() {

		try {
			this.symbols = new ArrayList<>();
			this.mapUrls = new HashMap<String, String>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<String, Long>();
			this.liveDataObjs = new ArrayList<>();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void scrapeURLs() throws InterruptedException, ExecutionException, TimeoutException {
		// uiter = mapUrls.entrySet().iterator();
		// Iterate through all URLs
		// if (uiter != null)

		//
		// Create an ExecutorService using a newFixedThreadPool
		//
		ExecutorService executorService = Executors.newFixedThreadPool(20);

		// ExecutorService executorServiceSave = Executors.newFixedThreadPool();

		//
		// Create a map of Future and URLs
		//
		// Map<Future, String> tasks = new LinkedHashMap<Future, String>();

		// Iterator through all URLs for scraping the web
		// while (uiter.hasNext())
		int count = 0;

		while (true/* count < 500 */) {
			for (String symbol : symbols)

			{
				String urlstr = "" + mapUrls.get(symbol);
				//
				// Create a callable instance which calls the function that invokes the scraping
				// for each URL
				// and get the content (full or part based on some rules)
				//
				Callable<?> callable = new Callable<Object>() {
					public String call() throws Exception {
						LiveStockData data = scrapeIndividualURls(symbol, urlstr);

						if (data == null) {
							return "";
						}
						putDatainList(data);
						// Thread.yield();
						/*
						 * Callable<?> callableSave = new Callable<Object>() { public String call()
						 * throws Exception {
						 * 
						 * try { liveStockDataRepository.save(data); // wait(); } catch (Exception e) {
						 * // TODO Auto-generated catch block e.printStackTrace(); } return "";
						 * 
						 * } };
						 */

						// executorService.submit(callableSave);

						return "";

					}
				};
				//
				// Submit the task to executorService; At this point the scraping starts
				//
				executorService.submit(callable);

				// Thread.sleep(1000);

				// tasks.put(future, urlstr);
			}

			try {
				if (liveDataObjs.size() >= 5) {
					updateDB();
					liveDataObjs = new ArrayList<LiveStockData>();
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			/*
			 * {
			 * 
			 * tasks.forEach((future, url) -> { try { future.get(120, TimeUnit.SECONDS);
			 * 
			 * } catch (InterruptedException | ExecutionException | TimeoutException e) {
			 * e.printStackTrace();
			 * 
			 * } });
			 */

			count++;
		}

		//
		// For each task, iterate and get the content; Write the content to a file
		//
		// executorService.shutdown();

	}

	/**
	 * Scrape the URL
	 * 
	 * @param urlstr
	 * @return
	 * @throws IOException
	 */

	// @Transactional
	public LiveStockData scrapeIndividualURls(String symbol, String urlstr) throws IOException {

		if (startTime == null) {
			startTime = new Date();
		}

		// Jsoup.connect(urlstr).post();

		Document document = Jsoup.connect(urlstr)
				// .header("Cache-control", "no-cache").header("Cache-store",
				// "no-store").timeout(4000)
				.post();

		scrapeCount++;

		Date endTime = new Date();

		// sop("scrapeCount = " + scrapeCount);

		String xpathExpPrice = "//*[@id=\"Nse_Prc_tick\"]/strong";

		String lastPrice = "0";

		lastPrice = Xsoup.compile(xpathExpPrice).evaluate(document).get();
		lastPrice = cleanData(lastPrice);

		String xpathExpVolume = "//*[@id=\"nse_volume\"]/strong";

		String volume = "0";

		volume = Xsoup.compile(xpathExpVolume).evaluate(document).get();
		volume = cleanData(volume);

		// // sop("lastPrice = " + lastPrice);
		// // sop("volume = " + volume);

		if (new Long(volume).compareTo(mapGlobalVolumes.get(symbol)) == 1) {

			sop("update for symbol = " + symbol);

			long globalVolume = new Long(volume);

			mapGlobalVolumes.put(symbol, globalVolume);

			LiveStockData liveStockData = new LiveStockData();

			// liveStockData.setId(0);
			liveStockData.setCurr_time(new DateTime());
			liveStockData.setSymbol(symbol);
			liveStockData.setVolume(globalVolume);
			liveStockData.setPrice(new Float(lastPrice));

			return liveStockData;

			// putDatainList(liveStockData);

			// sop("lastPrice = " + lastPrice);
			// sop("volume = " + volume);

		}

		sop("Time Taken = " + (endTime.getTime() - startTime.getTime()) + " ms for symbol = " + symbol + " and "
				+ "scrapeCount = " + scrapeCount);

		return null;

	}

	private void putDatainList(LiveStockData liveStockData) {

		synchronized (liveDataObjs) {
			liveDataObjs.add(liveStockData);
		}

	}

	private void updateDB() {
		// TODO Auto-generated method stub

		try {
			synchronized (liveDataObjs) {
				liveStockDataRepository.save(liveDataObjs);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	public static void main(String[] args) throws Exception {

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

			mt.symbols.add(symbol);

			mt.mapUrls.put(symbol, urls[i]);

			long globalVolume = new Long(0);
			mt.mapGlobalVolumes.put(symbol, globalVolume);
		}

		mt.scrapeURLs();
		// currTime.downloadData();
	}

	private String cleanData(String input) {
		input = input.replaceAll(",", "");
		input = input.replaceAll("<strong>", "");
		input = input.replaceAll("</strong>", "");
		return input;

	}

	private void sop(String text) {

		// System.out.println(text);
	}

}
