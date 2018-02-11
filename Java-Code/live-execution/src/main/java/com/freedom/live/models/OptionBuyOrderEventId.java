package com.freedom.live.models;

import java.io.Serializable;

public class OptionBuyOrderEventId implements Serializable{
	
	
	private String symbol;
	
	
	private String option_type;

	
	private float option_strike_price;


	public String getSymbol() {
		return symbol;
	}


	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}


	public String getOption_type() {
		return option_type;
	}


	public void setOption_type(String option_type) {
		this.option_type = option_type;
	}


	public float getOption_strike_price() {
		return option_strike_price;
	}


	public void setOption_strike_price(float option_strike_price) {
		this.option_strike_price = option_strike_price;
	}

}
