package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;


@Entity
@Table(name = "selected_instrument")
@IdClass(SelectedInstrumentId.class)
public class SelectedInstrument {
	
	@Id
	private String symbol;
	
	@Id
	private String option_type;

	@Id
	private float option_strike_price;
	
	private String url;
	
	private String expiry_date_full;

	private String expiry_date_prefix;

	
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

	
	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}


	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getExpiry_date_full() {
		return expiry_date_full;
	}

	public void setExpiry_date_full(String expiry_date_full) {
		this.expiry_date_full = expiry_date_full;
	}

	public String getExpiry_date_prefix() {
		return expiry_date_prefix;
	}

	public void setExpiry_date_prefix(String expiry_date_prefix) {
		this.expiry_date_prefix = expiry_date_prefix;
	}



}
