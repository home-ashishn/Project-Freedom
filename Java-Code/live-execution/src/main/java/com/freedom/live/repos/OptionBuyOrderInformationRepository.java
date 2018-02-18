package com.freedom.live.repos;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.freedom.live.models.OptionBuyOrderInformation;

@Transactional
public interface OptionBuyOrderInformationRepository extends CrudRepository<OptionBuyOrderInformation, Long> {


	
	@Query("SELECT oboi.order_id FROM OptionBuyOrderInformation oboi where oboi.symbol = :symbol "
			+ "AND oboi.option_type = :optionType AND oboi.option_strike_price = :optionStrikePrice")
	public String findOrderIdByCombination(@Param("symbol") String symbol, @Param("optionType") String optionType,
			@Param("optionStrikePrice") float optionStrikePrice);

}
