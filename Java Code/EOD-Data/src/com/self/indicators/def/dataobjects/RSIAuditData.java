package com.self.indicators.def.dataobjects;

import org.joda.time.DateTime;

public class RSIAuditData {
	
	private String symbol;

	private DateTime endTime; 

	private double valueRSI;
	
	private double shortEmaValue;
	
	private double longEmaValue;

	private boolean marketTrend;

	private boolean signalforSidewaysMarket;

	private boolean signalforTrendingMarket;

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

	public boolean isMarketTrend() {
		return marketTrend;
	}

	public void setMarketTrend(boolean marketTrend) {
		this.marketTrend = marketTrend;
	}

	public boolean isSignalforSidewaysMarket() {
		return signalforSidewaysMarket;
	}

	public void setSignalforSidewaysMarket(boolean signalforSidewaysMarket) {
		this.signalforSidewaysMarket = signalforSidewaysMarket;
	}

	public boolean isSignalforTrendingMarket() {
		return signalforTrendingMarket;
	}

	public void setSignalforTrendingMarket(boolean signalforTrendingMarket) {
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
	

}
