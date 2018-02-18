package com.freedom.live.repos;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.OptionBuyOrderEvent;

@Transactional
public interface OptionBuyOrderEventRepository extends CrudRepository<OptionBuyOrderEvent, Long> { 
	
	@Query("SELECT oboe FROM OptionBuyOrderEvent oboe "
			+ "where oboe.event_type = "+"'NEW'"
			+ " and oboe.curr_time = (select max(curr_time) from OptionBuyOrderEvent)"
			)
	List<OptionBuyOrderEvent> findNewOrderEvents();


	@Query("SELECT oboe FROM OptionBuyOrderEvent oboe "
			+ "where oboe.event_type = "+"'MOD'"
			+ " and oboe.curr_time = (select max(curr_time) from OptionBuyOrderEvent)")
	List<OptionBuyOrderEvent> findModifyOrderEvents();
}
