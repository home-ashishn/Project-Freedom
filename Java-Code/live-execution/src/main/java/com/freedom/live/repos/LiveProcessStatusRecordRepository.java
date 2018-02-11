package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.LiveProcessStatusRecord;

@Transactional
public interface LiveProcessStatusRecordRepository extends CrudRepository<LiveProcessStatusRecord, Long> { 
	
	@Query("SELECT lsr FROM LiveProcessStatusRecord lsr "
			+ "where lsr.currTime = (select max(currTime) from LiveProcessStatusRecord "
			+ "where is_error_handled = 0)")
	LiveProcessStatusRecord findMaxRecord();

}
