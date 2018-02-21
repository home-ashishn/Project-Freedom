package com.freedom.live.models;

import java.io.Serializable;

import org.joda.time.DateTime;

public class OptionBuyOrderEventId implements Serializable{
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int order_id;

	private DateTime curr_time;
	
	private String event_type;


	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public DateTime getCurr_time() {
		return curr_time;
	}

	public void setCurr_time(DateTime curr_time) {
		this.curr_time = curr_time;
	}

	public String getEvent_type() {
		return event_type;
	}

	public void setEvent_type(String event_type) {
		this.event_type = event_type;
	}

}
