package com.freedom.live;

import java.util.Calendar;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;



@Component
@Service
public class MultithreadingManager {
	
	
	@Autowired
	private MultithreadingExtractor multithreadingExtractor;
	
	private void startExtraction() throws Exception {
		
		multithreadingExtractor.scrapeURLs();

		
	}
	
	private void init() {
		
		String[] symbols = { "HPC","COAL","TM","BATAINDIA","WIPRO","ADANIPORT","ONGC","IOC","ZEE","BOSCH"

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

			multithreadingExtractor.symbols.add(symbol);

			multithreadingExtractor.mapUrls.put(symbol, urls[i]);

			long globalVolume = new Long(0);
			multithreadingExtractor.mapGlobalVolumes.put(symbol, globalVolume);
		}

	}
	
	public void manageExtraction() throws Exception {
		// TODO Auto-generated method stub

		init();


		boolean isValidRange = true; //checkTimeRange();
		
		if(isValidRange) {
			
			// loopCheckTimeValidity();
			
			
			startExtraction();

		}

	}
	
	private void loopCheckTimeValidity() {
		ExecutorService executorService = Executors.newFixedThreadPool(1);
		
		Callable<?> callable = new Callable<Object>() {
			public String call() throws Exception {
				return checkTimeValidity();

			}


		};

		Future<?> future = executorService.submit(callable);
		
	}

	public String checkTimeValidity() {
		
		// sop("###$$$$$%%%%%%%%%%%% inside checkTimeValidity %%%%%%^^^^^^^^^^$$$$$$$$$$$$$");

		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.HOUR_OF_DAY, 15);
		
		cal.set(Calendar.MINUTE, 35);


		Calendar cal1 = Calendar.getInstance();
		 
		long timeDifference = cal.getTimeInMillis() - cal1.getTimeInMillis();
		
		if(timeDifference < 0)
		{
			System.exit(0);
			return "";
		}
		try {
			Thread.sleep(timeDifference);
			checkTimeValidity();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		return "";

	}
	
	private boolean checkTimeRange() {
		
		// sop("###$$$$$%%%%%%%%%%%% inside checkTimeRange %%%%%%^^^^^^^^^^$$$$$$$$$$$$$");


		Calendar cal = Calendar.getInstance();

		int hour = cal.get(Calendar.HOUR_OF_DAY);

		int minute = cal.get(Calendar.MINUTE);

		if (hour < 9 || hour > 16)
			return false;

		if (hour == 9) {
			if (minute < 10)
				return false;
		}

		if (hour == 15) {
			if (minute >= 30)
				return false;
		}

		return true;
	}

	
	private void sop(String text) {
		
		System.out.println(text);
	}


}
