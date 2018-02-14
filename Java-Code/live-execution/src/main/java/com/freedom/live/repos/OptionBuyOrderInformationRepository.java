package com.freedom.live.repos;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.freedom.live.models.OptionBuyOrderInformation;

@Transactional
public interface OptionBuyOrderInformationRepository extends CrudRepository<OptionBuyOrderInformation, Long> {

/*	
	@Query("SELECT oboe FROM OptionBuyOrderEvent oboe "
			+ "where oboe.event_type = "+"'NEW'"
			+ " and oboe.curr_time = (select max(curr_time) from OptionBuyOrderEvent"
			+ ")")
	
	String findOrderIdByCombination(String symbol, String optionType, String optionStrikePrice);
	
*/
}
