package com.self.indicators.calculation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.RSIIndicator;

public class EODRSICalculator {

	private float min_per_day_for_rally_or_drop = 0.5f;

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "SBIN";
		
		EODRSICalculator calculator = new EODRSICalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

 
		calculator.calculateCurrentRSIWithBackTest(symbol,true,indicatorsDBHelper);


	}

	
	public void calculateCurrentRSIWithBackTest(String symbol, boolean plainBacktesting,
			IndicatorsDBHelper indicatorsDBHelper) throws Exception{
		


		// to be moved outside so that it is called once for all indicators
		//indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());

		ClosePriceIndicator closePrice = new ClosePriceIndicator(data);

		RSIIndicator rsi = new RSIIndicator(closePrice, 14);

		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();

		int currentMarketTrend = checkMarketTrend(data, endDay);

		Map<String, Decimal> mapSignalValues = generateSignalForIndex(rsi, currentMarketTrend, endDay);

		int currentSignal = (int) mapSignalValues.get("buySellHoldSignal").toDouble();

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

		if (currentSignal != 0 || plainBacktesting) {
			
			/*backtesting(startDay,endDay,data,currentMarketTrend,plainBacktesting,signalReferenceId,
					symbol,indicatorsDBHelper,currentSignal,rsi);*/
		}

	
	}
	private void backtesting(int startDay, int endDay, TimeSeries data, int currentMarketTrend,
			boolean plainBactesting, int signalReferenceId, String symbol, IndicatorsDBHelper indicatorsDBHelper, int currentSignal, RSIIndicator rsi) 
					throws Exception {


		List<IndicatorsBackTestData> listIndicatorsBackTestData = new ArrayList<IndicatorsBackTestData>();

		for (int i = endDay - 1; i > startDay; i--) {

			int marketTrend = checkMarketTrend(data, i);

			if (marketTrend == currentMarketTrend || plainBactesting) {
				
				Map<String, Decimal> mapBTSignalValues = generateSignalForIndex(rsi, marketTrend, i);

				int signal = (int) mapBTSignalValues.get("buySellHoldSignal").toDouble();

				double stop_loss_level_bt = 0;
				
				double stop_loss_level_price_bt = 0;


				if (signal == 1) {

					Decimal minPrevValueRSI = mapBTSignalValues.get("minPrevValueRSI");
					if(minPrevValueRSI != null)
					{
						stop_loss_level_bt =  minPrevValueRSI.toDouble();

					}
					
					Decimal minPrevValuePrice = mapBTSignalValues.get("minPrevValuePrice");
					if(minPrevValuePrice != null)
					{
						stop_loss_level_price_bt =  minPrevValuePrice.toDouble();

					}




				} else if (signal == -1) {
					
					Decimal maxPrevValueRSI = mapBTSignalValues.get("maxPrevValueRSI");
					if(maxPrevValueRSI != null)
					{
						stop_loss_level_bt = maxPrevValueRSI.toDouble();

					}
					
					Decimal maxPrevValuePrice = mapBTSignalValues.get("maxPrevValuePrice");
					if(maxPrevValuePrice != null)
					{
						stop_loss_level_price_bt =  maxPrevValuePrice.toDouble();

					}

				

				}
				 // calculator.generateSignalForIndex(rsi,marketTrend,calculator,sod,i);

				if (signal == currentSignal || plainBactesting) {
					// insert into DB

					IndicatorsBackTestData indicatorsBackTestData = new IndicatorsBackTestData();

					indicatorsBackTestData.setSignalReferenceId(signalReferenceId);
					indicatorsBackTestData.setSymbol(symbol);
					indicatorsBackTestData.setEndTime(data.getTick(i).getEndTime());
					indicatorsBackTestData.setCurrentMarketTrend(marketTrend);
					indicatorsBackTestData.setCurrentSignal(signal);
					indicatorsBackTestData.setStop_loss_level(stop_loss_level_bt);
					indicatorsBackTestData.setStop_loss_level_price(stop_loss_level_price_bt);


					listIndicatorsBackTestData.add(indicatorsBackTestData);

				}

			}

			/*
			 * value = sof.getValue(i); System.out.println(" value for i = "
			 * +i+" is- "+value);
			 */
		}

		indicatorsDBHelper.insertBackTestRSISignal(listIndicatorsBackTestData, 2);

			
	}

	private Map<String, Decimal> generateSignalForIndex(RSIIndicator rsi, int marketTrend, int index) {

		Map<String, Decimal> mapReturn = new HashMap<String, Decimal>();

		Decimal valueRSI = rsi.getValue(index);

		int buySellHoldSignal = 0;

		if (marketTrend == 0) {
			buySellHoldSignal = checkSignalforSidewaysMarket(valueRSI);
			mapReturn.put("buySellHoldSignal", Decimal.valueOf(buySellHoldSignal));
		} else

		{
			mapReturn = checkSignalforTrendingMarket(marketTrend, rsi, index);
		}

		return mapReturn;

	}

	private Map<String, Decimal> checkSignalforTrendingMarket(int marketTrend, RSIIndicator rsi, int index) {
		// TODO Auto-generated method stub

		Map<String, Decimal> mapReturn = new HashMap<String, Decimal>();
		
		mapReturn.put("buySellHoldSignal", Decimal.ZERO);


		int buySellHoldSignal = 0;

		if (marketTrend == 1)

		{
			Decimal rsiValue = rsi.getValue(index);

			if (rsiValue.toDouble() < 35)
			{
				buySellHoldSignal = 0; // Indicator did not cross 35 from below,
										// return no signal
				
				mapReturn.put("buySellHoldSignal", Decimal.ZERO);
			}

			Decimal prevValueRSI = null;
			
			Decimal prevValuePrice = null;


			Decimal minPrevValueRSI = Decimal.valueOf(0.0);
			
			Decimal minPrevValuePrice = Decimal.valueOf(0.0);


			for (int i = index - 1; i >= index - 14; i--) {

				prevValueRSI = rsi.getValue(i);
				
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
					if ((rsiValue.minus(prevValueRSI)).toDouble() / (index - i) > min_per_day_for_rally_or_drop) {

						buySellHoldSignal = 1;

						mapReturn.put("buySellHoldSignal", Decimal.ONE);

						mapReturn.put("minPrevValueRSI", minPrevValueRSI);
						
						mapReturn.put("minPrevValuePrice", minPrevValuePrice);

						
						return mapReturn;

					}
				}

			}

		}

		if (marketTrend == -1)

		{
			Decimal rsiValue = rsi.getValue(index);

			if (rsiValue.toDouble() > 65)
				
			{
				buySellHoldSignal = 0; // Indicator did not cross 65 from ABOVE,
										// return no signal
				
				mapReturn.put("buySellHoldSignal", Decimal.ZERO);
			}

			Decimal prevValueRSI = null;
			
			Decimal prevValuePrice = null;


			Decimal maxPrevValueRSI = Decimal.valueOf(0.0);
			
			Decimal maxPrevValuePrice = Decimal.valueOf(0.0);


			for (int i = index - 1; i >= index - 14; i--) {

				prevValueRSI = rsi.getValue(i);
				
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
					if ((prevValueRSI.minus(rsiValue)).toDouble() / (index - i) > min_per_day_for_rally_or_drop) {

						buySellHoldSignal = -1;

						mapReturn.put("buySellHoldSignal", Decimal.valueOf(-1));

						mapReturn.put("maxPrevValueRSI", maxPrevValueRSI);
						
						mapReturn.put("maxPrevValuePrice", maxPrevValuePrice);

						
						return mapReturn;

					}
				}

			}

		}

		buySellHoldSignal = 0;

		return mapReturn;

	}

	private int checkSignalforSidewaysMarket(Decimal valueK) {

		if (valueK.toDouble() > 70.0)
			return -1;

		if (valueK.toDouble() < 30.0)
			return 1;

		return 0;
	}

	private int checkMarketTrend(TimeSeries series, int index) {

		ClosePriceIndicator closePrice = new ClosePriceIndicator(series);

		EMAIndicator shortEma = new EMAIndicator(closePrice, 9);
		EMAIndicator longEma = new EMAIndicator(closePrice, 26);

		Decimal shortEmaValue = shortEma.getValue(index);

		Decimal longEmaValue = longEma.getValue(index);

		if (shortEmaValue.isGreaterThan(longEmaValue.multipliedBy(Decimal.valueOf(1.01)))) {
			return 1;

		}

		else if (longEmaValue.isGreaterThan(shortEmaValue.multipliedBy(Decimal.valueOf(1.01))))

		{
			return -1;

		}

		/*
		 * Rule ovRule = new OverIndicatorRule(shortEma, longEma);
		 * 
		 * if (ovRule.isSatisfied(index)) return 1;
		 * 
		 * Rule uiRule = new UnderIndicatorRule(shortEma, longEma);
		 * 
		 * 
		 * if (uiRule.isSatisfied(index)) return -1;
		 */
		return 0;

	}

}
