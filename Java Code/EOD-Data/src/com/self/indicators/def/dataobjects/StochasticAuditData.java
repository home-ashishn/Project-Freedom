package com.self.indicators.def.dataobjects;

import org.joda.time.DateTime;

public class StochasticAuditData {
	
	private int stochastic_evaluation_run_id;
	
	private String symbol;

	private DateTime endTime; 
	
	private int curr_signal;

	private double valueD;
	
	private double valueK;
	
	private double shortEmaValue;
	
	private double longEmaValue;

	private int marketTrend;

	private int signalforSidewaysMarket;

	private int signalforTrendingMarket;
	
	private double valueDLessThanCurrentValue;

	private DateTime valueDLessThanCurrentDate;
	
	private double prevValueDGreaterThan80;

	private DateTime prevValueDGreaterThan80Date;

	private double valueDGreaterThanCurrentValue;

	private DateTime valueDGreaterThanCurrentDate;

	private double prevValueDLessThan20;

	private DateTime prevValueDLessThan20Date;

	public int getStochastic_evaluation_run_id() {
		return stochastic_evaluation_run_id;
	}

	public void setStochastic_evaluation_run_id(int stochastic_evaluation_run_id) {
		this.stochastic_evaluation_run_id = stochastic_evaluation_run_id;
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

	public int getCurr_signal() {
		return curr_signal;
	}

	public void setCurr_signal(int curr_signal) {
		this.curr_signal = curr_signal;
	}

	public double getValueD() {
		return valueD;
	}

	public void setValueD(double valueD) {
		this.valueD = valueD;
	}

	public double getValueK() {
		return valueK;
	}

	public void setValueK(double valueK) {
		this.valueK = valueK;
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

	public double getValueDLessThanCurrentValue() {
		return valueDLessThanCurrentValue;
	}

	public void setValueDLessThanCurrentValue(double valueDLessThanCurrentValue) {
		this.valueDLessThanCurrentValue = valueDLessThanCurrentValue;
	}

	public DateTime getValueDLessThanCurrentDate() {
		return valueDLessThanCurrentDate;
	}

	public void setValueDLessThanCurrentDate(DateTime valueDLessThanCurrentDate) {
		this.valueDLessThanCurrentDate = valueDLessThanCurrentDate;
	}

	public double getPrevValueDGreaterThan80() {
		return prevValueDGreaterThan80;
	}

	public void setPrevValueDGreaterThan80(double prevValueDGreaterThan80) {
		this.prevValueDGreaterThan80 = prevValueDGreaterThan80;
	}

	public DateTime getPrevValueDGreaterThan80Date() {
		return prevValueDGreaterThan80Date;
	}

	public void setPrevValueDGreaterThan80Date(DateTime prevValueDGreaterThan80Date) {
		this.prevValueDGreaterThan80Date = prevValueDGreaterThan80Date;
	}

	public double getValueDGreaterThanCurrentValue() {
		return valueDGreaterThanCurrentValue;
	}

	public void setValueDGreaterThanCurrentValue(double valueDGreaterThanCurrentValue) {
		this.valueDGreaterThanCurrentValue = valueDGreaterThanCurrentValue;
	}

	public DateTime getValueDGreaterThanCurrentDate() {
		return valueDGreaterThanCurrentDate;
	}

	public void setValueDGreaterThanCurrentDate(DateTime valueDGreaterThanCurrentDate) {
		this.valueDGreaterThanCurrentDate = valueDGreaterThanCurrentDate;
	}

	public double getPrevValueDLessThan20() {
		return prevValueDLessThan20;
	}

	public void setPrevValueDLessThan20(double prevValueDLessThan20) {
		this.prevValueDLessThan20 = prevValueDLessThan20;
	}

	public DateTime getPrevValueDLessThan20Date() {
		return prevValueDLessThan20Date;
	}

	public void setPrevValueDLessThan20Date(DateTime prevValueDLessThan20Date) {
		this.prevValueDLessThan20Date = prevValueDLessThan20Date;
	}
	
	
	

	}
