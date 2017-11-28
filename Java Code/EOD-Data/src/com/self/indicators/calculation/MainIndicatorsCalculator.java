package com.self.indicators.calculation;

import java.util.Iterator;
import java.util.List;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.main.IndicatorsGlobal;

public class MainIndicatorsCalculator {
	
	
	
	
	public void calculateIndicators() throws Exception{
	
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		
		List<String> symbols = indicatorsDBHelper.getTopEquities(50, 5);
		
		EODRSICalculator rsiCalc = new EODRSICalculator();
		
		EODStochasticCalculator stoCalc = new EODStochasticCalculator();
		
		EODOBVCalculator obvCalc = new EODOBVCalculator();

		EODPercentBCalculator pbCalc = new EODPercentBCalculator();

		
		
		for (Iterator<String> iterator = symbols.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();
			
			indicatorsDBHelper.accumulateDataForSymbol(symbol,5);
			
			indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);
			
			rsiCalc.calculateCurrentRSI(symbol, false,indicatorsDBHelper);
			
			stoCalc.calculateCurrentStochastic(symbol, false,indicatorsDBHelper);
			
			// obvCalc.calculateCurrentOBV(symbol, false,indicatorsDBHelper);
			
			pbCalc.calculateCurrentPercentB(symbol, false, indicatorsDBHelper);
			
		}
		indicatorsDBHelper.accumulateDataForSymbol("",5);
		

	}
	
	public static void main(String[] args) throws Exception {
		
		MainIndicatorsCalculator mainIndicatorsCalculator = new MainIndicatorsCalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		
		// indicatorsDBHelper.calculateIndicatorsConfidence(5);


		indicatorsDBHelper.initDB(5);

		
		mainIndicatorsCalculator.calculateIndicators();
		
	}

}
