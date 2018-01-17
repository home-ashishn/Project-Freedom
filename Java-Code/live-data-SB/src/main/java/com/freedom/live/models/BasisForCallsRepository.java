package com.freedom.live.models;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

@Transactional
public interface BasisForCallsRepository extends CrudRepository<BasisForCalls, Long> { 
	
	

}
