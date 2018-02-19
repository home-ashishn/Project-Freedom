package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.OptionPosition;

@Transactional
public interface OptionPositionRepository extends CrudRepository<OptionPosition, Long> { 
	
	

}
