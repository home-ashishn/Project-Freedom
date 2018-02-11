package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.LiveOptionPriceData;

@Transactional
public interface LiveOptionPriceDataRepository extends CrudRepository<LiveOptionPriceData, Long> { 
	
	

}
