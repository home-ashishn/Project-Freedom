package com.freedom.live;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.joda.time.DateTime;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.OptionPosition;
import com.freedom.live.models.SelectedInstrument;
import com.freedom.live.repos.OptionPositionRepository;
import com.rainmatter.kiteconnect.KiteConnect;
import com.rainmatter.kitehttp.exceptions.KiteException;
import com.rainmatter.models.Position;

@Component
public class LivePositionSyncService {

	private KiteConnect kiteConnect;

	private Map<Long, SelectedInstrument> mapTokensToInstrument = new HashMap<Long, SelectedInstrument>();

	@Autowired
	private OptionPositionRepository optionPositionRepository;

	public void runSyncService() throws InterruptedException {

		while (true) {
			
			try
			{

			syncPositions();

			Thread.sleep(60000);
			
			}	
			catch(Exception e){
				
			}

		}

	}

	private void syncPositions() {

		Map<String, List<Position>> positions;
		try {
			positions = kiteConnect.getPositions();
			List<Position> positionList = positions.get("net");

			for (Position position : positionList) {

				OptionPosition optionPosition = convertToPositionRecord(position);

				if (optionPosition != null) {
					optionPositionRepository.save(optionPosition);
				}

			}
		} catch (JSONException | KiteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private OptionPosition convertToPositionRecord(Position position) {

		String tokenForPosition = position.instrumentToken;
		
		Long longToken = new Long(tokenForPosition);

		SelectedInstrument instrument = mapTokensToInstrument.get(longToken);

		if (instrument == null)

		{
			return null;
		}

		OptionPosition optionPosition = new OptionPosition();

		optionPosition.setSymbol(instrument.getSymbol());

		optionPosition.setOption_type(instrument.getOption_type());

		optionPosition.setOption_strike_price(instrument.getOption_strike_price());

		optionPosition.setBuy_price(position.buyPrice.floatValue());

		optionPosition.setBuy_quantity(position.buyQuantity);

		optionPosition.setTotal_buy_price(position.buyValue);

		optionPosition.setSell_price(position.sellPrice.floatValue());

		optionPosition.setSell_quantity(position.sellQuantity);
		
		optionPosition.setTotal_sell_price(position.sellValue);

		
		// optionPosition.setBuy_time(new DateTime());

		return optionPosition;
	}

	public Map<Long, SelectedInstrument> getMapTokensToInstrument() {
		return mapTokensToInstrument;
	}

	public void setMapTokensToInstrument(Map<Long, SelectedInstrument> mapTokensToInstrument) {
		this.mapTokensToInstrument = mapTokensToInstrument;
	}

	public KiteConnect getKiteConnect() {
		return kiteConnect;
	}

	public void setKiteConnect(KiteConnect kiteConnect) {
		this.kiteConnect = kiteConnect;
	}

}
