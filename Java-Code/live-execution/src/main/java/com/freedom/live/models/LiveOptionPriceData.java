package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "live_option_price_data")
public class LiveOptionPriceData {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private DateTime curr_time;
	
	private String symbol;
	
	private String option_type = "";

	
	private float option_strike_price = 0;
	
	private long volume;
	
	private float last_price;
	
	private float high_price;
	
	private float bid_price_1;
	
	private float offer_price_1;
	
	private float bid_price_2;
	
	private float offer_price_2;
	
	private int bid_quantity_1;
	
	private int offer_quantity_1;

	private int bid_quantity_2;
	
	private int offer_quantity_2;
	
/*	private float open_price;

	private float low_price;*/

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

	public long getVolume() {
		return volume;
	}

	public void setVolume(long volume) {
		this.volume = volume;
	}

	public float getLast_price() {
		return last_price;
	}

	public void setLast_price(float last_price) {
		this.last_price = last_price;
	}

	public float getBid_price_1() {
		return bid_price_1;
	}

	public void setBid_price_1(float bid_price_1) {
		this.bid_price_1 = bid_price_1;
	}

	public float getOffer_price_1() {
		return offer_price_1;
	}

	public void setOffer_price_1(float offer_price_1) {
		this.offer_price_1 = offer_price_1;
	}

	public float getBid_price_2() {
		return bid_price_2;
	}

	public void setBid_price_2(float bid_price_2) {
		this.bid_price_2 = bid_price_2;
	}

	public float getOffer_price_2() {
		return offer_price_2;
	}

	public void setOffer_price_2(float offer_price_2) {
		this.offer_price_2 = offer_price_2;
	}

	public int getBid_quantity_1() {
		return bid_quantity_1;
	}

	public void setBid_quantity_1(int bid_quantity_1) {
		this.bid_quantity_1 = bid_quantity_1;
	}

	public int getOffer_quantity_1() {
		return offer_quantity_1;
	}

	public void setOffer_quantity_1(int offer_quantity_1) {
		this.offer_quantity_1 = offer_quantity_1;
	}

	public int getBid_quantity_2() {
		return bid_quantity_2;
	}

	public void setBid_quantity_2(int bid_quantity_2) {
		this.bid_quantity_2 = bid_quantity_2;
	}

	public int getOffer_quantity_2() {
		return offer_quantity_2;
	}

	public void setOffer_quantity_2(int offer_quantity_2) {
		this.offer_quantity_2 = offer_quantity_2;
	}

	public float getHigh_price() {
		return high_price;
	}

	public void setHigh_price(float high_price) {
		this.high_price = high_price;
	}


/*	public float getOpen_price() {
		return open_price;
	}

	public void setOpen_price(float open_price) {
		this.open_price = open_price;
	}

	public float getHigh_price() {
		return high_price;
	}

	public void setHigh_price(float high_price) {
		this.high_price = high_price;
	}

	public float getLow_price() {
		return low_price;
	}

	public void setLow_price(float low_price) {
		this.low_price = low_price;
	}

*/
	
}