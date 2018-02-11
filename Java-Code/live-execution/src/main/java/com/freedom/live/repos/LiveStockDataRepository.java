package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.LiveStockData;

@Transactional
public interface LiveStockDataRepository extends CrudRepository<LiveStockData, Long> { 
	
	

}
