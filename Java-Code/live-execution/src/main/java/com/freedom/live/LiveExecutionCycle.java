package com.freedom.live;

import java.util.Calendar;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.freedom.live.models.LiveProcessStatusRecord;
import com.freedom.live.repos.BasisForCallsRepository;
import com.freedom.live.repos.LiveProcessStatusRecordRepository;

@Component
public class LiveExecutionCycle {

	@Autowired
	private BasisForCallsRepository basisForCallsRepository;

	@Autowired
	private LiveProcessStatusRecordRepository liveProcessStatusRecordRepository;

	private DateTime lastStatusCheck = new DateTime();

	private boolean isLiveExecutionMasterON = false;

	public void startExecutionMaster() {

		ThreadPoolExecutor executor = new ThreadPoolExecutor(3, 6, 0L, TimeUnit.MILLISECONDS,
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

			if (executor.getQueue().size() > 0) {
				continue;
			}

			Callable<?> callableLSC = new Callable<Object>() {
				public String call() throws Exception {
					liveStatusCheck();
					return "";
				}
			};

			executor.submit(callableLSC);

		}

	}

	private void callLiveDataExecutionMaster() {

		isLiveExecutionMasterON = true;
		// basisForCallsRepository.callLiveDataExecutionMaster();

	}
	
	
	private void callRetryErrorOrders(DateTime time_in) {

		// basisForCallsRepository.callRetryErrorOrders(time_in, new DateTime());

	}

	private void liveStatusCheck() {

		Calendar cal = Calendar.getInstance();

		cal.add(Calendar.MINUTE, -1);

		// DateTime oneMinuteBack = new DateTime(cal.getTimeInMillis());

		if (lastStatusCheck.isBefore(cal.getTimeInMillis())) 
		{
			// Write here logic to get Last\ loop record time and get data for
			// one minute

			getLastLoopStatus();

			lastStatusCheck = new DateTime();

		}
	}

	private void getLastLoopStatus() {

		LiveProcessStatusRecord record = liveProcessStatusRecordRepository.findMaxRecord();

		String status = record.getProcess_status();

		if (status == null || "".equals(status)) {
			return;
		}
		
		getLatestOptionData();
		callRetryErrorOrders(record.getCurr_time());

/*		switch (status) {

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
			callLiveDataExecutionMaster();
		}

		}
*/	
		
	}

	private void getLatestOptionData() {
		
	}

}
