package com.freedom.live.models;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

@Transactional
public interface LiveProcessStatusRecordRepository extends CrudRepository<LiveProcessStatusRecord, Long> { 
	
	LiveProcessStatusRecord findTopByCurr_time();

}
