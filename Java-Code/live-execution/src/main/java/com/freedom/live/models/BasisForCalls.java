package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "basis_for_calls")
public class BasisForCalls {
	
	@Id
	private String symbol;
	
	private int curr_signal;
	
	private String url;
	
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

	public int getCurr_signal() {
		return curr_signal;
	}

	public void setCurr_signal(int curr_signal) {
		this.curr_signal = curr_signal;
	}



}
