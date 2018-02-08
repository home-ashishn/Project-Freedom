package com.freedom.live.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "live_process_status_record")
public class LiveProcessStatusRecord {
	


	@Id
	@Column(name="curr_time")
	private DateTime currTime;
	
	private String process_status;
	
	private boolean is_error_handled;

	public DateTime getCurr_time() {
		return currTime;
	}

	public void setCurr_time(DateTime curr_time) {
		this.currTime = curr_time;
	}

	public String getProcess_status() {
		return process_status;
	}

	public void setProcess_status(String process_status) {
		this.process_status = process_status;
	}

	public boolean isIs_error_handled() {
		return is_error_handled;
	}

	public void setIs_error_handled(boolean is_error_handled) {
		this.is_error_handled = is_error_handled;
	}


	


}
