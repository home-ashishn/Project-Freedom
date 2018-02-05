package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "live_data")
public class LiveStockData {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private DateTime curr_time;
	
	private String symbol;
	
	private long volume;
	
	private float price;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public DateTime getCurr_time() {
		return curr_time;
	}

	public void setCurr_time(DateTime curr_time) {
		this.curr_time = curr_time;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public long getVolume() {
		return volume;
	}

	public void setVolume(long volume) {
		this.volume = volume;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	


}
