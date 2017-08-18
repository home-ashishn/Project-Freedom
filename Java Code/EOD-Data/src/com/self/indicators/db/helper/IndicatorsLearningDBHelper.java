package com.self.indicators.db.helper;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;
import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;

import eu.verdelhan.ta4j.Tick;

public class IndicatorsLearningDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;

	List<Tick> ticks = new ArrayList<Tick>();

	// private static Map<String, List<Tick>> cache = new HashMap<String,
	// List<Tick>>();

	public IndicatorsLearningDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}
	private void safeClose(ResultSet res) {
		if (res != null) {
			try {
				res.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse resultset", e);
			}
		}
	}

	private void safeClose(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse statment", e);
			}
		}
	}
	

	private void safeClose(Connection conn) {
		if (conn != null) {
			try {
				connPool.returnObject(conn);
			} catch (Exception e) {
				// LOG.warn("Failed to return the connection to the pool", e);
			}
		}
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


	public List<String> getBackRange(int backCount, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		List<String> listDates = new ArrayList<String>();

		if (retryCount < 0) {
			return listDates;
		}

		Connection connection = null;
		ResultSet res = null;

		/*
		 * String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main a " +
		 * "WHERE a.CURR_DATE = (SELECT max(b.curr_date) FROM engine_ea.equity_data_main b) "
		 * + "order by a.TURNOVER desc " + "limit 50";
		 */

		String sql = "SELECT distinct curr_date FROM engine_ea.equity_data_main where curr_date <= "
				+ "(select max(curr_date) from engine_ea.equity_data_main) "
				+ "order by CURR_DATE desc limit " + backCount;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				String dateValue = rs.getString("curr_date");

				listDates.add(dateValue);

			}
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			getBackRange(backCount,retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listDates;

	}



	public void initDBForDate(String targetDate,int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		CallableStatement callSt = connection.prepareCall("call engine_indicators_learning.INIT_DB_FOR_DATE(?)");

		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		callSt.setString(1, targetDate);
/*		callSt.setString(2, format.format(new Date()));
		callSt.setString(3, getDateRange(new Date(),365,false));
*/
		try {
			callSt.execute();
			callSt.close();
		} catch (Exception e) {
			e.printStackTrace();
			initDBForDate(targetDate,retryCount--);
		} finally {

			safeClose(connection);
		}

	}



	public void resetDBForDate(String targetDate,int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		CallableStatement callSt = connection.prepareCall("call engine_indicators_learning.RESET_DB_FOR_DATE(?)");

		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		callSt.setString(1, targetDate);
/*		callSt.setString(2, format.format(new Date()));
		callSt.setString(3, getDateRange(new Date(),365,false));
*/
		try {
			callSt.execute();
			callSt.close();
		} catch (Exception e) {
			e.printStackTrace();
			resetDBForDate(targetDate,retryCount--);
		} finally {

			safeClose(connection);
		}

	}




}
