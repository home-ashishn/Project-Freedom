package com.self.live.seleniumscrapper;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import com.self.live.seleniumscrapper.dataobject.LiveStockData;

import us.codecraft.xsoup.Xsoup;

public class EquityCurrentTime {

	String symbol;

	int currSignal;

	String url;

	public EquityCurrentTime(String symbolIn, String urlIn, int currSignalIn) {

		try {
			this.symbol = symbolIn;
			this.currSignal = currSignalIn;
			this.url = urlIn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@SuppressWarnings("deprecation")

	public LiveStockData downloadData() throws Exception {

		LiveStockData liveStockData = new LiveStockData();

		Document document = Jsoup.connect(url).post();

		String xpathExpPrice = "//*[@id=\"Nse_Prc_tick\"]/strong";

		String lastPrice = "0";

		lastPrice = Xsoup.compile(xpathExpPrice).evaluate(document).get();
		lastPrice = cleanData(lastPrice);

		String xpathExpVolume = "//*[@id=\"nse_volume\"]/strong";

		String volume = "0";

		volume = Xsoup.compile(xpathExpVolume).evaluate(document).get();
		volume = cleanData(volume);

		liveStockData.setSymbol("" + this.symbol);
		liveStockData.setPrice(new Float(lastPrice));
		liveStockData.setVolume(new Integer(volume));

		return liveStockData;

	}

	private String cleanData(String input) {
		input = input.replaceAll(",", "");
				input = input.replaceAll("<strong>", "");
				input = input.replaceAll("</strong>", "");
				return input;

	}

	public static void main(String[] args) throws Exception {

		EquityCurrentTime currTime = new EquityCurrentTime("BATAINDIA",
				"http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01", 1);

		currTime.downloadData();
	}

}
