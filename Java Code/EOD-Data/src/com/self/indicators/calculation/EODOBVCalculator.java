package com.self.indicators.calculation;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.SMAIndicator;
import eu.verdelhan.ta4j.indicators.volume.OnBalanceVolumeIndicator;

public class EODOBVCalculator {

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "AUROPHARMA";

		EODOBVCalculator calculator = new EODOBVCalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		
		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		calculator.calculateCurrentandBackTest(symbol,true,indicatorsDBHelper);

	}

	public void calculateCurrentandBackTest(String symbol, boolean plainBacktesting, 
			IndicatorsDBHelper indicatorsDBHelper) throws Exception {


		// IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		//indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());
		


		OnBalanceVolumeIndicator obvIndicator = new OnBalanceVolumeIndicator(data);
		// OBVOscillatorDIndicator sod = new OBVOscillatorDIndicator(sof);

/*		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();*/
		
		
		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();

		int currentMarketTrend = checkMarketTrend(data, endDay);

		int currentSignal = 0; //
		currentSignal = generateSignalForIndex(obvIndicator, currentMarketTrend, endDay);

		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentOBVSignal(symbol,
				data.getTick(endDay).getEndTime(), currentMarketTrend, currentSignal, 2);

		if (currentSignal != 0 || plainBacktesting) {

			/*backTest(startDay, endDay, data, symbol, currentMarketTrend, currentSignal, obvIndicator, signalReferenceId,
					indicatorsDBHelper,plainBacktesting);*/
		}

	}


	private void backTest(int startDay, int endDay, TimeSeries data, String symbol, int currentMarketTrend,
			int currentSignal, OnBalanceVolumeIndicator obvIndicator, 
			int signalReferenceId, IndicatorsDBHelper indicatorsDBHelper, boolean plainBacktesting) throws Exception {

		List<IndicatorsBackTestData> listIndicatorsBackTestData = new ArrayList<IndicatorsBackTestData>();

		for (int i = endDay - 1; i > startDay; i--) {

			int marketTrend = checkMarketTrend(data, i);

			if (marketTrend == currentMarketTrend || plainBacktesting) {
				
				int signal = generateSignalForIndex(obvIndicator, marketTrend,i);

				if (signal == currentSignal || plainBacktesting) {
					// insert into DB

					IndicatorsBackTestData indicatorsBackTestData = new IndicatorsBackTestData();

					indicatorsBackTestData.setSignalReferenceId(signalReferenceId);
					indicatorsBackTestData.setSymbol(symbol);
					indicatorsBackTestData.setEndTime(data.getTick(i).getEndTime());
					indicatorsBackTestData.setCurrentMarketTrend(marketTrend);
					indicatorsBackTestData.setCurrentSignal(signal);

					listIndicatorsBackTestData.add(indicatorsBackTestData);

				}

			}

			/*
			 * value = sof.getValue(i); System.out.println(" value for i = "+i+
			 * " is- "+value);
			 */
		}

		indicatorsDBHelper.insertBackTestOBVSignal(listIndicatorsBackTestData, 2);

	}

	private int generateSignalForIndex(OnBalanceVolumeIndicator obvIndicator, 
			int marketTrend, int index) {

		// Decimal valueK = obvIndicator.getValue(index);

		int buySellHoldSignal = 0;

		if (marketTrend == 0) {
			buySellHoldSignal = 0; // checkSignalforSidewaysMarket(valueK);
		} else

		{
			buySellHoldSignal = checkSignalforTrendingMarket(marketTrend, obvIndicator, index);
		}

		return buySellHoldSignal;

	}

	private int checkSignalforTrendingMarket(int marketTrend, OnBalanceVolumeIndicator obvIndicator, int index) {
		



/*		EMAIndicator shortEma = new EMAIndicator(obvIndicator, 9);
		EMAIndicator longEma = new EMAIndicator(obvIndicator, 26);
*/

		SMAIndicator shortEma = new SMAIndicator(obvIndicator, 3);
		SMAIndicator longEma = new SMAIndicator(obvIndicator, 9);

		Decimal shortEmaValue = shortEma.getValue(index);

		Decimal longEmaValue = longEma.getValue(index);

		if (shortEmaValue.isGreaterThan(longEmaValue.multipliedBy(Decimal.valueOf(1.03)))) {
			return 1;

		}

		else if (longEmaValue.isGreaterThan(shortEmaValue.multipliedBy(Decimal.valueOf(1.03))))

		{
			return -1;

		}

	
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
