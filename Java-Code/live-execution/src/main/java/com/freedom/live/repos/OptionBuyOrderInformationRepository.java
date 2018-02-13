package com.freedom.live.repos;


import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.OptionBuyOrderInformation;

@Transactional
public interface OptionBuyOrderInformationRepository extends CrudRepository<OptionBuyOrderInformation, Long> { 
	

}
