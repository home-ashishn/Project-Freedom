package com.self.live.seleniumscrapper;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import us.codecraft.xsoup.Xsoup;

public class JsoupTest {
	
	
	public static void main(String[] args) throws IOException {
		
		
		Document document = Jsoup.connect("http://www.moneycontrol.com/india/stockpricequote/pharmaceuticals/lupin/L").get();

	    String result = Xsoup.compile("//*[@id=\"Nse_Prc_tick\"]/strong").evaluate(document).get();
	    
	    result = result;

	}

}
