package com.freedom.live;

import java.util.ArrayList;
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveStockData;
import com.freedom.live.models.LiveStockDataRepository;
import com.rainmatter.kiteconnect.KiteConnect;

@Component
public class LiveStockPriceExtractor {

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
	
	KiteConnect kiteConnect;

	public LiveStockPriceExtractor() {

		try {
			this.symbols = new ArrayList<>();
			this.mapUrls = new HashMap<String, String>();
			// this.mapUrlDocuments = new HashMap<String, Document>();
			this.mapGlobalVolumes = new HashMap<String, Long>();
			this.liveDataObjs = new ArrayList<>();
		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}

	
	public void startExtraction() {
			ThreadPoolExecutor executor = new ThreadPoolExecutor(7, 14,
                0L, TimeUnit.MILLISECONDS,
                new LinkedBlockingQueue<Runnable>());
//		ExecutorService executorService = Executors.newFixedThreadPool(20);
		// ExecutorService executorServiceSave = Executors.newFixedThreadPool();

			int count = 0;

		while (true/* count < 500 */) {
			for (String symbol : symbols)

			{
				if(executor.getQueue().size() > 3)
				{
					continue;
				}
				String urlstr = "" + mapUrls.get(symbol);
				//
				// Create a callable instance which calls the function that invokes the scraping
				// for each URL
				//
				Callable<?> callable = new Callable<Object>() {
					public String call() throws Exception {
						LiveStockData data = scrapeIndividualURls(symbol, urlstr);

						if (data == null) {
							return "";
						}
						putDatainList(data);
						return "";

					}

					private void putDatainList(LiveStockData data) {
						// TODO Auto-generated method stub
						
					}

					private LiveStockData scrapeIndividualURls(String symbol, String urlstr) {
						// TODO Auto-generated method stub
						return null;
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

	private void updateDB() {
		// TODO Auto-generated method stub
		
	}


	private void sop(String text) {

		// System.out.println(text);
	}

}
