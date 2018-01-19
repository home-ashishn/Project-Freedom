package com.freedom.live.models;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

@Transactional
public interface LiveOptionPriceDataRepository extends CrudRepository<LiveOptionPriceData, Long> { 
	
	

}
