package com.self.indicators.db.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;

public class PercentBDBHelper {

	
	
	public static int insertCurrentPercentBSignal(Connection connection, String symbol, 
			DateTime endTime, int currentSignal, int retryCount) throws MySqlPoolableException, SQLException{
		

		int maxId = 0;

		ResultSet res = null;

		
		if (retryCount < 0) {
			return 0;
		}
		
		String sql = "replace into percentb_evaluation_run_current_data "
				+ "(symbol,curr_date,current_market_trend,curr_signal)" + " values (?, ?, ?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			// String date = new SimpleDateFormat("yyyy-mm-dd").format(endTime);
			
			

			ps.setString(1, symbol);
			ps.setString(2, endTime.toString("yyyy-MM-dd"));
			ps.setInt(3, 0);
			ps.setInt(4, currentSignal);

			ps.execute();

			sql = "SELECT max(percentb_evaluation_run_id) max_id FROM engine_indicators.percentb_evaluation_run_current_data";

			ps = connection.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				maxId = rs.getInt("max_id");

			}

			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertCurrentPercentBSignal(connection, symbol, endTime, currentSignal, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		}
		finally {
			safeClose(res);
			safeClose(ps);
		}

		// TODO Auto-generated method stub

		return maxId;

	}
	
	

	public static void insertBackTestPercentBSignal(Connection connection, List<IndicatorsBackTestData> listIndicatorsBackTestData,
			int retryCount) throws MySqlPoolableException, SQLException{
		


		ResultSet res = null;

		
		if (retryCount < 0) {
			return ;
		}
		
		String sql = "replace into percentb_evaluation_run_backtest_data "
				+ "(percentb_evaluation_run_id,symbol,curr_date,current_market_trend,curr_signal)"
				+ " values (?, ?, ?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			for (IndicatorsBackTestData indicatorsBackTestData : listIndicatorsBackTestData) {
				try {

					ps.setInt(1, indicatorsBackTestData.getSignalReferenceId());
					ps.setString(2, indicatorsBackTestData.getSymbol());
					ps.setString(3, indicatorsBackTestData.getEndTime().toString("yyyy-MM-dd"));
					// ps.setInt(4, indicatorsBackTestData.getCurrentMarketTrend());
					ps.setInt(4, 0);
					ps.setInt(5, indicatorsBackTestData.getCurrentSignal());

					ps.addBatch();

				} catch (Exception e) {
					continue;
				}

			}
			ps.executeBatch();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertBackTestPercentBSignal(connection, listIndicatorsBackTestData, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
		}

		// TODO Auto-generated method stub


	}
	

	private static void safeClose(ResultSet res) {
		if (res != null) {
			try {
				res.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse resultset", e);
			}
		}
	}

	private static void safeClose(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse statment", e);
			}
		}
	}
}
