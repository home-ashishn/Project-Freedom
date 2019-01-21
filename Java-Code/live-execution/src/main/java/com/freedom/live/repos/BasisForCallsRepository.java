package com.freedom.live.repos;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.BasisForCalls;

@Transactional
public interface BasisForCallsRepository extends CrudRepository<BasisForCalls, Long> {

/*	
	@Procedure(name = "call_live_data_execution_master")
	void callLiveDataExecutionMaster();

	@Procedure(name = "call_retry_error_orders")
	void callRetryErrorOrders(@Param("time_in") DateTime time_in, @Param("target_time_in") DateTime target_time_in);

*/
}
