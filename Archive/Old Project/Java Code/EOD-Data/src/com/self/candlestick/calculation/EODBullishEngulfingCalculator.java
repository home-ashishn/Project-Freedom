package com.self.candlestick.calculation;

import java.util.NoSuchElementException;

import com.self.candlestick.db.helper.CandleStickIndicatorsDBHelper;
import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.main.CandleStickIndicatorsGlobal;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.Tick;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.candles.BullishEngulfingIndicator;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.bollinger.PercentBIndicator;

public class EODBullishEngulfingCalculator {

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "SBIN";

		EODBullishEngulfingCalculator calculator = new EODBullishEngulfingCalculator();

		CandleStickIndicatorsGlobal candleStickIndicatorsGlobal = CandleStickIndicatorsGlobal.getInstance();

		CandleStickIndicatorsDBHelper candleStickIndicatorsDBHelper = new 
				CandleStickIndicatorsDBHelper(candleStickIndicatorsGlobal.getPool());
		
		candleStickIndicatorsDBHelper.accumulateDataForSymbol(symbol,5);


		candleStickIndicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		calculator.calculateCurrentBullishEngulfing(symbol, candleStickIndicatorsDBHelper);

	}

	public void calculateCurrentBullishEngulfing(String symbol, 
			CandleStickIndicatorsDBHelper candleStickIndicatorsDBHelper) throws Exception {

		// IndicatorsDBHelper indicatorsDBHelper = new
		// IndicatorsDBHelper(indicatorsGlobal.getPool());

		// indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(candleStickIndicatorsDBHelper.getTicks());

		ClosePriceIndicator closePrice = new ClosePriceIndicator(data);

		BullishEngulfingIndicator bullishEngulfingIndicator = new BullishEngulfingIndicator
																(data);

		int endDay = data.getEnd();

		// int currentMarketTrend = checkMarketTrend(data, endDay);

		boolean currentSignal = bullishEngulfingIndicator.getValue(endDay); //


		// insert into DB

				candleStickIndicatorsDBHelper.insertCurrentBullishEISignal
				(symbol, data.getTick(endDay).getEndTime(),
				currentSignal, 2);


	}
}
