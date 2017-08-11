package com.self.live.seleniumscrapper;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.self.live.seleniumscrapper.dataobject.BasisForCalls;
import com.self.live.seleniumscrapper.dataobject.LiveStockData;

public class LiveDataManager {

	static String[] symbols;

	static EquityCurrentTime[] arrEquityCurrentTime;

	static Map<String, String> symbolsURLs = new HashMap<String, String>();

	static Map<String, Integer> symbolSignals = new HashMap<String, Integer>();

	static LiveDataCycleDBHelper liveDataCycleDBHelper;

	public static void main(String[] args) throws Exception {

		try {

			LiveDataGlobal liveDataGlobal = LiveDataGlobal.getInstance();

			liveDataCycleDBHelper = new LiveDataCycleDBHelper(liveDataGlobal.getPool());

			fillSymbolData();

			for (int i = 0; i < symbols.length; i++) {
				try {

					String url = "" + symbolsURLs.get(symbols[i]);
					EquityCurrentTime equityCurrentTime = new EquityCurrentTime(symbols[i], url,
							symbolSignals.get(symbols[i]));
					arrEquityCurrentTime[i] = equityCurrentTime;
				} catch (Exception e) {
					continue;
				}
			}

			Thread.sleep(1000);

			// processWithBreaks(liveDataCycleDBHelper);

			processContinous(liveDataCycleDBHelper);
		} catch (Exception e) {

		}

	}

	private static void processContinous(LiveDataCycleDBHelper liveDataCycleDBHelper) throws Exception {

		ExecutorService executorService = Executors.newFixedThreadPool(10);

		long currentTime = 0;

		long previousTime = 0;

		long isLevelUpdateStartTime = Calendar.getInstance().getTimeInMillis();

		long isLevelUpdateEndTime = Calendar.getInstance().getTimeInMillis();

		while (true) {

			currentTime = Calendar.getInstance().getTimeInMillis();

			long sleepDuration = (15000 - (currentTime - previousTime));

			if (sleepDuration < 0)
				sleepDuration = 0;

			Thread.sleep(sleepDuration);

			previousTime = Calendar.getInstance().getTimeInMillis();

			for (int i = 0; i < arrEquityCurrentTime.length; i++) {

				try {

					// Thread.sleep(5000);

					EquityCurrentTime equityCurrentTime = arrEquityCurrentTime[i];

					LiveStockData liveStockData = equityCurrentTime.downloadData();

					liveDataCycleDBHelper.insertLiveDataIndividual(liveStockData, 3);

					// TODO : Call DB Procedure
					liveDataCycleDBHelper.callEvaluation(equityCurrentTime.currSignal, equityCurrentTime.symbol, 3);

					/*
					 * executorService.execute(new Runnable() { public void
					 * run() { //equityCurrentTime.refresh(); } });
					 */

					// Thread.yield();
				} catch (Exception e) {
					continue;
				}

			}

			isLevelUpdateEndTime = Calendar.getInstance().getTimeInMillis();

			if (isLevelUpdateEndTime - isLevelUpdateStartTime > (1000 * 60 * 15)) {

				for (int i = 0; i < symbols.length; i++) {

					try {
						String symbol = symbols[i];

						liveDataCycleDBHelper.calculateNewLevels(symbol, 3);
					} catch (Exception e) {
						continue;
					}

				}
				fillSymbolData();
			}

		}
	}

	/*
	 * private static void processWithBreaks(LiveDataCycleDBHelper
	 * liveDataCycleDBHelper) throws Exception {
	 * 
	 * 
	 * for (int i = 0; i < symbols.length; i++) {
	 * 
	 * String url = ""+symbolsURLs.get(symbols[i]); EquityCurrentTime
	 * equityCurrentTime = new EquityCurrentTime(symbols[i],url);
	 * equityCurrentTime.currSignal = symbolSignals.get(symbols[i]);
	 * arrEquityCurrentTime[i] = equityCurrentTime; }
	 * 
	 * Thread.sleep(15000);
	 * 
	 * int counter = 0;
	 * 
	 * while(true) { List<LiveStockData> listLiveStockData = new
	 * ArrayList<LiveStockData>();
	 * 
	 * 
	 * 
	 * for (int i = 0; i < arrEquityCurrentTime.length; i++) { EquityCurrentTime
	 * equityCurrentTime = arrEquityCurrentTime[i];
	 * 
	 * LiveStockData liveStockData =
	 * equityCurrentTime.downloadCurrentFileFullData();
	 * 
	 * 
	 * listLiveStockData.add(equityCurrentTime.downloadCurrentFileFullData());
	 * 
	 * } liveDataCycleDBHelper.insertLiveDatainBatch(listLiveStockData, 3);
	 * Thread.sleep(1000);
	 * 
	 * //TODO : Call DB Procedure
	 * 
	 * Thread.sleep(10000); counter++; if(counter%10 == 0){
	 * 
	 * for (int i = 0; i < arrEquityCurrentTime.length; i++) { EquityCurrentTime
	 * equityCurrentTime = arrEquityCurrentTime[i]; equityCurrentTime.refresh();
	 * 
	 * } }
	 * 
	 * Thread.sleep(10000);
	 * 
	 * 
	 * 
	 * }
	 * 
	 * 
	 * }
	 * 
	 * 
	 */
	private static void fillSymbolData() throws NoSuchElementException, IllegalStateException, Exception {

		List<BasisForCalls> listBasisForCalls = liveDataCycleDBHelper.getBasisForCalls(3);

		int i = 0;

		symbols = new String[listBasisForCalls.size()];

		arrEquityCurrentTime = new EquityCurrentTime[symbols.length];

		for (Iterator<BasisForCalls> iterator = listBasisForCalls.iterator(); iterator.hasNext();) {
			BasisForCalls basisForCalls = (BasisForCalls) iterator.next();

			symbols[i] = basisForCalls.getSymbol();
			symbolsURLs.put(basisForCalls.getSymbol(), basisForCalls.getUrl());
			symbolSignals.put(basisForCalls.getSymbol(), basisForCalls.getSignal());

			i++;

		}

		/*
		 * symbols[i] = "BATAINDIA"; symbolsURLs.put("BATAINDIA",
		 * "http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01"
		 * ); symbolSignals.put("BATAINDIA", 1);
		 * 
		 * i++;
		 * 
		 * symbols[i] = "INFIBEAM"; symbolsURLs.put("INFIBEAM",
		 * "http://www.moneycontrol.com/india/stockpricequote/miscellaneous/infibeamincorporation/IIL03"
		 * ); symbolSignals.put("INFIBEAM", 1);
		 * 
		 * i++;
		 * 
		 * symbols[i] = "IOC"; symbolsURLs.put("IOC",
		 * "http://www.moneycontrol.com/india/stockpricequote/refineries/indianoilcorporation/IOC"
		 * ); symbolSignals.put("IOC", 1);
		 * 
		 * i++;
		 * 
		 * symbols[i] = "LUPIN"; symbolsURLs.put("LUPIN",
		 * "http://www.moneycontrol.com/india/stockpricequote/pharmaceuticals/lupin/L"
		 * ); symbolSignals.put("LUPIN", -1);
		 * 
		 * i++;
		 * 
		 * symbols[i] = "AUROPHARMA"; symbolsURLs.put("AUROPHARMA",
		 * "http://www.moneycontrol.com/india/stockpricequote/pharmaceuticals/aurobindopharma/AP"
		 * ); symbolSignals.put("AUROPHARMA", -1);
		 * 
		 * i++;
		 * 
		 * symbols[i] = "BPCL"; symbolsURLs.put("BPCL",
		 * "http://www.moneycontrol.com/india/stockpricequote/refineries/bharatpetroleumcorporation/BPC"
		 * ); symbolSignals.put("BPCL", 1);
		 * 
		 * i++;
		 */

	}

}
