package com.self.indicators.calculation;

import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

import org.joda.time.DateTime;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.StochasticAuditData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorDIndicator;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorKIndicator;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;

public class EODStochasticCalculator {
	
	private Map auditValues;

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "SBIN";

		EODStochasticCalculator calculator = new EODStochasticCalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		calculator.calculateCurrentStochastic(symbol,true,indicatorsDBHelper);

	}

	public void calculateCurrentStochastic(String symbol, boolean plainBacktesting, 
			IndicatorsDBHelper indicatorsDBHelper) throws Exception {



		//indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);
		
		auditValues = new HashMap();

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());

		StochasticOscillatorKIndicator sof = new StochasticOscillatorKIndicator(data, 14);
		StochasticOscillatorDIndicator sod = new StochasticOscillatorDIndicator(sof);

		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();

		int currentMarketTrend = checkMarketTrend(data, endDay);

		int currentSignal = generateSignalForIndex(sof, currentMarketTrend, sod, endDay,data);
		
		auditValues.put("curr_signal",currentSignal);

		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentStochasticSignal(symbol,
				data.getTick(endDay).getEndTime(), currentMarketTrend, currentSignal, 2);
		
		StochasticAuditData stochasticAuditData = convertToStochasticAuditData(auditValues,signalReferenceId,symbol,data.getTick(endDay).getEndTime());
		
		indicatorsDBHelper.insertStochasticAuditData(stochasticAuditData,3);



	}
	
	private int generateSignalForIndex(StochasticOscillatorKIndicator sof, int marketTrend,
			StochasticOscillatorDIndicator sod, int index, TimeSeries data) {

		Decimal valueK = sof.getValue(index);

		int buySellHoldSignal = 0;

		if (marketTrend == 0) {
			buySellHoldSignal = checkSignalforSidewaysMarket(valueK);
		} else

		{
			buySellHoldSignal = checkSignalforTrendingMarket(marketTrend, sod, index,data);
		}

		return buySellHoldSignal;

	}

	private int checkSignalforTrendingMarket(int marketTrend, StochasticOscillatorDIndicator sod, int index, TimeSeries data) {
		

		Decimal currentValueD = sod.getValue(index);
		
		auditValues.put("valueD",currentValueD);
		
		auditValues.put("signalforTrendingMarket",0);


		if (marketTrend == 1)

		{
			
			if (currentValueD.toDouble() > 50)
				return 0; // Indicator did not cross 50 from above, return no
							// signal

			Decimal prevValueD = null;

			for (int i = index - 1; i >= index - 14; i--) {
				prevValueD = sod.getValue(i);
				
				if(prevValueD.isLessThan(currentValueD)){
					
					/* valueD was less than current valueD hence not good candidate of valueD crossing 50 
					 from above */				
					
					auditValues.put("valueDLessThanCurrentValue",prevValueD);
					
					auditValues.put("valueDLessThanCurrentDate",data.getTick(i).getEndTime());

					
					return 0;

				
				}

				// Indicator was above 80, and it did cross 50 from above,
				// return -1 signal

				if (prevValueD.toDouble() >= 80)
				{
					auditValues.put("signalforTrendingMarket",-1);
					
					auditValues.put("prevValueDGreaterThan80",prevValueD);
					
					auditValues.put("prevValueDGreaterThan80Date",data.getTick(i).getEndTime());


					return -1;


				}

			}

		}

		if (marketTrend == -1)

		{
			if (currentValueD.toDouble() < 50)
				return 0; // Indicator did not cross 50 from below, return no
							// signal

			Decimal prevValueD = null;

			for (int i = index - 1; i >= index - 14; i--) {
				prevValueD = sod.getValue(i);
				
				if(prevValueD.isGreaterThan(currentValueD)){
					
					/* valueD was greater than current valueD hence not good candidate of valueD crossing 50 
					 from below */				
					
					auditValues.put("valueDGreaterThanCurrentValue",prevValueD);
					
					auditValues.put("valueDGreaterThanCurrentDate",data.getTick(i).getEndTime());

					
					return 0;

				
				}

				// Indicator was below 20, and it did cross 50 from below,
				// return 1 signal

				if (prevValueD.toDouble() <= 20)

					auditValues.put("signalforTrendingMarket",1);
				
					auditValues.put("prevValueDLessThan20",prevValueD);
					
					auditValues.put("prevValueDLessThan20Date",data.getTick(i).getEndTime());

					return 1;

			}

		}

		return 0;

	}

	private int checkSignalforSidewaysMarket(Decimal valueK) {

		auditValues.put("valueK",valueK);

		if (valueK.toDouble() >= 80.0)
		{
			auditValues.put("signalforSidewaysMarket",-1);
			return -1;
		}
		
		if (valueK.toDouble() <= 20.0)
		{
			auditValues.put("signalforSidewaysMarket",1);
			return 1;

		}

		return 0;

	}
	
	

	private int checkMarketTrend(TimeSeries series, int index) {

		ClosePriceIndicator closePrice = new ClosePriceIndicator(series);

		EMAIndicator shortEma = new EMAIndicator(closePrice, 9);
		EMAIndicator longEma = new EMAIndicator(closePrice, 26);

		Decimal shortEmaValue = shortEma.getValue(index);

		Decimal longEmaValue = longEma.getValue(index);
		
		auditValues.put("shortEmaValue",shortEmaValue);
		
		auditValues.put("longEmaValue",longEmaValue);


		if (shortEmaValue.isGreaterThan(longEmaValue.multipliedBy(Decimal.valueOf(1.01)))) {
			
			auditValues.put("marketTrend",1);

			return 1;

		}

		else if (longEmaValue.isGreaterThan(shortEmaValue.multipliedBy(Decimal.valueOf(1.01))))

		{
			auditValues.put("marketTrend",-1);

			return -1;

		}

		auditValues.put("marketTrend",0);

		return 0;

	}
	
	
	
	private StochasticAuditData convertToStochasticAuditData(Map mapAuditValues, int signalReferenceId, String symbol, DateTime dateTime) {
		
		StochasticAuditData stochasticAuditDataReturn = new StochasticAuditData();
		
		stochasticAuditDataReturn.setStochastic_evaluation_run_id(signalReferenceId);
		
		stochasticAuditDataReturn.setSymbol(symbol);
		
		stochasticAuditDataReturn.setEndTime(dateTime);
		
		stochasticAuditDataReturn.setCurr_signal((Integer)mapAuditValues.get("curr_signal"));		
		
		
		if(checkNull(mapAuditValues.get("valueD"))){
			
			stochasticAuditDataReturn.setValueD(((Decimal)mapAuditValues.get("valueD")).toDouble());

		}

		if(checkNull(mapAuditValues.get("valueK"))){
			
			stochasticAuditDataReturn.setValueK(((Decimal)mapAuditValues.get("valueK")).toDouble());

		}

		if(checkNull(mapAuditValues.get("shortEmaValue"))){
			
			stochasticAuditDataReturn.setShortEmaValue(((Decimal)mapAuditValues.get("shortEmaValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("longEmaValue"))){
			
			stochasticAuditDataReturn.setLongEmaValue(((Decimal)mapAuditValues.get("longEmaValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("marketTrend"))){
			
			stochasticAuditDataReturn.setMarketTrend((Integer)mapAuditValues.get("marketTrend"));

		}

		if(checkNull(mapAuditValues.get("signalforSidewaysMarket"))){
			
			stochasticAuditDataReturn.setSignalforSidewaysMarket((Integer)mapAuditValues.get("signalforSidewaysMarket"));

		}

		if(checkNull(mapAuditValues.get("signalforTrendingMarket"))){
			
			stochasticAuditDataReturn.setSignalforTrendingMarket((Integer)mapAuditValues.get("signalforTrendingMarket"));

		}

		if(checkNull(mapAuditValues.get("valueDLessThanCurrentValue"))){
			
			stochasticAuditDataReturn.setValueDLessThanCurrentValue(((Decimal)mapAuditValues.get("valueDLessThanCurrentValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("valueDGreaterThanCurrentDate"))){
			
			stochasticAuditDataReturn.setValueDGreaterThanCurrentDate((DateTime)mapAuditValues.get("valueDGreaterThanCurrentDate"));

		}

		if(checkNull(mapAuditValues.get("valueDLessThanCurrentValue"))){
			
			stochasticAuditDataReturn.setValueDLessThanCurrentValue(((Decimal)mapAuditValues.get("valueDLessThanCurrentValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("valueDLessThanCurrentDate"))){
			
			stochasticAuditDataReturn.setValueDLessThanCurrentDate((DateTime)mapAuditValues.get("valueDLessThanCurrentDate"));

		}


		if(checkNull(mapAuditValues.get("prevValueDGreaterThan80"))){
			
			stochasticAuditDataReturn.setPrevValueDGreaterThan80(((Decimal)mapAuditValues.get("prevValueDGreaterThan80")).toDouble());

		}

		if(checkNull(mapAuditValues.get("prevValueDGreaterThan80Date"))){
			
			stochasticAuditDataReturn.setPrevValueDGreaterThan80Date((DateTime)mapAuditValues.get("prevValueDGreaterThan80Date"));

		}
		
		if(checkNull(mapAuditValues.get("prevValueDLessThan20"))){
			
			stochasticAuditDataReturn.setPrevValueDLessThan20(((Decimal)mapAuditValues.get("prevValueDLessThan20")).toDouble());

		}

		if(checkNull(mapAuditValues.get("prevValueDLessThan20Date"))){
			
			stochasticAuditDataReturn.setPrevValueDLessThan20Date((DateTime)mapAuditValues.get("prevValueDLessThan20Date"));

		}
		
		
		return stochasticAuditDataReturn;
	}



	private boolean checkNull(Object input) {
		return input != null;
	}

}
