package com.freedom.live.models;

import org.springframework.data.annotation.Id;

/*@Entity
@Table(name = "basis_for_calls")*/
public class BasisForCalls {
	
	@Id
	private String symbol;
	
	private int signal;
	
	private String url;
	
	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public int getSignal() {
		return signal;
	}

	public void setSignal(int signal) {
		this.signal = signal;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}



}
