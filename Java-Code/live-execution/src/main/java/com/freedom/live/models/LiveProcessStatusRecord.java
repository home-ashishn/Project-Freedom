package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "live_process_status_record")
public class LiveProcessStatusRecord {
	


	@Id
	private DateTime curr_time;
	
	private String status;
	

	public DateTime getCurr_time() {
		return curr_time;
	}

	public void setCurr_time(DateTime curr_time) {
		this.curr_time = curr_time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	


}
