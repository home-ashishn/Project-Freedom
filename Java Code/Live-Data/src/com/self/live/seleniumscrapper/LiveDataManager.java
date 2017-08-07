package com.self.live.seleniumscrapper;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.self.live.seleniumscrapper.dataobject.LiveStockData;

public class LiveDataManager {
	
	static String[] symbols = new String[5];
	
	static EquityCurrentTime[] arrEquityCurrentTime = new EquityCurrentTime[symbols.length];

	
	static Map<String, String> symbolsURLs = new HashMap<String, String>();
	
	static Map<String, Integer> symbolSignals = new HashMap<String, Integer>();

	
	public static void main(String[] args) throws Exception {
		
		LiveDataGlobal liveDataGlobal = LiveDataGlobal.getInstance();
		
		LiveDataCycleDBHelper liveDataCycleDBHelper = new LiveDataCycleDBHelper(liveDataGlobal.getPool());
		
		fillSymbolData();

		// processWithBreaks(liveDataCycleDBHelper);
		
		processContinous(liveDataCycleDBHelper);
		
		
		
	}

	private static void processContinous(LiveDataCycleDBHelper liveDataCycleDBHelper) throws Exception {
		
		for (int i = 0; i < symbols.length; i++) {
			
			String url = ""+symbolsURLs.get(symbols[i]);
			EquityCurrentTime equityCurrentTime = new EquityCurrentTime(symbols[i],url);
			arrEquityCurrentTime[i] = equityCurrentTime;
		}
		
		Thread.sleep(15000);
		
		Calendar cal = Calendar.getInstance();
		
		int counter = 0;
		

		while(true)
		{
			
			
			for (int i = 0; i < arrEquityCurrentTime.length; i++) {
				
				EquityCurrentTime equityCurrentTime = arrEquityCurrentTime[i];
				
				LiveStockData liveStockData = equityCurrentTime.downloadCurrentFileFullData();

				liveDataCycleDBHelper.insertLiveDataIndividual(liveStockData, 3);
				
				
				// Refresh next equity screen to avoid stale data
				
				EquityCurrentTime equityRefresh = null;
				if(i == (arrEquityCurrentTime.length - 1)){
					equityRefresh = arrEquityCurrentTime[0];
				}
				else
				{
					equityRefresh = arrEquityCurrentTime[i+1];
				}
				
				equityRefresh.refresh();			

				
				//TODO : Call DB Procedure
				
				

				
			}
			// Thread.sleep(15000);
			 counter++;

						
			/*if(counter%10 == 0){
				
				for (int i = 0; i < arrEquityCurrentTime.length; i++) {
					EquityCurrentTime equityCurrentTime = arrEquityCurrentTime[i];
					equityCurrentTime.refresh();
					
				}
			}*/
			
			//Thread.sleep(10000);

			
			
		}


	}

	private static void processWithBreaks(LiveDataCycleDBHelper liveDataCycleDBHelper) throws Exception {
		

		for (int i = 0; i < symbols.length; i++) {
			
			String url = ""+symbolsURLs.get(symbols[i]);
			EquityCurrentTime equityCurrentTime = new EquityCurrentTime(symbols[i],url);
			equityCurrentTime.currSignal = symbolSignals.get(symbols[i]);
			arrEquityCurrentTime[i] = equityCurrentTime;
		}
		
		Thread.sleep(15000);
		
		int counter = 0;

		while(true)
		{
			List<LiveStockData> listLiveStockData = new ArrayList<LiveStockData>();
			
 
			
			for (int i = 0; i < arrEquityCurrentTime.length; i++) {
				EquityCurrentTime equityCurrentTime = arrEquityCurrentTime[i];
				
				LiveStockData liveStockData = equityCurrentTime.downloadCurrentFileFullData();
				
				
				listLiveStockData.add(equityCurrentTime.downloadCurrentFileFullData());
				
			}
			liveDataCycleDBHelper.insertLiveDatainBatch(listLiveStockData, 3);
			Thread.sleep(1000);

			//TODO : Call DB Procedure
			
			Thread.sleep(10000);
			counter++;
			if(counter%10 == 0){
				
				for (int i = 0; i < arrEquityCurrentTime.length; i++) {
					EquityCurrentTime equityCurrentTime = arrEquityCurrentTime[i];
					equityCurrentTime.refresh();
					
				}
			}
			
			Thread.sleep(10000);

			
			
		}

		
	}

	private static void fillSymbolData() {
		symbols[0] = "BATAINDIA";
		symbolsURLs.put("BATAINDIA", "http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01");
		symbolSignals.put("BATAINDIA", 1);
		
		symbols[1] = "EDELWEISS";
		symbolsURLs.put("EDELWEISS", "http://www.moneycontrol.com/india/stockpricequote/finance-general/edelweissfinancialservices/EC01");
		symbolSignals.put("EDELWEISS", 1);
		
		symbols[2] = "IBREALEST";
		symbolsURLs.put("IBREALEST", "http://www.moneycontrol.com/india/stockpricequote/construction-contracting-real-estate/indiabullsrealestate/IRE01");
		symbolSignals.put("IBREALEST", -1);
		
		symbols[3] = "INFIBEAM";
		symbolsURLs.put("INFIBEAM", "http://www.moneycontrol.com/india/stockpricequote/miscellaneous/infibeamincorporation/IIL03");
		symbolSignals.put("INFIBEAM", 1);
		
		symbols[4] = "IOC";
		symbolsURLs.put("IOC", "http://www.moneycontrol.com/india/stockpricequote/refineries/indianoilcorporation/IOC");
		symbolSignals.put("IOC", -1);

/*		symbols[5] = "LUPIN";
		symbolsURLs.put("LUPIN", "http://www.moneycontrol.com/india/stockpricequote/pharmaceuticals/lupin/L");
		symbols[6] = "SBIN";
		symbolsURLs.put("SBIN", "http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI");
		symbols[7] = "SUNPHARMA";
		symbolsURLs.put("SUNPHARMA", "http://www.moneycontrol.com/india/stockpricequote/pharmaceuticals/sunpharmaceuticalindustries/SPI");
		symbols[8] = "TITAN";
		symbolsURLs.put("TITAN", "http://www.moneycontrol.com/india/stockpricequote/miscellaneous/titancompany/TI01");
*/				
	}

}
