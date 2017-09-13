package com.self.indicators.db.helper;

import java.sql.Connection;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;
import org.joda.time.DateTime;

import com.self.common.db.helper.BaseIndicatorTypesDBHelper;
import com.self.indicators.def.dataobjects.RSIAuditData;
import com.self.indicators.def.dataobjects.StochasticAuditData;

public class IndicatorsDBHelper extends BaseIndicatorTypesDBHelper{

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);

	public IndicatorsDBHelper(ObjectPool connPool) {
		super(connPool);
	}
	
	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {
		/*
		 * 
		 * ObjectPool pool; pool = initMySqlConnectionPool();
		 * 
		 * IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(pool);
		 * 
		 * indicatorsDBHelper.getIndicatorsBaseData(5);
		 * 
		 */}
	public int insertCurrentStochasticSignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
			int retryCount) throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return StochasticDBHelper.insertCurrentStochasticSignal(connection, symbol, endTime, currentMarketTrend,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public int insertCurrentRSISignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
			double stop_loss_level, double stop_loss_level_price, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return RSIDBHelper.insertCurrentRSISignal(connection, symbol, endTime, currentMarketTrend, currentSignal,
					stop_loss_level, stop_loss_level_price, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public int insertCurrentOBVSignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
			int retryCount) throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return OBVDBHelper.insertCurrentOBVSignal(connection, symbol, endTime, currentMarketTrend,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}


	public int insertCurrentPercentBSignal(String symbol, DateTime endTime 
			, int currentSignal,int retryCount) throws NoSuchElementException, 
	IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return PercentBDBHelper.insertCurrentPercentBSignal(connection, 
					symbol, endTime,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}





	public void insertRSIAuditData(RSIAuditData rsiAuditData,int retryCount) throws NoSuchElementException, 
	IllegalStateException, Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			RSIDBHelper.insertRSIAuditData(connection, 
					rsiAuditData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}


	}


	public void insertStochasticAuditData(StochasticAuditData stochasticAuditData, int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			StochasticDBHelper.insertStochasticAuditData(connection, 
					stochasticAuditData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}


	}





}
