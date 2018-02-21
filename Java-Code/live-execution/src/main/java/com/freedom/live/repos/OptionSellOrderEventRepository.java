package com.freedom.live.repos;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.freedom.live.models.OptionSellOrderEvent;

@Transactional
public interface OptionSellOrderEventRepository extends CrudRepository<OptionSellOrderEvent, Long> { 
	
	@Query("SELECT osoe FROM OptionSellOrderEvent osoe "
			+ "where osoe.event_type = "+"'NEW'"
			// + " and osoe.curr_time = (select max(curr_time) from OptionSellOrderEvent)"
			)
	List<OptionSellOrderEvent> findNewOrderEvents();


	@Query("SELECT osoe FROM OptionSellOrderEvent osoe "
			+ "where osoe.event_type = "+"'MOD'"
			// + " and osoe.curr_time = (select max(curr_time) from OptionSellOrderEvent)"
			)
	List<OptionSellOrderEvent> findModifyOrderEvents();
	
	@Query("SELECT osoe FROM OptionSellOrderEvent osoe "
			+ "where osoe.event_type = "+"'CANCL'"
			// + " and osoe.curr_time = (select max(curr_time) from OptionSellOrderEvent)"
			)
	List<OptionSellOrderEvent> findCancelOrderEvents();
}
