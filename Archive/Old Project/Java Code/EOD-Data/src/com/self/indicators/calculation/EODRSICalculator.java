package com.self.indicators.calculation;

import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

import org.joda.time.DateTime;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.RSIAuditData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.RSIIndicator;

public class EODRSICalculator {

	private float min_per_day_for_rally_or_drop = 0.5f;
	
	private Map auditValues;


	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "SBIN";
		
		EODRSICalculator calculator = new EODRSICalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
/*
		IndicatorsLearningGlobal indicatorsLearningGlobal = IndicatorsLearningGlobal.getInstance();
		
		IndicatorsLearningDBHelper indicatorsLearningDBHelper
										= new IndicatorsLearningDBHelper(indicatorsLearningGlobal.getPool());
		
		List<String> backDates = indicatorsLearningDBHelper.getBackRange(5, 3);
			
			String backDate = (String) backDates.get(0);
			
			indicatorsLearningDBHelper.initDBForDate(backDate, 3);*/

    	indicatorsDBHelper.accumulateDataForSymbol(symbol,5);

		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

 
		calculator.calculateCurrentRSI(symbol,true,indicatorsDBHelper);


	}


	
	public void calculateCurrentRSI(String symbol, boolean plainBacktesting,
			IndicatorsDBHelper indicatorsDBHelper) throws Exception{
		

		auditValues = new HashMap();

		// to be moved outside so that it is called once for all indicators
		//indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());

		ClosePriceIndicator closePrice = new ClosePriceIndicator(data);

		RSIIndicator rsi = new RSIIndicator(closePrice, 14);

		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();
		
		int currentMarketTrend = checkMarketTrend(data, endDay);

		Map<String, Decimal> mapSignalValues = generateSignalForIndex(data,rsi, currentMarketTrend, endDay);

		int currentSignal = (int) mapSignalValues.get("buySellHoldSignal").toDouble();
		
		auditValues.put("curr_signal",currentSignal);


		double stop_loss_level = 0;
		
		double stop_loss_level_price = 0;


		if (currentSignal == 1) {
			Decimal minPrevValueRSI = mapSignalValues.get("minPrevValueRSI");
			if(minPrevValueRSI != null)
			{
				stop_loss_level =  minPrevValueRSI.toDouble();

			}
			
			Decimal minPrevValuePrice = mapSignalValues.get("minPrevValuePrice");
			if(minPrevValuePrice != null)
			{
				stop_loss_level_price =  minPrevValuePrice.toDouble();

			}

		} else if (currentSignal == -1) {
			
			Decimal maxPrevValueRSI = mapSignalValues.get("maxPrevValueRSI");
			if(maxPrevValueRSI != null)
			{
				stop_loss_level =  maxPrevValueRSI.toDouble();

			}
			
			Decimal maxPrevValuePrice = mapSignalValues.get("maxPrevValuePrice");
			if(maxPrevValuePrice != null)
			{
				stop_loss_level_price =  maxPrevValuePrice.toDouble();

			}

		}

		// int currentSignal =
		// (int)mapSignalValues.get("buySellHoldSignal").toDouble();

		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentRSISignal(symbol, data.getTick(endDay).getEndTime(),
				currentMarketTrend, currentSignal,stop_loss_level,stop_loss_level_price, 2);
		
		RSIAuditData rsiAuditData = convertToRSIAuditData(auditValues,signalReferenceId,symbol,data.getTick(endDay).getEndTime());
		
		indicatorsDBHelper.insertRSIAuditData(rsiAuditData,3);

/*		if (currentSignal != 0 || plainBacktesting) {
			
			backtesting(startDay,endDay,data,currentMarketTrend,plainBacktesting,signalReferenceId,
					symbol,indicatorsDBHelper,currentSignal,rsi);
		}*/

	
	}
	
	
	private RSIAuditData convertToRSIAuditData(Map mapAuditValues, int signalReferenceId, String symbol, DateTime dateTime) {
		RSIAuditData rsiAuditDataReturn = new RSIAuditData();
		
		rsiAuditDataReturn.setRsi_evaluation_run_id(signalReferenceId);
		
		rsiAuditDataReturn.setSymbol(symbol);
		
		rsiAuditDataReturn.setEndTime(dateTime);
		
		rsiAuditDataReturn.setCurr_signal((Integer)mapAuditValues.get("curr_signal"));		
		
		
		if(checkNull(mapAuditValues.get("valueRSI"))){
			
			rsiAuditDataReturn.setValueRSI(((Decimal)mapAuditValues.get("valueRSI")).toDouble());

		}

		if(checkNull(mapAuditValues.get("shortEmaValue"))){
			
			rsiAuditDataReturn.setShortEmaValue(((Decimal)mapAuditValues.get("shortEmaValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("longEmaValue"))){
			
			rsiAuditDataReturn.setLongEmaValue(((Decimal)mapAuditValues.get("longEmaValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("marketTrend"))){
			
			rsiAuditDataReturn.setMarketTrend((Integer)mapAuditValues.get("marketTrend"));

		}

		if(checkNull(mapAuditValues.get("signalforSidewaysMarket"))){
			
			rsiAuditDataReturn.setSignalforSidewaysMarket((Integer)mapAuditValues.get("signalforSidewaysMarket"));

		}

		if(checkNull(mapAuditValues.get("signalforTrendingMarket"))){
			
			rsiAuditDataReturn.setSignalforTrendingMarket((Integer)mapAuditValues.get("signalforTrendingMarket"));

		}

		if(checkNull(mapAuditValues.get("rsiGreaterThanCurrentValue"))){
			
			rsiAuditDataReturn.setRsiGreaterThanCurrentValue(((Decimal)mapAuditValues.get("rsiGreaterThanCurrentValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("rsiGreaterThanCurrentDate"))){
			
			rsiAuditDataReturn.setRsiGreaterThanCurrentDate((DateTime)mapAuditValues.get("rsiGreaterThanCurrentDate"));

		}

		if(checkNull(mapAuditValues.get("rsiLessThanCurrentValue"))){
			
			rsiAuditDataReturn.setRsiLessThanCurrentValue(((Decimal)mapAuditValues.get("rsiLessThanCurrentValue")).toDouble());

		}

		if(checkNull(mapAuditValues.get("rsiLessThanCurrentDate"))){
			
			rsiAuditDataReturn.setRsiLessThanCurrentDate((DateTime)mapAuditValues.get("rsiLessThanCurrentDate"));

		}

		if(checkNull(mapAuditValues.get("rateOfChange"))){
			
			rsiAuditDataReturn.setRateOfChange((Double)mapAuditValues.get("rateOfChange"));

		}

		if(checkNull(mapAuditValues.get("minPrevValueRSI"))){
			
			rsiAuditDataReturn.setMinPrevValueRSI(((Decimal)mapAuditValues.get("minPrevValueRSI")).toDouble());

		}

		if(checkNull(mapAuditValues.get("minPrevValueRSIDate"))){
			
			rsiAuditDataReturn.setMinPrevValueRSIDate((DateTime)mapAuditValues.get("minPrevValueRSIDate"));

		}
		
		if(checkNull(mapAuditValues.get("maxPrevValueRSI"))){
			
			rsiAuditDataReturn.setMaxPrevValueRSI(((Decimal)mapAuditValues.get("maxPrevValueRSI")).toDouble());

		}
		
		if(checkNull(mapAuditValues.get("maxPrevValueRSIDate"))){
			
			rsiAuditDataReturn.setMaxPrevValueRSIDate((DateTime)mapAuditValues.get("maxPrevValueRSIDate"));

		}
		
		
		return rsiAuditDataReturn;
	}



	private boolean checkNull(Object input) {
		return input != null;
	}



	private Map<String, Decimal> generateSignalForIndex(TimeSeries data, RSIIndicator rsi, int marketTrend, int index) {

		Map<String, Decimal> mapReturn = new HashMap<String, Decimal>();

		Decimal valueRSI = rsi.getValue(index);

		int buySellHoldSignal = 0;

		if (marketTrend == 0) {
			buySellHoldSignal = checkSignalforSidewaysMarket(valueRSI);
			mapReturn.put("buySellHoldSignal", Decimal.valueOf(buySellHoldSignal));
		} else

		{
			mapReturn = checkSignalforTrendingMarket(data,marketTrend, rsi, index);
		}

		return mapReturn;

	}

	private Map<String, Decimal> checkSignalforTrendingMarket(TimeSeries data, int marketTrend, RSIIndicator rsi, int index) {
		// TODO Auto-generated method stub

		Map<String, Decimal> mapReturn = new HashMap<String, Decimal>();
		
		mapReturn.put("buySellHoldSignal", Decimal.ZERO);

		Decimal rsiValue = rsi.getValue(index);
		
		auditValues.put("valueRSI",rsiValue);

		auditValues.put("signalforTrendingMarket",0);


		if (marketTrend == 1)

		{

			if (rsiValue.toDouble() < 35)
			{

				mapReturn.put("buySellHoldSignal", Decimal.ZERO);// Indicator did not cross 35 from below,
				// return no signal
			}

			Decimal prevValueRSI = null;
			
			Decimal prevValuePrice = null;


			Decimal minPrevValueRSI = Decimal.valueOf(0.0);
			
			Decimal minPrevValuePrice = Decimal.valueOf(0.0);


			for (int i = index - 1; i >= index - 14; i--) {

				prevValueRSI = rsi.getValue(i);
				
				if(prevValueRSI.isGreaterThan(rsiValue)){
					
					/* rsi was greater than current rsi value hence not good candidate of rsi crossing 35 
					 from below */				
					
					auditValues.put("rsiGreaterThanCurrentValue",prevValueRSI);
					
					auditValues.put("rsiGreaterThanCurrentDate",data.getTick(i).getEndTime());

					
					return mapReturn;

				
				}
				
				prevValuePrice = rsi.getTimeSeries().getTick(i).getClosePrice();

				if (minPrevValueRSI.toDouble() == 0) {
					minPrevValueRSI = prevValueRSI;
				}
				
				if (prevValueRSI.toDouble() > 0) {
					minPrevValueRSI = minPrevValueRSI.isLessThan(prevValueRSI) ? minPrevValueRSI : prevValueRSI;
				}

				if (minPrevValuePrice.toDouble() == 0) {
					minPrevValuePrice = prevValuePrice;
				}
				
				minPrevValuePrice = minPrevValuePrice.isLessThan(prevValuePrice) ? minPrevValuePrice : prevValuePrice;

				// Indicator was below 35, and it did cross 35 from below,
				// return 1 signal

				if (prevValueRSI.toDouble() < 35) {

					// Write Logic for Rally here
					// 1 point per day is rally
					
					double rateOfChange = (rsiValue.minus(prevValueRSI)).toDouble() / (index - i);
					
					auditValues.put("rateOfChange",rateOfChange);

					
					if (rateOfChange > min_per_day_for_rally_or_drop) {



						mapReturn.put("buySellHoldSignal", Decimal.ONE);

						auditValues.put("signalforTrendingMarket",1);

						auditValues.put("minPrevValueRSI",minPrevValueRSI);
						
						auditValues.put("minPrevValueRSIDate",data.getTick(i).getEndTime());


						mapReturn.put("minPrevValueRSI", minPrevValueRSI);
						
						mapReturn.put("minPrevValueRSI", minPrevValuePrice);

						
						return mapReturn;

					}
				}

			}

		}

		if (marketTrend == -1)

		{

			if (rsiValue.toDouble() > 65)
				
			{
				
				mapReturn.put("buySellHoldSignal", Decimal.ZERO); // Indicator did not cross 65 from ABOVE,
				// return no signal
			}

			Decimal prevValueRSI = null;
			
			Decimal prevValuePrice = null;


			Decimal maxPrevValueRSI = Decimal.valueOf(0.0);
			
			Decimal maxPrevValuePrice = Decimal.valueOf(0.0);


			for (int i = index - 1; i >= index - 14; i--) {

				prevValueRSI = rsi.getValue(i);
				
				if(prevValueRSI.isLessThan(rsiValue)){
					
					/* rsi was less than current rsi value hence not good candidate of rsi crossing 65 
					 from above */	
					
					auditValues.put("rsiLessThanCurrentValue",prevValueRSI);
					
					auditValues.put("rsiLessThanCurrentDate",data.getTick(i).getEndTime());


					return mapReturn;

				
				}

				
				prevValuePrice = rsi.getTimeSeries().getTick(i).getClosePrice();

				if (maxPrevValueRSI.toDouble() == 0) {
					maxPrevValueRSI = prevValueRSI;
				}
				maxPrevValueRSI = maxPrevValueRSI.isGreaterThan(prevValueRSI) ? maxPrevValueRSI : prevValueRSI;

				if (maxPrevValuePrice.toDouble() == 0) {
					maxPrevValuePrice = prevValuePrice;
				}
				
				if (prevValueRSI.toDouble() > 0) {
					maxPrevValuePrice = maxPrevValuePrice.isGreaterThan(prevValuePrice) ? maxPrevValuePrice : prevValuePrice;
				}

				// Indicator was above 65, and it did cross 65 from above,
				// return -1 signal
				if (prevValueRSI.toDouble() > 65) {

					// Write Logic for Drop here
					// 1 point per day is drop
					
					double rateOfChange = (prevValueRSI.minus(rsiValue)).toDouble() / (index - i);
					
					auditValues.put("rateOfChange",rateOfChange);

					if (rateOfChange > min_per_day_for_rally_or_drop) {


						mapReturn.put("buySellHoldSignal", Decimal.valueOf(-1));

						mapReturn.put("maxPrevValueRSI", maxPrevValueRSI);
						
						mapReturn.put("maxPrevValuePrice", maxPrevValuePrice);


						auditValues.put("signalforTrendingMarket",-1);

						auditValues.put("maxPrevValueRSI",maxPrevValueRSI);
						
						auditValues.put("maxPrevValueRSIDate",data.getTick(i).getEndTime());


						return mapReturn;

					}
				}

			}

		}


		return mapReturn;

	}

	private int checkSignalforSidewaysMarket(Decimal valueRSI) {

		auditValues.put("valueRSI",valueRSI);

		if (valueRSI.toDouble() > 70.0)
		{
			
			
			auditValues.put("signalforSidewaysMarket",-1);


			return -1;
			
		}

		if (valueRSI.toDouble() < 30.0)
			
		{
			
			auditValues.put("signalforSidewaysMarket",1);

			return 1;
		}
		
		auditValues.put("signalforSidewaysMarket",0);

		return 0;
	}

	private int checkMarketTrend(TimeSeries series, int index) {

		ClosePriceIndicator closePrice = new ClosePriceIndicator(series);

		EMAIndicator shortEma = new EMAIndicator(closePrice, 14);
		EMAIndicator longEma = new EMAIndicator(closePrice, 39);

		Decimal shortEmaValue = shortEma.getValue(index);

		Decimal longEmaValue = longEma.getValue(index);
		
		auditValues.put("shortEmaValue",shortEmaValue);
		
		auditValues.put("longEmaValue",longEmaValue);


		if (shortEmaValue.isGreaterThan(longEmaValue.multipliedBy(Decimal.valueOf(1.015)))) {
			
			auditValues.put("marketTrend",1);

			return 1;

		}

		else if (longEmaValue.isGreaterThan(shortEmaValue.multipliedBy(Decimal.valueOf(1.015))))

		{
			auditValues.put("marketTrend",-1);

			return -1;

		}

		auditValues.put("marketTrend",0);

		return 0;

	}

}
