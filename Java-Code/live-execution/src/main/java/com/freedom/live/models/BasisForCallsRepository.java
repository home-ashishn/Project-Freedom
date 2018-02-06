package com.freedom.live.models;

import javax.transaction.Transactional;

import org.joda.time.DateTime;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

@Transactional
public interface BasisForCallsRepository extends CrudRepository<BasisForCalls, Long> {

	@Procedure(name = "call_live_data_execution_master")
	void callLiveDataExecutionMaster();

	@Procedure(name = "call_retry_error_orders")
	void callRetryErrorOrders(@Param("time_in") DateTime time_in, @Param("target_time_in") DateTime target_time_in);

}
