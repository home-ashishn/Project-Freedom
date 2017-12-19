package com.self.main;

import com.self.indicators.calculation.MainIndicatorsCalculator;
import com.self.main.extractor.EODCycleDataExtractor;

public class EODMain {
	
	
	public void executeEODProcessing() throws Exception{
		
		EODCycleDataExtractor eodCycleDataExtractor = new EODCycleDataExtractor();
		
		MainIndicatorsCalculator mainIndicatorsCalculator = new MainIndicatorsCalculator();
		
		//eodCycleDataExtractor.executeDailySetup();
		mainIndicatorsCalculator.calculateIndicators();
	}
	
	public static void main(String[] args) throws Exception {
	
		EODMain eodMain = new EODMain();
		
		eodMain.executeEODProcessing();
	}

}
