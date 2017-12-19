package com.self.indicators.def.dataobjects;

import org.joda.time.DateTime;

public class RSIAuditData {
	
	private int rsi_evaluation_run_id;
	
	private String symbol;

	private DateTime endTime; 
	
	private int curr_signal;

	private double valueRSI;
	
	private double shortEmaValue;
	
	private double longEmaValue;

	private int marketTrend;

	private int signalforSidewaysMarket;

	private int signalforTrendingMarket;

	private double rsiGreaterThanCurrentValue;

	private DateTime rsiGreaterThanCurrentDate;

	private double rsiLessThanCurrentValue;

	private DateTime rsiLessThanCurrentDate;

	private double rateOfChange;

	private double minPrevValueRSI;

	private DateTime minPrevValueRSIDate;

	private double maxPrevValueRSI;

	private DateTime maxPrevValueRSIDate;

	public double getValueRSI() {
		return valueRSI;
	}

	public void setValueRSI(double valueRSI) {
		this.valueRSI = valueRSI;
	}

	public double getShortEmaValue() {
		return shortEmaValue;
	}

	public void setShortEmaValue(double shortEmaValue) {
		this.shortEmaValue = shortEmaValue;
	}

	public double getLongEmaValue() {
		return longEmaValue;
	}

	public void setLongEmaValue(double longEmaValue) {
		this.longEmaValue = longEmaValue;
	}

	public int getMarketTrend() {
		return marketTrend;
	}

	public void setMarketTrend(int marketTrend) {
		this.marketTrend = marketTrend;
	}

	public int getSignalforSidewaysMarket() {
		return signalforSidewaysMarket;
	}

	public void setSignalforSidewaysMarket(int signalforSidewaysMarket) {
		this.signalforSidewaysMarket = signalforSidewaysMarket;
	}

	public int getSignalforTrendingMarket() {
		return signalforTrendingMarket;
	}

	public void setSignalforTrendingMarket(int signalforTrendingMarket) {
		this.signalforTrendingMarket = signalforTrendingMarket;
	}

	public double getRsiGreaterThanCurrentValue() {
		return rsiGreaterThanCurrentValue;
	}

	public void setRsiGreaterThanCurrentValue(double rsiGreaterThanCurrentValue) {
		this.rsiGreaterThanCurrentValue = rsiGreaterThanCurrentValue;
	}

	public DateTime getRsiGreaterThanCurrentDate() {
		return rsiGreaterThanCurrentDate;
	}

	public void setRsiGreaterThanCurrentDate(DateTime rsiGreaterThanCurrentDate) {
		this.rsiGreaterThanCurrentDate = rsiGreaterThanCurrentDate;
	}

	public double getRsiLessThanCurrentValue() {
		return rsiLessThanCurrentValue;
	}

	public void setRsiLessThanCurrentValue(double rsiLessThanCurrentValue) {
		this.rsiLessThanCurrentValue = rsiLessThanCurrentValue;
	}

	public DateTime getRsiLessThanCurrentDate() {
		return rsiLessThanCurrentDate;
	}

	public void setRsiLessThanCurrentDate(DateTime rsiLessThanCurrentDate) {
		this.rsiLessThanCurrentDate = rsiLessThanCurrentDate;
	}

	public double getRateOfChange() {
		return rateOfChange;
	}

	public void setRateOfChange(double rateOfChange) {
		this.rateOfChange = rateOfChange;
	}

	public double getMinPrevValueRSI() {
		return minPrevValueRSI;
	}

	public void setMinPrevValueRSI(double minPrevValueRSI) {
		this.minPrevValueRSI = minPrevValueRSI;
	}

	public DateTime getMinPrevValueRSIDate() {
		return minPrevValueRSIDate;
	}

	public void setMinPrevValueRSIDate(DateTime minPrevValueRSIDate) {
		this.minPrevValueRSIDate = minPrevValueRSIDate;
	}

	public double getMaxPrevValueRSI() {
		return maxPrevValueRSI;
	}

	public void setMaxPrevValueRSI(double maxPrevValueRSI) {
		this.maxPrevValueRSI = maxPrevValueRSI;
	}

	public DateTime getMaxPrevValueRSIDate() {
		return maxPrevValueRSIDate;
	}

	public void setMaxPrevValueRSIDate(DateTime maxPrevValueRSIDate) {
		this.maxPrevValueRSIDate = maxPrevValueRSIDate;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public DateTime getEndTime() {
		return endTime;
	}

	public void setEndTime(DateTime endTime) {
		this.endTime = endTime;
	}

	public int getRsi_evaluation_run_id() {
		return rsi_evaluation_run_id;
	}

	public void setRsi_evaluation_run_id(int rsi_evaluation_run_id) {
		this.rsi_evaluation_run_id = rsi_evaluation_run_id;
	}

	public int getCurr_signal() {
		return curr_signal;
	}

	public void setCurr_signal(int curr_signal) {
		this.curr_signal = curr_signal;
	}
	

}
