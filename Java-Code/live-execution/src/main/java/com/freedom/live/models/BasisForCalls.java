package com.freedom.live.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;

import org.joda.time.DateTime;

@Entity
@Table(name = "basis_for_calls")

@NamedStoredProcedureQueries({
		@NamedStoredProcedureQuery(name = "call_live_data_execution_master", procedureName = "engine_live.LIVE_DATA_EXECUTION_MASTER"),
		@NamedStoredProcedureQuery(name = "call_retry_error_orders", procedureName = "engine_live.RETRY_ERROR_ORDERS", parameters = {
				@StoredProcedureParameter(mode = ParameterMode.IN, name = "time_in", type = DateTime.class),
				@StoredProcedureParameter(mode = ParameterMode.IN, name = "target_time_in", type = DateTime.class) }) })
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
