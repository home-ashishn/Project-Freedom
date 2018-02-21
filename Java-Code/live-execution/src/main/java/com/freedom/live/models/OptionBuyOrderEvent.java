package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "option_buy_order_event")
@IdClass(OptionBuyOrderEventId.class)
public class OptionBuyOrderEvent {

	@Id
	private int order_id;

	private String symbol;	
	
	@Id
	private DateTime curr_time;

	private String option_type;

	private float option_strike_price;

	private float buy_price;

	private int no_of_lots;

	private int quantity;

	@Id
	private String event_type;

	private boolean is_event_handled;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public DateTime getCurr_time() {
		return curr_time;
	}

	public void setCurr_time(DateTime curr_time) {
		this.curr_time = curr_time;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getEvent_type() {
		return event_type;
	}

	public void setEvent_type(String event_type) {
		this.event_type = event_type;
	}

	public boolean isIs_event_handled() {
		return is_event_handled;
	}

	public void setIs_event_handled(boolean is_event_handled) {
		this.is_event_handled = is_event_handled;
	}

}
