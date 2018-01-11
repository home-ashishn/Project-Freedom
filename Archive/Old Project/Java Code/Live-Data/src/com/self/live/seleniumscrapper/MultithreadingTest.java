package com.self.live.seleniumscrapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import us.codecraft.xsoup.Xsoup;

public class MultithreadingTest {

	/**
	 * @param urlFile
	 *            Path for file which consists of URLs to be scraped
	 * @param outputFile
	 *            File where scrape results will be written
	 * @throws InterruptedException
	 * @throws ExecutionException
	 * @throws TimeoutException
	 */

	List<String> symbols = new ArrayList<>();

	Map<String, String> mapUrls = new HashMap<String, String>();

	Date startTime;

	int scrapeCount = 0;

	Map<String, Long> mapGlobalVolumes;

	public MultithreadingTest() {

		try {
			this.symbols = new ArrayList<>();
			this.mapUrls = new HashMap<String, String>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<String, Long>();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void scrapeURLs() throws InterruptedException, ExecutionException, TimeoutException {
		// uiter = mapUrls.entrySet().iterator();
		// Iterate through all URLs
		// if (uiter != null)
		{
			//
			// Create an ExecutorService using a newFixedThreadPool
			//
			ExecutorService executorService = Executors.newFixedThreadPool(15);
			//
			// Create a map of Future and URLs
			//
			Map<Future, String> tasks = new LinkedHashMap<Future, String>();

			// Iterator through all URLs for scraping the web
			// while (uiter.hasNext())
			int count = 0;

			while (count < 500) {
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
							return scrapeIndividualURls(symbol, urlstr);

						}
					};
					//
					// Submit the task to executorService; At this point the scraping starts
					//
					Future<?> future = executorService.submit(callable);
					tasks.put(future, urlstr);
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
		}
		//
		// For each task, iterate and get the content; Write the content to a file
		//

	}
	// executorService.shutdown();

	/**
	 * Scrape the URL
	 * 
	 * @param urlstr
	 * @return
	 * @throws IOException
	 */
	public String scrapeIndividualURls(String symbol, String urlstr) throws IOException {

		Date updateStartTime = new Date();

		Date updateEndTime;

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

		System.out.println("scrapeCount = " + scrapeCount);

		String xpathExpPrice = "//*[@id=\"Nse_Prc_tick\"]/strong";

		String lastPrice = "0";

		lastPrice = Xsoup.compile(xpathExpPrice).evaluate(document).get();
		lastPrice = cleanData(lastPrice);

		String xpathExpVolume = "//*[@id=\"nse_volume\"]/strong";

		String volume = "0";

		volume = Xsoup.compile(xpathExpVolume).evaluate(document).get();
		volume = cleanData(volume);

		// System.out.println("lastPrice = " + lastPrice);
		// System.out.println("volume = " + volume);

		if (new Long(volume).compareTo(mapGlobalVolumes.get(symbol)) == 1) {

			long globalVolume = new Long(volume);

			mapGlobalVolumes.put(symbol, globalVolume);

			System.out.println("update for symbol = " + symbol);

			System.out.println("lastPrice = " + lastPrice);
			System.out.println("volume = " + volume);

			/*
			 * updateEndTime = new Date();
			 * 
			 * 
			 * System.out.println("Time taken to update " + symbol + " = " +
			 * (updateEndTime.getTime() - updateStartTime.getTime()) + " ms");
			 * 
			 * updateStartTime = new Date();
			 */
		}

		System.out.println("Time Taken = " + (endTime.getTime() - startTime.getTime()) + " ms for symbol = "+symbol+" and " + "scrapeCount = "
				+ scrapeCount);

		return "";

	}

	public static void main(String[] args) throws Exception {

		// JsoupTest jt = new JsoupTest();

		MultithreadingTest mt = new MultithreadingTest();

		String[] symbols = { "HPC","COAL","TM","BATA","WIPRO","ADANIPORT","ONGC","IOC","ZEE","BOSCH"

		};

		String[] urls = { "http://www.moneycontrol.com/india/stockpricequote/refineries/hindustanpetroleumcorporation/HPC",
				"http://www.moneycontrol.com/india/stockpricequote/mining-minerals/coalindia/CI11",
				"http://www.moneycontrol.com/india/stockpricequote/computers-software/techmahindra/TM4",
				"http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01",
				"http://www.moneycontrol.com/india/stockpricequote/computers-software/wipro/W",
				"http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/adaniportsspecialeconomiczone/MPS",
				"http://www.moneycontrol.com/india/stockpricequote/oil-drilling-and-exploration/oilnaturalgascorporation/ONG",
				"http://www.moneycontrol.com/india/stockpricequote/refineries/indianoilcorporation/IOC",
				"http://www.moneycontrol.com/india/stockpricequote/media-entertainment/zeeentertainmententerprises/ZEE",
				"http://www.moneycontrol.com/india/stockpricequote/auto-ancillaries/bosch/B05"
				};

		for (int i = 0; i < symbols.length; i++) {

			String symbol = symbols[i];//"BATAINDIA" + i;

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

}
