package com.self.indicators.calculation;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.Rule;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorDIndicator;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorKIndicator;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.trading.rules.OverIndicatorRule;
import eu.verdelhan.ta4j.trading.rules.UnderIndicatorRule;

public class EODStochasticCalculator {

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "SBIN";

		EODStochasticCalculator calculator = new EODStochasticCalculator();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		calculator.calculateCurrentandBackTest(symbol,true,indicatorsDBHelper);

	}

	public void calculateCurrentandBackTest(String symbol, boolean plainBacktesting, 
			IndicatorsDBHelper indicatorsDBHelper) throws Exception {



		//indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());

		StochasticOscillatorKIndicator sof = new StochasticOscillatorKIndicator(data, 14);
		StochasticOscillatorDIndicator sod = new StochasticOscillatorDIndicator(sof);

		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();

		int currentMarketTrend = checkMarketTrend(data, endDay);

		int currentSignal = generateSignalForIndex(sof, currentMarketTrend, sod, endDay);

		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentStochasticSignal(symbol,
				data.getTick(endDay).getEndTime(), currentMarketTrend, currentSignal, 2);

		if (currentSignal != 0 || plainBacktesting) {

			/*backTest(startDay, endDay, data, symbol, currentMarketTrend, currentSignal, sof, sod, signalReferenceId,
					indicatorsDBHelper,plainBacktesting);*/
		}

	}

	private void backTest(int startDay, int endDay, TimeSeries data, String symbol, int currentMarketTrend,
			int currentSignal, StochasticOscillatorKIndicator sof, StochasticOscillatorDIndicator sod,
			int signalReferenceId, IndicatorsDBHelper indicatorsDBHelper, boolean plainBacktesting) throws Exception {

		List<IndicatorsBackTestData> listIndicatorsBackTestData = new ArrayList<IndicatorsBackTestData>();

		for (int i = endDay - 1; i > startDay; i--) {

			int marketTrend = checkMarketTrend(data, i);

			if (marketTrend == currentMarketTrend || plainBacktesting) {
				int signal = generateSignalForIndex(sof, marketTrend, sod, i);

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

		indicatorsDBHelper.insertBackTestStochasticSignal(listIndicatorsBackTestData, 2);

	}

	private int generateSignalForIndex(StochasticOscillatorKIndicator sof, int marketTrend,
			StochasticOscillatorDIndicator sod, int index) {

		Decimal valueK = sof.getValue(index);

		int buySellHoldSignal = 0;

		if (marketTrend == 0) {
			buySellHoldSignal = checkSignalforSidewaysMarket(valueK);
		} else

		{
			buySellHoldSignal = checkSignalforTrendingMarket(marketTrend, sod, index);
		}

		return buySellHoldSignal;

	}

	private int checkSignalforTrendingMarket(int marketTrend, StochasticOscillatorDIndicator sod, int index) {
		

		if (marketTrend == 1)

		{
			Decimal currentValueD = sod.getValue(index);

			if (currentValueD.toDouble() > 50)
				return 0; // Indicator did not cross 50 from above, return no
							// signal

			Decimal prevValueD = null;

			for (int i = index - 1; i >= index - 14; i--) {
				prevValueD = sod.getValue(i);

				// Indicator was above 80, and it did cross 50 from above,
				// return -1 signal

				if (prevValueD.toDouble() >= 80)
					return -1;

			}

		}

		if (marketTrend == -1)

		{
			Decimal currentValueD = sod.getValue(index);

			if (currentValueD.toDouble() < 50)
				return 0; // Indicator did not cross 50 from below, return no
							// signal

			Decimal prevValueD = null;

			for (int i = index - 1; i >= index - 14; i--) {
				prevValueD = sod.getValue(i);
				// Indicator was below 200, and it did cross 50 from below,
				// return 1 signal

				if (prevValueD.toDouble() <= 20)
					return 1;

			}

		}

		return 0;

	}

	private int checkSignalforSidewaysMarket(Decimal valueK) {

		if (valueK.toDouble() >= 80.0)
			return -1;

		if (valueK.toDouble() <= 20.0)
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
