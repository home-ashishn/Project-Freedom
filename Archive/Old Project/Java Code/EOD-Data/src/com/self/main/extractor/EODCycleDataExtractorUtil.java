package com.self.main.extractor;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.io.FileUtils;

import com.self.indicators.db.helper.EODCycleDBHelper;
import com.self.main.EODGlobal;
import com.self.main.extractor.dataobjects.Top25EquityGap;
import com.self.seleniumscrapper.EquityCurrentTime;
import com.self.seleniumscrapper.EquityHistorical;

public class EODCycleDataExtractorUtil {

	public EODGlobal eodGlobal;

	public EODCycleDBHelper eodCycleDBHelper;

	public EquityHistorical equityHistorical = null;

	public EquityCurrentTime equityCurrentTime = null;

	public EODCycleDataExtractorUtil() {
		eodGlobal = EODGlobal.getInstance();

		eodCycleDBHelper = new EODCycleDBHelper(eodGlobal.getPool());
	}

	public void fillGapData() throws NoSuchElementException, IllegalStateException, Exception {

		List<Top25EquityGap> listGap = eodCycleDBHelper.getTop25EquityGapData(5);

		for (Iterator iterator = listGap.iterator(); iterator.hasNext();) {
			Top25EquityGap top25EquityGap = (Top25EquityGap) iterator.next();

			downloadDataForSymbolForDateRange(top25EquityGap.getSymbol(), top25EquityGap.getMinDate(),
					top25EquityGap.getCurrDate());

		}

	}

	public void downloadDataForSymbolForDateRange(String symbol, Date dateFrom, Date dateTo) throws Exception {

		Calendar cal = Calendar.getInstance();

		cal.setTime(dateTo);

		cal.add(Calendar.DATE, -183);
		
		if(dateFrom.before(cal.getTime())){
			dateFrom = cal.getTime();
		}

		Date dateCounter = dateFrom;

		String folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";

		if ("Mac OS X".equals(System.getProperty("os.name"))) {
			folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
		} else {
			folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		}

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		while (dateCounter.before(dateTo)) {

			cleanFolder(folderPath);

			String calculatedDateFrom = new SimpleDateFormat("dd-MM-yyyy").format(dateCounter);

			String strCalculatedDateTo = getDateRange(dateCounter, (365 * 1) - 1, true);

			Date dateCalculatedDateTo = new SimpleDateFormat("dd-MM-yyyy").parse(strCalculatedDateTo);

			if (dateCalculatedDateTo.after(dateTo)) {
				strCalculatedDateTo = new SimpleDateFormat("dd-MM-yyyy").format(dateTo);
			}

			equityHistorical.downloadFileByDateRange(symbol, calculatedDateFrom, strCalculatedDateTo);

			dateCounter = new SimpleDateFormat("dd-MM-yyyy").parse(strCalculatedDateTo);

			loadDataForSymbol();

		}

	}

	public String getDateRange(Date date, int i, boolean forward) {
		// TODO Auto-generated method stub

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		if (forward) {
			cal.add(Calendar.DATE, i);

		} else {
			cal.add(Calendar.DATE, -1 * i);
		}

		return new SimpleDateFormat("dd-MM-yyyy").format(cal.getTime());

	}

	public void downloadDataForSymbolVariableYearRange(String symbol, int noOfYearsBack) throws Exception {

		String folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";

		if ("Mac OS X".equals(System.getProperty("os.name"))) {
			folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
		} else {
			folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		}

		cleanFolder(folderPath);

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		String dateFrom = getDateRange(new Date(), (365 * (noOfYearsBack + 1)), false);
		String dateTo = getDateRange(new Date(), (365 * noOfYearsBack) + 1, false);
		equityHistorical.downloadFileByDateRange(symbol, dateFrom, dateTo);

	}

	public void downloadDataForSymbol(String symbol) throws Exception {

		String folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";

		if ("Mac OS X".equals(System.getProperty("os.name"))) {
			folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
		} else {
			folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		}

		cleanFolder(folderPath);

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		equityHistorical.downloadFileByDateRangeFixed2Y(symbol);

	}

	public void cleanFolder(String folderPath) throws IOException {

		File folder = new File(folderPath);

		FileUtils.cleanDirectory(folder);

	}

	public List<String> getTop50ByTurnover() throws Exception {

		getTodaysFullData();

		List<String> listReturn = eodCycleDBHelper.getTop50Equities(5);

		// listTop50Equities = listReturn;

		return listReturn;

	}

	public void getTodaysFullData() throws Exception {
		// TODO Auto-generated method stub

		String folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Daily";

		if ("Mac OS X".equals(System.getProperty("os.name"))) {
			folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Daily";
		} else {
			folderPath = "D:\\NSE_Downloads\\Equity_Daily";
		}

		cleanFolder(folderPath);

		if (equityCurrentTime == null) {
			equityCurrentTime = new EquityCurrentTime();
		}

		equityCurrentTime.downloadCurrentFileFullData();

		File folder = new File(folderPath);

		if (folder.isDirectory()) {
			File[] files = folder.listFiles();

			String filePath = files[0].getAbsolutePath();

			eodCycleDBHelper.loadDataToDB(filePath, 5);

		{
			Thread.sleep(1000);

			eodCycleDBHelper.call_transfer_equity_data(5);

			Thread.sleep(1000);

			eodCycleDBHelper.call_keep_top50(5);

			Thread.sleep(1000);

			eodCycleDBHelper.getConnPool().clear();

			eodCycleDBHelper.call_calculate_top_25_turnover(5);

			Thread.sleep(1000);

			eodCycleDBHelper.getConnPool().clear();

			eodCycleDBHelper.call_verify_top25_data(5);

			Thread.sleep(1000);
		}
		
		}

		

	}

	public void downloadDataAndLoadDBForInitialSetup(List<String> listTop50Equities) throws Exception {

		for (Iterator iterator = listTop50Equities.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();

			downloadDataForSymbol(symbol);

			loadDataForSymbol();

			for (int i = 2; i <= 5; i++) {

				downloadDataForSymbolVariableYearRange(symbol, i);
				loadDataForSymbol();
			}

		}

	}

	public void loadDataForSymbol() throws Exception {

		String folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
		
		if ("Mac OS X".equals(System.getProperty("os.name"))) {
			folderPath = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Historical";
		} else {
			folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		}

		File folder = new File(folderPath);

		if (folder.isDirectory()) {
			File[] files = folder.listFiles();

			if (files == null || files.length == 0) {
				return;
			}

			String filePath = files[0].getAbsolutePath();

			eodCycleDBHelper.loadDataToDB(filePath, 5);

			Thread.sleep(5000);

			eodCycleDBHelper.call_transfer_equity_data(5);

			Thread.sleep(5000);

		}
	}

}