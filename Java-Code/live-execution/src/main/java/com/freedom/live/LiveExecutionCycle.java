package com.freedom.live;

import java.util.Calendar;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.BasisForCallsRepository;
import com.freedom.live.models.LiveProcessStatusRecord;
import com.freedom.live.models.LiveProcessStatusRecordRepository;

@Component
public class LiveExecutionCycle {

	@Autowired
	private BasisForCallsRepository basisForCallsRepository;

	@Autowired
	private LiveProcessStatusRecordRepository liveProcessStatusRecordRepository;

	private DateTime lastStatusCheck = new DateTime();

	private boolean isLiveExecutionMasterON = false;

	public void startExecutionMaster() {

		ThreadPoolExecutor executor = new ThreadPoolExecutor(7, 14, 0L, TimeUnit.MILLISECONDS,
				new LinkedBlockingQueue<Runnable>());

		while (true) {

			if (!isLiveExecutionMasterON) {
				Callable<?> callableLEM = new Callable<Object>() {
					public String call() throws Exception {
						callLiveDataExecutionMaster();
						return "";
					}
				};
				executor.submit(callableLEM);

			}

			if (executor.getQueue().size() > 3) {
				continue;
			}

			Callable<?> callableLEM = new Callable<Object>() {
				public String call() throws Exception {
					liveStatusCheck();
					return "";
				}
			};

			executor.submit(callableLEM);

		}

	}

	private void callLiveDataExecutionMaster() {

		isLiveExecutionMasterON = true;
		basisForCallsRepository.callLiveDataExecutionMaster();

	}
	
	
	private void callRetryErrorOrders(DateTime time_in) {

		basisForCallsRepository.callRetryErrorOrders(time_in, new DateTime());

	}

	private void liveStatusCheck() {

		Calendar cal = Calendar.getInstance();

		cal.add(Calendar.MINUTE, -1);

		// DateTime oneMinuteBack = new DateTime(cal.getTimeInMillis());

		if (lastStatusCheck.isBefore(cal.getTimeInMillis())) {
			// Write here logic to get Last\ loop record time and get data for
			// one minute

			getLastLoopStatus();

			basisForCallsRepository.callRetryErrorOrders(null, new DateTime());

			lastStatusCheck = new DateTime();

		}
	}

	private void getLastLoopStatus() {

		LiveProcessStatusRecord record = liveProcessStatusRecordRepository.findTopByCurr_time();

		String status = record.getStatus();

		if (status == null) {
			return;
		}

		switch (status) {

		case "SUCCESS":

		{
			return;
		}

		case "ERRORD":

		{
			getLatestOptionData();
			callRetryErrorOrders(record.getCurr_time());
		}

		case "FAILED":

		{
			isLiveExecutionMasterON = false;
		}

		}
	}

	private void getLatestOptionData() {
		
	}

}
