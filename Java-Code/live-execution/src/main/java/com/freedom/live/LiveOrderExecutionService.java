package com.freedom.live;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveProcessStatusRecord;
import com.freedom.live.models.OptionBuyOrderEvent;
import com.freedom.live.models.OptionBuyOrderInformation;
import com.freedom.live.repos.LiveProcessStatusRecordRepository;
import com.freedom.live.repos.OptionBuyOrderEventRepository;
import com.freedom.live.repos.OptionBuyOrderInformationRepository;
import com.rainmatter.kiteconnect.KiteConnect;
import com.rainmatter.kitehttp.exceptions.KiteException;
import com.rainmatter.models.Order;

@Component
public class LiveOrderExecutionService {

	@Autowired
	LiveProcessStatusRecordRepository liveProcessStatusRecordRepository;

	@Autowired
	OptionBuyOrderEventRepository optionBuyOrderEventRepository;
	
	@Autowired
	OptionBuyOrderInformationRepository optionBuyOrderInformationRepository;

	DateTime targetCycleTime = new DateTime();

	boolean isTargetCycleTimeDone = false;

	boolean isBuyOrdersHandledProperly = false;
	
	boolean isSellOrdersHandledProperly = false;


	private KiteConnect kiteConnect;

	private Map<String, String> mapInstrumentToTradingSymbol = new HashMap<String, String>();

	public void runOrderService() throws InterruptedException {

		ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 10, 0L, TimeUnit.MILLISECONDS,
				new LinkedBlockingQueue<Runnable>());

		while (true) {

			/*
			 * DateTime currentTime = new DateTime();
			 * 
			 * long difference = currentTime.getMillis() -
			 * targetCycleTime.getMillis();
			 * 
			 * if(difference <= 15000){ return; }
			 * 
			 * targetCycleTime = currentTime;
			 */

			if (executor.getQueue().size() > 0) {
				continue;
			}

			if (!isTargetCycleTimeDone) {

				Callable<?> callableTCT = new Callable<Object>() {
					public String call() throws Exception {
						calculateTargetCycleTime();
						return "";
					}

				};

				executor.submit(callableTCT);

			}

			DateTime currentTime = new DateTime();

			long difference = currentTime.getMillis() - targetCycleTime.getMillis();

			if (difference < 0) {

				Thread.sleep(-1 * difference);
			}

			LiveProcessStatusRecord lsrLast = liveProcessStatusRecordRepository.findMaxRecord();

			DateTime maxRecordTime = lsrLast.getCurr_time();

			// order time deviation assumed to be 5 seconds max

			if (maxRecordTime.isAfter(targetCycleTime.minusSeconds(5)))
			{

				isBuyOrdersHandledProperly = false;
				
				isSellOrdersHandledProperly = false;
				
				makeOrderCallables(executor);

				Thread.sleep(8000);

				makeOrderCallables(executor);

				Thread.sleep(8000);

				makeOrderCallables(executor);

				// liveProcessStatusRecordRepository.save(lsrLast);

				isTargetCycleTimeDone = false;

			}
		}

	}

	private void makeOrderCallables(ThreadPoolExecutor executor) {
		
		LiveProcessStatusRecord lsrLast = liveProcessStatusRecordRepository.findMaxRecord();

		if(lsrLast.isIs_orders_handled())
		{
			return;
		}
		else if(isBuyOrdersHandledProperly && isSellOrdersHandledProperly){
			
			lsrLast.setIs_orders_handled(true);
			liveProcessStatusRecordRepository.save(lsrLast);
			return;
		}
		
		Callable<?> callableBOE = new Callable<Object>() {
			public String call() throws Exception {
				placeBuyOrders();
				return "";
			}

		};
		executor.submit(callableBOE);

		Callable<?> callableSOE = new Callable<Object>() {
			public String call() throws Exception {
				placeSellOrders();
				return "";
			}
		};
		executor.submit(callableSOE);
	}

	private void calculateTargetCycleTime() {

		LiveProcessStatusRecord lsrLast = liveProcessStatusRecordRepository.findMaxRecord();

		targetCycleTime = lsrLast.getCurr_time().plusMinutes(1);

		isTargetCycleTimeDone = true;

	}

	private void placeBuyOrders() {
		
		isBuyOrdersHandledProperly = true;

		placeNewBuyOrders();

		// placeBuyOrdersModification();

	}

	private void placeNewBuyOrders() {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findNewOrderEvents();

		for (Iterator iterator = listNew.iterator(); iterator.hasNext();) {

			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();
			if (!optionBuyOrderEvent.isIs_event_handled()) {

				placeNewBuyOrder(optionBuyOrderEvent);

				optionBuyOrderEvent.setIs_event_handled(true);
			}

		}

		optionBuyOrderEventRepository.save(listNew);
		

	}

	private void placeNewBuyOrder(OptionBuyOrderEvent optionBuyOrderEvent) {

		String tradingSymbolKey = optionBuyOrderEvent.getSymbol() + optionBuyOrderEvent.getOption_type()
				+ optionBuyOrderEvent.getOption_strike_price();

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);

		Map<String, Object> param11 = new HashMap<String, Object>() {
			{
				put("price", "" + optionBuyOrderEvent.getBuy_price());
				put("transaction_type", "BUY");
				put("quantity", "" + optionBuyOrderEvent.getQuantity());
				put("tradingsymbol", tradingSymbol);
				put("exchange", "NFO");
				put("validity", "DAY");
				put("order_type", "LIMIT");
				put("product", "MIS");
			}
		};

		Order order11 = null;
		try {
			order11 = kiteConnect.placeOrder(param11, "regular");
		} catch (JSONException | KiteException e) {

			isBuyOrdersHandledProperly = false;
			e.printStackTrace();
		}
		if (order11 != null) {
			
			OptionBuyOrderInformation newOrder = new OptionBuyOrderInformation();
			
			newOrder.setOrder_id(order11.orderId);
			newOrder.setSymbol(optionBuyOrderEvent.getSymbol());
			newOrder.setOption_type(optionBuyOrderEvent.getOption_type());
			newOrder.setOption_strike_price(optionBuyOrderEvent.getOption_strike_price());

			optionBuyOrderInformationRepository.save(newOrder);
			
			System.out.println(" New Order placed for " + optionBuyOrderEvent.getSymbol() + " "
					+ optionBuyOrderEvent.getOption_type() + " " + optionBuyOrderEvent.getOption_strike_price()
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeBuyOrdersModification() {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findModifyOrderEvents();

		for (Iterator iterator = listNew.iterator(); iterator.hasNext();) {

			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();
			if (!optionBuyOrderEvent.isIs_event_handled()) {

				placeModifyBuyOrder(optionBuyOrderEvent);

				optionBuyOrderEvent.setIs_event_handled(true);
			}

		}

		optionBuyOrderEventRepository.save(listNew);
		

	}
	
	

	private void placeModifyBuyOrder(OptionBuyOrderEvent optionBuyOrderEvent) {

		String tradingSymbolKey = optionBuyOrderEvent.getSymbol() + optionBuyOrderEvent.getOption_type()
				+ optionBuyOrderEvent.getOption_strike_price();

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);

		Map<String, Object> param11 = new HashMap<String, Object>() {
			{
				put("price", "" + optionBuyOrderEvent.getBuy_price());
				put("transaction_type", "BUY");
				put("quantity", "" + optionBuyOrderEvent.getQuantity());
				put("tradingsymbol", tradingSymbol);
				put("exchange", "NFO");
				put("validity", "DAY");
				put("order_type", "LIMIT");
				put("product", "MIS");				
			}
		};
		
		

		Order order11 = null;
		try {
			order11 = kiteConnect.modifyOrder("",param11, "regular");
		} catch (JSONException | KiteException e) {

			isBuyOrdersHandledProperly = false;
			e.printStackTrace();
		}
		if (order11 != null) {
			
			OptionBuyOrderInformation newOrder = new OptionBuyOrderInformation();
			
			newOrder.setOrder_id(order11.orderId);
			newOrder.setSymbol(optionBuyOrderEvent.getSymbol());
			newOrder.setOption_type(optionBuyOrderEvent.getOption_type());
			newOrder.setOption_strike_price(optionBuyOrderEvent.getOption_strike_price());

			optionBuyOrderInformationRepository.save(newOrder);
			
			System.out.println(" New Order placed for " + optionBuyOrderEvent.getSymbol() + " "
					+ optionBuyOrderEvent.getOption_type() + " " + optionBuyOrderEvent.getOption_strike_price()
					+ ", order id = " + order11.orderId);
		}

	}

	

	private void placeSellOrders() {

		placeNewSellOrders();

		placeSellOrdersModification();

	}

	private void placeNewSellOrders() {
		// TODO Auto-generated method stub
		
		
		
		
		isSellOrdersHandledProperly = true;
	}

	private void placeSellOrdersModification() {
		// TODO Auto-generated method stub

	}

	public Map<String, String> getMapInstrumentToTradingSymbol() {
		return mapInstrumentToTradingSymbol;
	}

	public void setMapInstrumentToTradingSymbol(Map<String, String> mapInstrumentToTradingSymbol) {
		this.mapInstrumentToTradingSymbol = mapInstrumentToTradingSymbol;
	}

	public KiteConnect getKiteConnect() {
		return kiteConnect;
	}

	public void setKiteConnect(KiteConnect kiteConnect) {
		this.kiteConnect = kiteConnect;
	}

}
