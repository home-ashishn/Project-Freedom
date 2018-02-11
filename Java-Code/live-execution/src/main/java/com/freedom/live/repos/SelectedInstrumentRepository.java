package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.SelectedInstrument;

@Transactional
public interface SelectedInstrumentRepository extends CrudRepository<SelectedInstrument, Long> { 
	
	

}
