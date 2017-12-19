package com.self.candlestick.db.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;
import org.joda.time.DateTime;

import com.self.common.db.helper.BaseIndicatorTypesDBHelper;
import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.db.helper.RSIDBHelper;

public class CandleStickIndicatorsDBHelper extends BaseIndicatorTypesDBHelper{

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);

	public CandleStickIndicatorsDBHelper(ObjectPool connPool) {
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
		 */
		}

	public int insertCurrentBullishEISignal(String symbol, DateTime endTime, boolean currentSignal, 
			int retryCount) throws Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			
			return insertBullishEISignal(connection, symbol, endTime,currentSignal, retryCount);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}



	private int insertBullishEISignal(Connection connection, String symbol, DateTime endTime,
			boolean currentSignal, int retryCount) throws Exception {
		

		int maxId = 0;

		ResultSet res = null;
		String sql = "replace into bullish_engulfing_evaluation_data "
				+ "(symbol,curr_date,curr_signal)" + 
				" values (?, ?, ?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		
		try {

			ps.setString(1, symbol);
			ps.setString(2, endTime.toString("yyyy-MM-dd"));
			ps.setBoolean(3, currentSignal);
			ps.execute();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertBullishEISignal(connection, symbol, endTime, currentSignal,retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		}
		finally {
			safeClose(res);
			safeClose(ps);
		}

		return maxId;

	}



	public int insertCurrentBearishEISignal(String symbol, DateTime endTime, boolean currentSignal, 
			int retryCount) throws Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			
			return insertBearishEISignal(connection, symbol, endTime,currentSignal, retryCount);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}



	private int insertBearishEISignal(Connection connection, String symbol, DateTime endTime,
			boolean currentSignal, int retryCount) throws Exception {
		

		int maxId = 0;

		ResultSet res = null;
		String sql = "replace into bearish_engulfing_evaluation_data "
				+ "(symbol,curr_date,curr_signal)" + 
				" values (?, ?, ?)";

		PreparedStatement ps = connection.prepareStatement(sql);
		
		try {

			ps.setString(1, symbol);
			ps.setString(2, endTime.toString("yyyy-MM-dd"));
			ps.setBoolean(3, currentSignal);
			ps.execute();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertBearishEISignal(connection, symbol, endTime, currentSignal,retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		}
		finally {
			safeClose(res);
			safeClose(ps);
		}

		return maxId;

	}


}
