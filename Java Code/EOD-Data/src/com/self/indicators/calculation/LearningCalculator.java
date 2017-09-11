package com.self.indicators.calculation;

import java.util.Iterator;
import java.util.List;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.db.helper.IndicatorsLearningDBHelper;
import com.self.main.IndicatorsGlobal;
import com.self.main.IndicatorsLearningGlobal;

public class LearningCalculator {
	
	
	public void executeLearning() throws Exception{
		
		IndicatorsLearningGlobal indicatorsLearningGlobal = IndicatorsLearningGlobal.getInstance();
		
		IndicatorsLearningDBHelper indicatorsLearningDBHelper
										= new IndicatorsLearningDBHelper(indicatorsLearningGlobal.getPool());
		
		List<String> backDates = indicatorsLearningDBHelper.getBackRange(20, 3);
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		indicatorsDBHelper.initDB(5);

		
		
		for (Iterator<String> iterator = backDates.iterator(); iterator.hasNext();) {
			
			String backDate = (String) iterator.next();

			MainIndicatorsCalculator mainIndicatorsCalculator = new MainIndicatorsCalculator();
			
			mainIndicatorsCalculator.calculateIndicators();

			indicatorsLearningDBHelper.initDBForDate(backDate, 3);

		}
		

		
		for (Iterator<String> iterator = backDates.iterator(); iterator.hasNext();) {

			String backDate = (String) iterator.next();
			
			indicatorsLearningDBHelper.resetDBForDate(backDate, 3);

		}
		
	}
	
	public static void main(String[] args) throws Exception {
		
		LearningCalculator learningCalculator = new LearningCalculator();
		
		learningCalculator.executeLearning();
	}
}
