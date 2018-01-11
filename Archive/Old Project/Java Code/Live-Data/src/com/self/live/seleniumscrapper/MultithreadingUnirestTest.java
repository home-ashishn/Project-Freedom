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

public class MultithreadingUnirestTest {

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
			for (String symbol : symbols) {

				{
					String urlstr = "" + mapUrls.get(symbol);
					//
					// Create a callable instance which calls the function that invokes the scraping
					// for each URL
					// and get the content (full or part based on some rules)
					//
					Callable<?> callable = new Callable<Object>() {
						public String call() throws Exception {
							return scrapeIndividualURls(urlstr);
							
						}
					};
					//
					// Submit the task to executorService; At this point the scraping starts
					//
					Future<?> future = executorService.submit(callable);
					tasks.put(future, urlstr);
				}
				//
				// For each task, iterate and get the content; Write the content to a file
				//

				int count = 0;

				while (count < 5) {

					tasks.forEach((future, url) -> {
						try {
							future.get(120, TimeUnit.SECONDS);
							

						} catch (InterruptedException | ExecutionException | TimeoutException e) {
							// e.printStackTrace();

						}
					});

					count++;
				}
			}
		}
		// executorService.shutdown();

	}

	/**
	 * Scrape the URL
	 * 
	 * @param urlstr
	 * @return
	 * @throws IOException
	 */
	public String scrapeIndividualURls(String urlstr) throws IOException {

		if (startTime == null) {
			startTime = new Date();
		}

		Jsoup.connect(urlstr).post();

		scrapeCount++;

		Date endTime = new Date();

		System.out.println("scrapeCount = " + scrapeCount);

		System.out.println("Time Taken = " + (endTime.getTime() - startTime.getTime()) + " ms");

		return "";

	}

	public static void main(String[] args) throws Exception {

		// JsoupTest jt = new JsoupTest();

		MultithreadingUnirestTest mt = new MultithreadingUnirestTest();

		for (int i = 0; i < 5; i++) {

			String symbol = "BATAINDIA" + i;

			mt.symbols.add(symbol);

			mt.mapUrls.put(symbol, "http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01");
		}

		mt.scrapeURLs();
		// currTime.downloadData();
	}

}
