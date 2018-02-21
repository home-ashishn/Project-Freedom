package com.freedom.live.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "option_position")
@IdClass(OptionPositiontId.class)
public class OptionPosition{

	@Id
	private String symbol;	
	
	@Id
	private String option_type;

	@Id
	private float option_strike_price;
	
	private float buy_price;

	private int no_of_lots;

	private int buy_quantity;
	
	private String exchange_order_id;

	private int sell_quantity;
		
	private double total_buy_price;
	
	private float sell_price;

	private double total_sell_price;

	private DateTime buy_time;

	private DateTime sell_time;


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

	public float getBuy_price() {
		return buy_price;
	}

	public void setBuy_price(float buy_price) {
		this.buy_price = buy_price;
	}

	public int getNo_of_lots() {
		return no_of_lots;
	}

	public void setNo_of_lots(int no_of_lots) {
		this.no_of_lots = no_of_lots;
	}


	public String getExchange_order_id() {
		return exchange_order_id;
	}

	public void setExchange_order_id(String exchange_order_id) {
		this.exchange_order_id = exchange_order_id;
	}



	public double getTotal_buy_price() {
		return total_buy_price;
	}

	public void setTotal_buy_price(double total_buy_price) {
		this.total_buy_price = total_buy_price;
	}

	public float getSell_price() {
		return sell_price;
	}

	public void setSell_price(float sell_price) {
		this.sell_price = sell_price;
	}

	public double getTotal_sell_price() {
		return total_sell_price;
	}

	public void setTotal_sell_price(double total_sell_price) {
		this.total_sell_price = total_sell_price;
	}

	public DateTime getBuy_time() {
		return buy_time;
	}

	public void setBuy_time(DateTime buy_time) {
		this.buy_time = buy_time;
	}

	public DateTime getSell_time() {
		return sell_time;
	}

	public void setSell_time(DateTime sell_time) {
		this.sell_time = sell_time;
	}

	public int getBuy_quantity() {
		return buy_quantity;
	}

	public void setBuy_quantity(int buy_quantity) {
		this.buy_quantity = buy_quantity;
	}

	public int getSell_quantity() {
		return sell_quantity;
	}

	public void setSell_quantity(int sell_quantity) {
		this.sell_quantity = sell_quantity;
	}

}