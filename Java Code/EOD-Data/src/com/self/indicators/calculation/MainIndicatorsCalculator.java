package com.self.indicators.calculation;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.indicators.trackers.bollinger.PercentBIndicator;

public class MainIndicatorsCalculator {
	
	
	
	
	public void calculateIndicators() throws Exception{
	
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		
		List<String> symbols = indicatorsDBHelper.getTop25Equities(5);
		
		EODRSICalculator rsiCalc = new EODRSICalculator();
		
		EODStochasticCalculator stoCalc = new EODStochasticCalculator();
		
		EODOBVCalculator obvCalc = new EODOBVCalculator();

		EODPercentBCalculator pbCalc = new EODPercentBCalculator();

		
		indicatorsDBHelper.initDB(5);
		
		for (Iterator<String> iterator = symbols.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();
			
			indicatorsDBHelper.accumulateDataForSymbol(symbol,5);
			
			indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);
			
			rsiCalc.calculateCurrentRSI(symbol, false,indicatorsDBHelper);
			
			stoCalc.calculateCurrentandBackTest(symbol, false,indicatorsDBHelper);
			
			obvCalc.calculateCurrentandBackTest(symbol, false,indicatorsDBHelper);
			
			pbCalc.calculateCurrentandBackTest(symbol, false, indicatorsDBHelper);
			
			
		}
		indicatorsDBHelper.accumulateDataForSymbol("",5);
		
		indicatorsDBHelper.calculateIndicatorsConfidence(5);

	}
	
	public static void main(String[] args) throws Exception {
		
		MainIndicatorsCalculator mainIndicatorsCalculator = new MainIndicatorsCalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		// indicatorsDBHelper.calculateIndicatorsConfidence(5);


		
		mainIndicatorsCalculator.calculateIndicators();
		
	}

}
