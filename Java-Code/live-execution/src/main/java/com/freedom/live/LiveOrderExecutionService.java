package com.freedom.live;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveProcessStatusRecord;
import com.freedom.live.models.OptionBuyOrderEvent;
import com.freedom.live.repos.LiveProcessStatusRecordRepository;
import com.freedom.live.repos.OptionBuyOrderEventRepository;

@Component
public class LiveOrderExecutionService {

	@Autowired
	LiveProcessStatusRecordRepository liveProcessStatusRecordRepository;
	
	@Autowired
	OptionBuyOrderEventRepository optionBuyOrderEventRepository;

	DateTime targetCycleTime = new DateTime();

	boolean isTargetCycleTimeDone = false;
	
	boolean isOrdersHandledProperly = false;

	
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
			
			if(difference < 0){
				
				Thread.sleep(-1 * difference);
			}
			
			LiveProcessStatusRecord lsrLast = 
					liveProcessStatusRecordRepository.findMaxRecord();
			
			DateTime maxRecordTime = lsrLast.getCurr_time();
			
			// order time deviation assumed to be 5 seconds max
			
			// if (maxRecordTime.isAfter(targetCycleTime.minusSeconds(5))) 
			{
				
				makeOrderCallables(executor);
				
				Thread.sleep(4000);
				
				makeOrderCallables(executor);
				
				Thread.sleep(4000);
				
				makeOrderCallables(executor);				

				lsrLast.setIs_orders_handled(isOrdersHandledProperly);
					
				liveProcessStatusRecordRepository.save(lsrLast);				
				
				isTargetCycleTimeDone = false;
				
			}
		}

	}

	private void makeOrderCallables(ThreadPoolExecutor executor) {
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
		
		placeNewBuyOrders();

		placeBuyOrdersModification();

	}





	private void placeNewBuyOrders() {

		List<OptionBuyOrderEvent> listNew = optionBuyOrderEventRepository.findNewOrderEvents();
		
		for (Iterator iterator = listNew.iterator(); iterator.hasNext();) {
			
			OptionBuyOrderEvent optionBuyOrderEvent = (OptionBuyOrderEvent) iterator.next();
			if(!optionBuyOrderEvent.isIs_event_handled()){
				
				optionBuyOrderEvent.setIs_event_handled(true);
			}

		
		}
		
		optionBuyOrderEventRepository.save(listNew);

	}
	
	private void placeBuyOrdersModification() {
		
	}

	private void placeSellOrders() {
		
		placeNewSellOrders();

		placeSellOrdersModification();
		
	}


	private void placeNewSellOrders() {
		// TODO Auto-generated method stub
		
	}

	private void placeSellOrdersModification() {
		// TODO Auto-generated method stub
		
	}


}
