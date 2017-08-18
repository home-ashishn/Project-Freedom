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

public class RSIDBHelper {

	
	
	public static int insertCurrentRSISignal(Connection connection, String symbol, 
			DateTime endTime, int currentMarketTrend, int currentSignal,double stop_loss_level
			, double stop_loss_level_price, int retryCount) throws MySqlPoolableException, SQLException{
		

		int maxId = 0;

		ResultSet res = null;

		
		if (stop_loss_level_price < 0) {
			return 0;
		}
		
		String sql = "replace into rsi_evaluation_run_current_data "
				+ "(symbol,curr_date,current_market_trend,curr_signal,stop_loss_level,stop_loss_level_price)" + 
				" values (?, ?, ?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			// String date = new SimpleDateFormat("yyyy-mm-dd").format(endTime);
			
			

			ps.setString(1, symbol);
			ps.setString(2, endTime.toString("yyyy-MM-dd"));
			ps.setInt(3, currentMarketTrend);
			ps.setInt(4, currentSignal);
			ps.setDouble(5, stop_loss_level);
			ps.setDouble(6, stop_loss_level_price);

			
			ps.execute();

			sql = "SELECT max(rsi_evaluation_run_id) max_id FROM engine_indicators.rsi_evaluation_run_current_data";

			ps = connection.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				maxId = rs.getInt("max_id");

			}

			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertCurrentRSISignal(connection, symbol, endTime, currentMarketTrend, currentSignal,stop_loss_level, stop_loss_level_price,retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		}
		finally {
			safeClose(res);
			safeClose(ps);
		}

		// TODO Auto-generated method stub

		return maxId;

	}
	
	

	public static void insertBackTestRSISignal(Connection connection, List<IndicatorsBackTestData> listIndicatorsBackTestData,
			int retryCount) throws MySqlPoolableException, SQLException{
		


		ResultSet res = null;

		
		if (retryCount < 0) {
			return ;
		}
		
		String sql = "replace into rsi_evaluation_run_backtest_data "
				+ "(rsi_evaluation_run_id,symbol,curr_date,current_market_trend,curr_signal,stop_loss_level,stop_loss_level_price)"
				
				+ " values (?, ?, ?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			for (IndicatorsBackTestData indicatorsBackTestData : listIndicatorsBackTestData) {
				try {

					ps.setInt(1, indicatorsBackTestData.getSignalReferenceId());
					ps.setString(2, indicatorsBackTestData.getSymbol());
					ps.setString(3, indicatorsBackTestData.getEndTime().toString("yyyy-MM-dd"));
					ps.setInt(4, indicatorsBackTestData.getCurrentMarketTrend());
					ps.setInt(5, indicatorsBackTestData.getCurrentSignal());
					ps.setDouble(6, indicatorsBackTestData.getStop_loss_level());
					ps.setDouble(7, indicatorsBackTestData.getStop_loss_level_price());

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
			insertBackTestRSISignal(connection, listIndicatorsBackTestData, retryCount--);
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
