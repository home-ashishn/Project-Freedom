package com.freedom.live;

import java.util.Calendar;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.freedom.live.models.BasisForCalls;
import com.freedom.live.models.BasisForCallsRepository;
import com.freedom.live.models.SelectedInstrument;
import com.freedom.live.models.SelectedInstrumentRepository;



@Component
@Service
public class LiveExecutionManager {
	
/*	
	@Autowired
	private LiveExecutionCycle liveExecutionCycle;
	
*/	
	
	@Autowired
	private BasisForCallsRepository basisForCallsRepository;
	
	@Autowired
	private SelectedInstrumentRepository selectedInstrumentRepository;
	
	@Autowired
	LiveOptionPriceExtractor liveOptionPriceExtractor;
	
	@Autowired
	LiveStockPriceExtractor liveStockPriceExtractor;
	
	private String startExecution() throws Exception {
		
		// liveExecutionCycle.startExecutionMaster();
		
		return "";

		
	}
	
	private void init() {

		


		Iterable<BasisForCalls> basisList = basisForCallsRepository.findAll();

		for (BasisForCalls basisForCalls : basisList) {		
		 

			String symbol = basisForCalls.getSymbol();//"BATAINDIA" + i;

			liveStockPriceExtractor.symbols.add(symbol);

			liveStockPriceExtractor.mapUrls.put(symbol, basisForCalls.getUrl());

			long globalVolume = new Long(0);
			liveStockPriceExtractor.mapGlobalVolumes.put(symbol, globalVolume);
		
		}
		
		Iterable<SelectedInstrument> instrumentList = selectedInstrumentRepository.findAll();

			for (SelectedInstrument selectedInstrument : instrumentList) {


				liveOptionPriceExtractor.instrumentList.add(selectedInstrument);

				liveOptionPriceExtractor.mapUrls.put(selectedInstrument, selectedInstrument.getUrl());

				long globalVolume = new Long(0);
				liveOptionPriceExtractor.mapGlobalVolumes.put(selectedInstrument, globalVolume);
				
				
				DateTime currentTime = new DateTime();
				
				liveOptionPriceExtractor.mapGlobalTimeStamps.put(selectedInstrument, currentTime);


			}

		

	}
	
	public void manageExecution() throws Exception {

		init();


		boolean isValidRange = true; // checkTimeRange(); // true; 
		
		if(isValidRange) {
			
			
			startExecution();
			
			
			

		}
		

	}
	private void sop(String text) {
		
		System.out.println(text);
	}


}
