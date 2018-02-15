package com.freedom.live.repos;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.OptionSellOrderEvent;

@Transactional
public interface OptionSellOrderEventRepository extends CrudRepository<OptionSellOrderEvent, Long> { 
	
	@Query("SELECT oboe FROM OptionSellOrderEvent oboe "
			+ "where oboe.event_type = "+"'NEW'"
			+ " and oboe.curr_time = (select max(curr_time) from OptionSellOrderEvent"
			+ ")")
	List<OptionSellOrderEvent> findNewOrderEvents();


	@Query("SELECT oboe FROM OptionSellOrderEvent oboe "
			+ "where oboe.event_type = "+"'MOD'"
			+ " and oboe.curr_time = (select max(curr_time) from OptionSellOrderEvent"
			+ ")")
	List<OptionSellOrderEvent> findModifyOrderEvents();
}
