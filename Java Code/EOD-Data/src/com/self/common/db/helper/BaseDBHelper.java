package com.self.common.db.helper;

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

import com.self.dbconnection.MySqlPoolableException;

public class BaseDBHelper {
	
	protected ObjectPool connPool;

	public BaseDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}
	
	

	protected void safeClose(Connection conn) {
		if (conn != null) {
			try {
				// conn.close();
				connPool.returnObject(conn);
			} catch (Exception e) {
				// LOG.warn("Failed to return the connection to the pool", e);
			}
		}
	}

	protected void safeClose(ResultSet res) {
		if (res != null) {
			try {
				res.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse resultset", e);
			}
		}
	}

	protected void safeClose(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse statment", e);
			}
		}
	}
	
	

	public List<String> getTopEquities(int count,int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		List<String> listSymbol = new ArrayList<String>();

		if (retryCount < 0) {
			return listSymbol;
		}

		Connection connection = null;
		ResultSet res = null;

		/*
		 * String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main a " +
		 * "WHERE a.CURR_DATE = (SELECT max(b.curr_date) FROM engine_ea.equity_data_main b) "
		 * + "order by a.TURNOVER desc " + "limit 50";
		 */

		String sql = "SELECT SYMBOL FROM engine_ea.top_25_equity order by count_symbol desc "
				+ " limit "+count;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				String symbolValue = rs.getString("SYMBOL");

				listSymbol.add(symbolValue);

			}
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			getTopEquities(count, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listSymbol;

	}



	protected String getDateRange(Date date, int i, boolean forward) {
		// TODO Auto-generated method stub

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		if (forward) {
			cal.add(Calendar.DATE, i);

		} else {
			cal.add(Calendar.DATE, -1 * i);
		}

		return new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());

	}


	
	


}
