package com.self.indicators.calculation;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.xerces.impl.dv.xs.DecimalDV;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.Tick;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.SMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.bollinger.PercentBIndicator;
import eu.verdelhan.ta4j.indicators.volume.OnBalanceVolumeIndicator;

public class EODPercentBCalculator {

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		String symbol = "TATAMOTORS";

		EODPercentBCalculator calculator = new EODPercentBCalculator();

		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		indicatorsDBHelper.accumulateDataForSymbol(symbol,5);


		indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		calculator.calculateCurrentandBackTest(symbol, true, indicatorsDBHelper);

	}

	public void calculateCurrentandBackTest(String symbol, boolean plainBacktesting,
			IndicatorsDBHelper indicatorsDBHelper) throws Exception {

		// IndicatorsDBHelper indicatorsDBHelper = new
		// IndicatorsDBHelper(indicatorsGlobal.getPool());

		// indicatorsDBHelper.getIndicatorsBaseData(symbol, 5);

		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());

		ClosePriceIndicator closePrice = new ClosePriceIndicator(data);

		PercentBIndicator percentBIndicator = new PercentBIndicator(closePrice, 20, Decimal.TWO);

		int startDay = data.getBegin() + 14;

		int endDay = data.getEnd();

		Decimal[] arrMFI = getMFIForTimeSeries(data);

		// int currentMarketTrend = checkMarketTrend(data, endDay);

		int currentSignal = 0; //
		currentSignal = generateSignalForIndex(percentBIndicator, arrMFI, endDay);

		int signalReferenceId = 0;

		// insert into DB

		signalReferenceId = indicatorsDBHelper.insertCurrentPercentBSignal
				(symbol, data.getTick(endDay).getEndTime(),
				currentSignal, 2);

		if (currentSignal != 0 || plainBacktesting) {

			/*backTest(startDay, endDay, data, symbol, currentSignal, percentBIndicator, arrMFI, signalReferenceId,
					indicatorsDBHelper, plainBacktesting);*/
		}

	}

	private int generateSignalForIndex(PercentBIndicator percentBIndicator, Decimal[] arrMFI, int i) {

		int buySellHoldSignal = 0;

		if ((percentBIndicator.getValue(i).isGreaterThanOrEqual(Decimal.valueOf(0.75)))
				 && (arrMFI[i].isGreaterThanOrEqual(Decimal.valueOf(75)))
				) {
			buySellHoldSignal = 1; // checkSignalforSidewaysMarket(valueK);
		} else

		if ((percentBIndicator.getValue(i).isLessThanOrEqual(Decimal.valueOf(0.25)))
				 && (arrMFI[i].isLessThanOrEqual(Decimal.valueOf(25)))
				) {
			buySellHoldSignal = -1; // checkSignalforSidewaysMarket(valueK);
		}
		return buySellHoldSignal;

	}

	private Decimal[] getMFIForTimeSeries(TimeSeries data) {
		// TODO Auto-generated method stub

		int startDay = data.getBegin();

		int endDay = data.getEnd();

		Decimal[] arrTypicalPrice = new Decimal[endDay - startDay+1];

		Decimal[] arrPriceIndicator = new Decimal[endDay - startDay+1];

		Decimal[] arrOneDayPositiveMoneyFlow = new Decimal[endDay - startDay+1];

		Decimal[] arrOneDayNegativeMoneyFlow = new Decimal[endDay - startDay+1];

		Decimal[] arr14DayPositiveMoneyFlow = new Decimal[endDay - startDay+1];

		Decimal[] arr14DayNegativeMoneyFlow = new Decimal[endDay - startDay+1];

		Decimal[] arr14DayMoneyFlow = new Decimal[endDay - startDay+1];

		arrOneDayPositiveMoneyFlow[0] = Decimal.ZERO;
		arrOneDayNegativeMoneyFlow[0] = Decimal.ZERO;

		for (int i = startDay; i <= endDay; i++) {

			Tick tick = data.getTick(i);

			Decimal highPrice = tick.getMaxPrice();
			Decimal lowPrice = tick.getMinPrice();
			Decimal closePrice = tick.getClosePrice();

			Decimal typicalPrice1 = highPrice.plus(lowPrice).plus(closePrice);

			Decimal typicalPrice = typicalPrice1.dividedBy(Decimal.THREE);

			arrTypicalPrice[i] = typicalPrice;
			if (i > 0) {

				if (typicalPrice.isGreaterThanOrEqual(arrTypicalPrice[i - 1])) {
					arrPriceIndicator[i] = Decimal.ONE;
					arrOneDayPositiveMoneyFlow[i] = typicalPrice.multipliedBy(tick.getVolume());
					arrOneDayNegativeMoneyFlow[i] = Decimal.ZERO;

				} else {
					arrPriceIndicator[i] = Decimal.ONE.multipliedBy(Decimal.valueOf(-1));
					arrOneDayNegativeMoneyFlow[i] = typicalPrice.multipliedBy(tick.getVolume());
					// .multipliedBy(Decimal.valueOf(-1));
					arrOneDayPositiveMoneyFlow[i] = Decimal.ZERO;

				}

			}

			if (i >= 14) {

				Decimal value14DayPositiveMoneyFlow = get14DayPositiveMoneyFlow(arrOneDayPositiveMoneyFlow, i);

				arr14DayPositiveMoneyFlow[i] = value14DayPositiveMoneyFlow;

				Decimal value14DayNegativeMoneyFlow = get14DayNegativeMoneyFlow(arrOneDayNegativeMoneyFlow, i);

				arr14DayNegativeMoneyFlow[i] = value14DayNegativeMoneyFlow;

				Decimal moneyFlowRatio = value14DayPositiveMoneyFlow.dividedBy(value14DayNegativeMoneyFlow);

				Decimal moneyFlowIndex1 = Decimal.ONE.plus(moneyFlowRatio);

				Decimal moneyFlowIndex2 = Decimal.HUNDRED.dividedBy(moneyFlowIndex1);

				Decimal moneyFlowIndex = Decimal.HUNDRED.minus(moneyFlowIndex2);

				arr14DayMoneyFlow[i] = moneyFlowIndex;

			}

		}

		return arr14DayMoneyFlow;
	}

	private Decimal get14DayNegativeMoneyFlow(Decimal[] arrOneDayNegativeMoneyFlow, int i) {
		// TODO Auto-generated method stub

		Decimal sumNegativeMoneyFlow = Decimal.ZERO;

		for (int j = i - 13; j <= i; j++) {

			sumNegativeMoneyFlow = sumNegativeMoneyFlow.plus(arrOneDayNegativeMoneyFlow[j]);

		}
		return sumNegativeMoneyFlow;
	}

	private Decimal get14DayPositiveMoneyFlow(Decimal[] arrOneDayPositiveMoneyFlow, int i) {
		// TODO Auto-generated method stub

		Decimal sumPositiveMoneyFlow = Decimal.ZERO;

		for (int j = i - 13; j <= i; j++) {

			sumPositiveMoneyFlow = sumPositiveMoneyFlow.plus(arrOneDayPositiveMoneyFlow[j]);

		}
		return sumPositiveMoneyFlow;
	}

	private void backTest(int startDay, int endDay, TimeSeries data, String symbol, int currentSignal,
			PercentBIndicator percentBIndicator, Decimal[] arrMFI, int signalReferenceId,
			IndicatorsDBHelper indicatorsDBHelper, boolean plainBacktesting) throws Exception {

		List<IndicatorsBackTestData> listIndicatorsBackTestData = new ArrayList<IndicatorsBackTestData>();

		for (int i = endDay - 1; i > startDay; i--) {

			int signal = generateSignalForIndex(percentBIndicator, arrMFI, i);

			if (signal == currentSignal || plainBacktesting) {
				// insert into DB

				IndicatorsBackTestData indicatorsBackTestData = new IndicatorsBackTestData();

				indicatorsBackTestData.setSignalReferenceId(signalReferenceId);
				indicatorsBackTestData.setSymbol(symbol);
				indicatorsBackTestData.setEndTime(data.getTick(i).getEndTime());
				// indicatorsBackTestData.setCurrentMarketTrend(marketTrend);
				indicatorsBackTestData.setCurrentSignal(signal);

				listIndicatorsBackTestData.add(indicatorsBackTestData);

			}

		}

		indicatorsDBHelper.insertBackTestPercentBSignal(listIndicatorsBackTestData,
		 2);

	}

}
