package com.self.main.extractor;

import java.util.List;

public class EODCycleDataExtractor {

	public EODCycleDataExtractor() {

	}

	public static void main(String[] args) throws Exception {

		EODCycleDataExtractor eodCycleMain = new EODCycleDataExtractor();

		eodCycleMain.executeDailySetup();

	}

	
	public void executeInitialSetup() throws Exception {

		EODCycleDataExtractorUtil eodCycleDataExtractorUtil = new EODCycleDataExtractorUtil();

		try {

			List<String> listTop50Equities = eodCycleDataExtractorUtil.getTop50ByTurnover();

			eodCycleDataExtractorUtil.downloadDataAndLoadDBForInitialSetup(listTop50Equities);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			if (eodCycleDataExtractorUtil.equityCurrentTime != null) {
				eodCycleDataExtractorUtil.equityCurrentTime.tearDown();
			}

			if (eodCycleDataExtractorUtil.equityHistorical != null) {
				eodCycleDataExtractorUtil.equityHistorical.tearDown();
			}
		}

	}


	
	public void executeDailySetup() throws Exception {

		EODCycleDataExtractorUtil eodCycleDataExtractorUtil = new EODCycleDataExtractorUtil();

		try {

			eodCycleDataExtractorUtil.getTodaysFullData();
			
			eodCycleDataExtractorUtil.fillGapData();

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try{
			if (eodCycleDataExtractorUtil.equityCurrentTime != null) {
				eodCycleDataExtractorUtil.equityCurrentTime.tearDown();
			}

			if (eodCycleDataExtractorUtil.equityHistorical != null) {
				eodCycleDataExtractorUtil.equityHistorical.tearDown();
			}
			}
			catch(Exception e)
			{
				
			}
		}

	}


}
