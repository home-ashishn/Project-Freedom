package com.freedom.live;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveProcessStatusRecord;
import com.freedom.live.models.OptionBuyOrderEvent;
import com.freedom.live.models.OptionBuyOrderInformation;
import com.freedom.live.models.OptionSellOrderEvent;
import com.freedom.live.models.OptionSellOrderInformation;
import com.freedom.live.repos.LiveProcessStatusRecordRepository;
import com.freedom.live.repos.OptionBuyOrderEventRepository;
import com.freedom.live.repos.OptionBuyOrderInformationRepository;
import com.freedom.live.repos.OptionSellOrderEventRepository;
import com.freedom.live.repos.OptionSellOrderInformationRepository;
import com.zerodhatech.kiteconnect.KiteConnect;
import com.zerodhatech.kiteconnect.kitehttp.exceptions.KiteException;
import com.zerodhatech.kiteconnect.utils.Constants;
import com.zerodhatech.models.Order;
import com.zerodhatech.models.OrderParams;

@Component
public class LiveOrderExecutionService {

	@Autowired
	LiveProcessStatusRecordRepository liveProcessStatusRecordRepository;

	@Autowired
	OptionBuyOrderEventRepository optionBuyOrderEventRepository;

	@Autowired
	OptionBuyOrderInformationRepository optionBuyOrderInformationRepository;

	@Autowired
	OptionSellOrderEventRepository optionSellOrderEventRepository;

	@Autowired
	OptionSellOrderInformationRepository optionSellOrderInformationRepository;

	DateTime targetCycleTime = getCurrenTime();

	boolean isTargetCycleTimeDone = false;

	boolean isBuyOrdersHandledProperly = false;

	boolean isSellOrdersHandledProperly = false;

	private KiteConnect kiteConnect;

	private Map<String, String> mapInstrumentToTradingSymbol = new HashMap<String, String>();

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

	public void runOrderService() throws InterruptedException {

		ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 10, 0L, TimeUnit.MILLISECONDS,
				new LinkedBlockingQueue<Runnable>());

		while (true) {
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

			DateTime currentTime = getCurrenTime();

			long difference = currentTime.getMillis() - targetCycleTime.getMillis();

			if (difference < 0) {

				Thread.sleep(-1 * difference);
			}

			LiveProcessStatusRecord lsrLast = liveProcessStatusRecordRepository.findMaxRecord();

			DateTime maxRecordTime = lsrLast.getCurr_time();

			// order time deviation assumed to be 5 seconds max

			if (maxRecordTime.isAfter(targetCycleTime.minusSeconds(5))) {

				isBuyOrdersHandledProperly = false;

				isSellOrdersHandledProperly = false;

				sop(" 1st call to makeOrderCallables at " + getCurrenTime());

				makeOrderCallables(executor);

				Thread.sleep(8000);

				sop(" 2nd call to makeOrderCallables at " + getCurrenTime());

				makeOrderCallables(executor);

				Thread.sleep(8000);

				sop(" 3rd call to makeOrderCallables at " + getCurrenTime());

				makeOrderCallables(executor);

				Thread.sleep(5000);

				isTargetCycleTimeDone = false;

			}
		}

	}

	private void makeOrderCallables(ThreadPoolExecutor executor) {

		LiveProcessStatusRecord lsrLast = liveProcessStatusRecordRepository.findMaxRecord();

		if (lsrLast.isIs_orders_handled()) {
			return;
		} else if (isBuyOrdersHandledProperly && isSellOrdersHandledProperly) {

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

	private void placeBuyOrders() throws IOException {

		isBuyOrdersHandledProperly = true;

		placeNewBuyOrders();

		placeBuyOrdersModification();

		placeBuyOrdersCancellation();

	}

	private void placeNewBuyOrders() throws IOException {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findNewOrderEvents();

		for (Iterator<OptionBuyOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();

			if (!optionBuyOrderEvent.isIs_event_handled()) {

				placeNewBuyOrder(optionBuyOrderEvent);

				optionBuyOrderEvent.setIs_event_handled(true);
			}

		}

		optionBuyOrderEventRepository.save(listNew);

	}

	private void placeNewBuyOrder(OptionBuyOrderEvent optionBuyOrderEvent) throws IOException {

		String symbol = optionBuyOrderEvent.getSymbol();
		String optionType = optionBuyOrderEvent.getOption_type();
		float optionStrikePrice = optionBuyOrderEvent.getOption_strike_price();

		String orderId = optionBuyOrderInformationRepository.findOrderIdByCombination(symbol, optionType,
				optionStrikePrice);

		if (orderId != null && !"".equals(orderId)) {
			return;
		}

		String tradingSymbolKey = symbol + optionType + optionStrikePrice;

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);


		
		   OrderParams orderParams = new OrderParams();
		   orderParams.quantity = optionBuyOrderEvent.getQuantity();
		   orderParams.orderType = Constants.ORDER_TYPE_LIMIT;
		   orderParams.tradingsymbol = tradingSymbol;
		   orderParams.product = Constants.PRODUCT_NRML;
		   orderParams.exchange = Constants.EXCHANGE_NFO;
		   orderParams.transactionType = Constants.TRANSACTION_TYPE_BUY;
		   orderParams.validity = Constants.VALIDITY_DAY;
		   orderParams.price = (double) optionBuyOrderEvent.getBuy_price();

		Order order11 = null;
		try {
			order11 = kiteConnect.placeOrder(orderParams, "regular");
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

			System.out.println(" New Buy Order placed for " + optionBuyOrderEvent.getSymbol() + " "
					+ optionBuyOrderEvent.getOption_type() + " " + optionBuyOrderEvent.getOption_strike_price()
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeBuyOrdersModification() {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findModifyOrderEvents();

		for (Iterator<OptionBuyOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();
			if (!optionBuyOrderEvent.isIs_event_handled()) {

				try {
					placeModifyBuyOrder(optionBuyOrderEvent);
					optionBuyOrderEvent.setIs_event_handled(true);

				} catch (Exception e) {

				}

			}

		}

		optionBuyOrderEventRepository.save(listNew);

	}

	private void placeBuyOrdersCancellation() throws IOException {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findCancelOrderEvents();

		for (Iterator<OptionBuyOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();
			if (!optionBuyOrderEvent.isIs_event_handled()) {

				placeCancelBuyOrder(optionBuyOrderEvent);

				optionBuyOrderEvent.setIs_event_handled(true);
			}

		}

		optionBuyOrderEventRepository.save(listNew);

	}

	private void placeModifyBuyOrder(OptionBuyOrderEvent optionBuyOrderEvent) {

		String symbol = optionBuyOrderEvent.getSymbol();
		String optionType = optionBuyOrderEvent.getOption_type();
		float optionStrikePrice = optionBuyOrderEvent.getOption_strike_price();

		String tradingSymbolKey = symbol + optionType + optionStrikePrice;

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);


		
		   OrderParams orderParams = new OrderParams();
		   orderParams.quantity = optionBuyOrderEvent.getQuantity();
		   orderParams.orderType = Constants.ORDER_TYPE_LIMIT;
		   orderParams.tradingsymbol = tradingSymbol;
		   orderParams.product = Constants.PRODUCT_NRML;
		   orderParams.exchange = Constants.EXCHANGE_NFO;
		   orderParams.transactionType = Constants.TRANSACTION_TYPE_BUY;
		   orderParams.validity = Constants.VALIDITY_DAY;
		   orderParams.price = (double) optionBuyOrderEvent.getBuy_price();

		String orderId = "";

		orderId = optionBuyOrderInformationRepository.findOrderIdByCombination(symbol, optionType, optionStrikePrice);

		Order order11 = null;
		try {
			if (orderId != null) {
				order11 = kiteConnect.modifyOrder(orderId, orderParams, "regular");
			}
		} catch (Exception e) {

			isBuyOrdersHandledProperly = false;
			e.printStackTrace();
		} catch (KiteException e) {
			isBuyOrdersHandledProperly = false;
			e.printStackTrace();
		}
		if (order11 != null) {

			System.out.println(" Modify Buy Order placed for " + symbol + " " + optionType + " " + optionStrikePrice
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeCancelBuyOrder(OptionBuyOrderEvent optionBuyOrderEvent) throws IOException {

		String symbol = optionBuyOrderEvent.getSymbol();
		String optionType = optionBuyOrderEvent.getOption_type();
		float optionStrikePrice = optionBuyOrderEvent.getOption_strike_price();

		String orderId = "";

		orderId = optionBuyOrderInformationRepository.findOrderIdByCombination(symbol, optionType, optionStrikePrice);

		Order order11 = null;
		try {
			order11 = kiteConnect.cancelOrder(orderId, "regular");
		} catch (JSONException | KiteException e) {

			isBuyOrdersHandledProperly = false;
			e.printStackTrace();
		}
		if (order11 != null) {

			System.out.println(" Cancel Buy Order placed for " + symbol + " " + optionType + " " + optionStrikePrice
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeSellOrders() throws IOException {

		isSellOrdersHandledProperly = true;

		placeNewSellOrders();

		placeSellOrdersModification();

		placeSellOrdersCancellation();

	}

	private void placeNewSellOrders() throws IOException {

		List<OptionSellOrderEvent> listNew = optionSellOrderEventRepository.findNewOrderEvents();

		for (Iterator<OptionSellOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionSellOrderEvent optionSellOrderEvent = (OptionSellOrderEvent) iterator.next();
			if (!optionSellOrderEvent.isIs_event_handled()) {

				placeNewSellOrder(optionSellOrderEvent);

				optionSellOrderEvent.setIs_event_handled(true);
			}

		}

		optionSellOrderEventRepository.save(listNew);

	}

	private void placeNewSellOrder(OptionSellOrderEvent optionSellOrderEvent) throws IOException {

		String symbol = optionSellOrderEvent.getSymbol();
		String optionType = optionSellOrderEvent.getOption_type();
		float optionStrikePrice = optionSellOrderEvent.getOption_strike_price();

		String orderId = optionSellOrderInformationRepository.findOrderIdByCombination(symbol, optionType,
				optionStrikePrice);

		if (orderId != null && !"".equals(orderId)) {
			return;
		}

		String tradingSymbolKey = symbol + optionType + optionStrikePrice;

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);


		
		   OrderParams orderParams = new OrderParams();
		   orderParams.quantity = optionSellOrderEvent.getQuantity();
		   orderParams.orderType = Constants.ORDER_TYPE_LIMIT;
		   orderParams.tradingsymbol = tradingSymbol;
		   orderParams.product = Constants.PRODUCT_NRML;
		   orderParams.exchange = Constants.EXCHANGE_NFO;
		   orderParams.transactionType = Constants.TRANSACTION_TYPE_SELL;
		   orderParams.validity = Constants.VALIDITY_DAY;
		   orderParams.price = (double) optionSellOrderEvent.getSell_price();
		

		Order order11 = null;
		try {
			order11 = kiteConnect.placeOrder(orderParams, "regular");
		} catch (JSONException | KiteException e) {

			isSellOrdersHandledProperly = false;
			e.printStackTrace();
		}
		if (order11 != null) {

			OptionSellOrderInformation newOrder = new OptionSellOrderInformation();

			newOrder.setOrder_id(order11.orderId);
			newOrder.setSymbol(optionSellOrderEvent.getSymbol());
			newOrder.setOption_type(optionSellOrderEvent.getOption_type());
			newOrder.setOption_strike_price(optionSellOrderEvent.getOption_strike_price());

			optionSellOrderInformationRepository.save(newOrder);

			System.out.println(" New Sell Order placed for " + optionSellOrderEvent.getSymbol() + " "
					+ optionSellOrderEvent.getOption_type() + " " + optionSellOrderEvent.getOption_strike_price()
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeSellOrdersModification() throws IOException {

		List<OptionSellOrderEvent> listNew = optionSellOrderEventRepository.findModifyOrderEvents();

		for (Iterator<OptionSellOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionSellOrderEvent optionSellOrderEvent = (OptionSellOrderEvent) iterator.next();
			if (!optionSellOrderEvent.isIs_event_handled()) {

				placeModifySellOrder(optionSellOrderEvent);

				optionSellOrderEvent.setIs_event_handled(true);
			}

		}

		optionSellOrderEventRepository.save(listNew);

	}

	private void placeSellOrdersCancellation() throws IOException {

		List<OptionSellOrderEvent> listNew = optionSellOrderEventRepository.findCancelOrderEvents();

		for (Iterator<OptionSellOrderEvent> iterator = listNew.iterator(); iterator.hasNext();) {

			OptionSellOrderEvent optionSellOrderEvent = (OptionSellOrderEvent) iterator.next();
			if (!optionSellOrderEvent.isIs_event_handled()) {

				placeCancelSellOrder(optionSellOrderEvent);

				optionSellOrderEvent.setIs_event_handled(true);
			}

		}

		optionSellOrderEventRepository.save(listNew);

	}

	private void placeModifySellOrder(OptionSellOrderEvent optionSellOrderEvent) throws IOException {

		String symbol = optionSellOrderEvent.getSymbol();
		String optionType = optionSellOrderEvent.getOption_type();
		float optionStrikePrice = optionSellOrderEvent.getOption_strike_price();

		String tradingSymbolKey = symbol + optionType + optionStrikePrice;

		String tradingSymbol = mapInstrumentToTradingSymbol.get(tradingSymbolKey);


		
		   OrderParams orderParams = new OrderParams();
		   orderParams.quantity = optionSellOrderEvent.getQuantity();
		   orderParams.orderType = Constants.ORDER_TYPE_LIMIT;
		   orderParams.tradingsymbol = tradingSymbol;
		   orderParams.product = Constants.PRODUCT_NRML;
		   orderParams.exchange = Constants.EXCHANGE_NFO;
		   orderParams.transactionType = Constants.TRANSACTION_TYPE_SELL;
		   orderParams.validity = Constants.VALIDITY_DAY;
		   orderParams.price = (double) optionSellOrderEvent.getSell_price();		

		String orderId = "";

		orderId = optionSellOrderInformationRepository.findOrderIdByCombination(symbol, optionType, optionStrikePrice);

		Order order11 = null;
		try {
			if (orderId != null) {
				order11 = kiteConnect.modifyOrder(orderId, orderParams, "regular");
			}
		} catch (JSONException | KiteException e) {

			isSellOrdersHandledProperly = false;
			e.printStackTrace();
		}

		if (order11 != null) {

			System.out.println(" Modify Sell Order placed for " + symbol + " " + optionType + " " + optionStrikePrice
					+ ", order id = " + order11.orderId);
		}

	}

	private void placeCancelSellOrder(OptionSellOrderEvent optionSellOrderEvent) throws IOException {

		String symbol = optionSellOrderEvent.getSymbol();
		String optionType = optionSellOrderEvent.getOption_type();
		float optionStrikePrice = optionSellOrderEvent.getOption_strike_price();

		String orderId = "";

		orderId = optionSellOrderInformationRepository.findOrderIdByCombination(symbol, optionType, optionStrikePrice);

		Order order11 = null;
		try {
			order11 = kiteConnect.cancelOrder(orderId, "regular");
		} catch (JSONException | KiteException e) {

			isSellOrdersHandledProperly = false;
			e.printStackTrace();
		}

		if (order11 != null) {

			System.out.println(" Cancel Sell Order placed for " + symbol + " " + optionType + " " + optionStrikePrice
					+ ", order id = " + order11.orderId);
		}

	}

	
private DateTime getCurrenTime() {
	
	DateTime currentTime = DateTime.now();

	/*
	 * System.out.
	 * println(" LiveStockPriceExtractor - 444444 555555555 , currentTime zone = "
	 * +currentTime.getZone());
	 * 
	 * System.out.println("LiveStockPriceExtractor - 444444 555555555 for "
	 * +currentTime.getZone() +", currentTime = "+currentTime);
	 */

	if (!((currentTime.getZone().equals(DateTimeZone.forID("Asia/Kolkata")))

			|| (currentTime.getZone().equals(DateTimeZone.forID("Asia/Colombo")))

	)) {
		currentTime = currentTime.plusHours(5);

		currentTime = currentTime.plusMinutes(30);
	}

	System.out.println("LiveOrderExecutionService - 77777 88888888 for IST, currentTime = " + currentTime);
	
	return currentTime;
}
	private void sop(String text) {

		System.out.println(text);
	}

}
