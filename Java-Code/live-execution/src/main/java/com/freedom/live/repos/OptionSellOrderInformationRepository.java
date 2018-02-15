package com.freedom.live.repos;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.freedom.live.models.OptionSellOrderInformation;

@Transactional
public interface OptionSellOrderInformationRepository extends CrudRepository<OptionSellOrderInformation, Long> {


	
	@Query("SELECT osoi.order_id FROM OptionSellOrderInformation osoi where osoi.symbol = :title "
			+ "AND osoi.option_type = :optionType AND osoi.option_strike_price = :optionStrikePrice")
	public String findOrderIdByCombination(@Param("symbol") String symbol, @Param("optionType") String optionType,
			@Param("optionStrikePrice") String optionStrikePrice);

}
