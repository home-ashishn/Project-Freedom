package com.self.live.seleniumscrapper;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import com.self.live.seleniumscrapper.dataobject.LiveStockData;

import us.codecraft.xsoup.Xsoup;

public class JsoupTest {

	List<String> symbols;

	Map<String, String> mapUrls;

	// Map<String, Document> mapUrlDocuments;

	Map<String, Long> mapGlobalVolumes;

	public JsoupTest() {

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

	@SuppressWarnings("deprecation")

	public void downloadData() throws Exception {

		for (String symbol : symbols) {

			String url = mapUrls.get(symbol);

			try {
				// document = Jsoup.connect(url).post();
				// mapUrlDocuments.put(symbol, document);
				long globalVolume = new Long(0);
				mapGlobalVolumes.put(symbol, globalVolume);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
			}

		}

		Date startTime;

		Date endTime;

		Date updateStartTime = new Date();

		Date updateEndTime;

		boolean isLoopValid = checkTimeRange();

		LiveStockData liveStockData;
		
		Document document = null;

		while (isLoopValid) {

			startTime = new Date();

			for (String symbol : symbols) {

				liveStockData = new LiveStockData();

				// Document document = mapUrlDocuments.get(symbol);

				String url = mapUrls.get(symbol);

				try {
					document = Jsoup.connect(url).execute().parse();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					// e.printStackTrace();
					// System.out.println("symbol = "+symbol +" url = "+url);
				}

				String xpathExpPrice = "//*[@id=\"Nse_Prc_tick\"]/strong";

				String lastPrice = "0";

				lastPrice = Xsoup.compile(xpathExpPrice).evaluate(document).get();
				lastPrice = cleanData(lastPrice);

				String xpathExpVolume = "//*[@id=\"nse_volume\"]/strong";

				String volume = "0";

				volume = Xsoup.compile(xpathExpVolume).evaluate(document).get();
				volume = cleanData(volume);

				/*if (new Long(volume).compareTo(mapGlobalVolumes.get(symbol)) == 1) {

					long globalVolume = new Long(volume);

					mapGlobalVolumes.put(symbol, globalVolume);
					// System.out.println("lastPrice = " + lastPrice);
					// System.out.println("volume = " + volume);

					updateEndTime = new Date();

					// System.out.println("Time taken to update " + symbol + " = "
							// + (updateEndTime.getTime() - updateStartTime.getTime()) + " ms");

					updateStartTime = new Date();

				}*/

				liveStockData.setSymbol("" + symbol);
				liveStockData.setPrice(new Float(lastPrice));
				liveStockData.setVolume(new Integer(volume));

				isLoopValid = checkTimeRange();

			}

			endTime = new Date();

			System.out.println("Time Taken = " + (endTime.getTime() - startTime.getTime()) + " ms");
		}
		// return liveStockData;

	}

	private boolean checkTimeRange() {
		return true;

		/*
		 * 
		 * Calendar cal = Calendar.getInstance();
		 * 
		 * int hour = cal.get(Calendar.HOUR);
		 * 
		 * int minute = cal.get(Calendar.MINUTE);
		 * 
		 * if (hour < 9 || hour > 16) return false;
		 * 
		 * if (hour == 9) { if (minute >= 15) return true; }
		 * 
		 * if (hour == 15) { if (minute <= 30) return true; }
		 * 
		 * return false;
		 */}

	private String cleanData(String input) {
		input = input.replaceAll(",", "");
		input = input.replaceAll("<strong>", "");
		input = input.replaceAll("</strong>", "");
		return input;

	}

	public static void main(String[] args) throws Exception {

		JsoupTest jt = new JsoupTest();

		for (int i = 0; i < 15; i++) {

			String symbol = "BATAINDIA" + i;

			jt.symbols.add(symbol);

			jt.mapUrls.put(symbol, "http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01");
		}

		jt.downloadData();

		// currTime.downloadData();
	}

}
