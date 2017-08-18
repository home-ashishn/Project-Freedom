package com.self.indicators.def.dataobjects;

import org.joda.time.DateTime;

public class IndicatorsBackTestData {
	
	
	private int signalReferenceId;
	private String symbol;
	private DateTime endTime; 
	private int currentMarketTrend;
	private int currentSignal;
	
	private double stop_loss_level;

	private double stop_loss_level_price;

	public int getSignalReferenceId() {
		return signalReferenceId;
	}
	public void setSignalReferenceId(int signalReferenceId) {
		this.signalReferenceId = signalReferenceId;
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
	public int getCurrentMarketTrend() {
		return currentMarketTrend;
	}
	public void setCurrentMarketTrend(int currentMarketTrend) {
		this.currentMarketTrend = currentMarketTrend;
	}
	public int getCurrentSignal() {
		return currentSignal;
	}
	public void setCurrentSignal(int currentSignal) {
		this.currentSignal = currentSignal;
	}
	public double getStop_loss_level() {
		return stop_loss_level;
	}
	public void setStop_loss_level(double stop_loss_level) {
		this.stop_loss_level = stop_loss_level;
	}
	public double getStop_loss_level_price() {
		return stop_loss_level_price;
	}
	public void setStop_loss_level_price(double stop_loss_level_price) {
		this.stop_loss_level_price = stop_loss_level_price;
	}

}
