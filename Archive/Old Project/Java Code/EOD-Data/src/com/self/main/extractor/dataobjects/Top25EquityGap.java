package com.self.main.extractor.dataobjects;

import java.util.Date;

public class Top25EquityGap {
	
	private Date currDate;
	
	private String symbol;

	private Date minDate;

	public Date getCurrDate() {
		return currDate;
	}

	public void setCurrDate(Date currDate) {
		this.currDate = currDate;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public Date getMinDate() {
		return minDate;
	}

	public void setMinDate(Date minDate) {
		this.minDate = minDate;
	}

	
	

}
