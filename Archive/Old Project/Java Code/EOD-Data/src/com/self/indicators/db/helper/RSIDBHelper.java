package com.self.indicators.db.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.def.dataobjects.RSIAuditData;

public class RSIDBHelper {

	
	
	public static int insertCurrentRSISignal(Connection connection, String symbol, 
			DateTime endTime, int currentMarketTrend, int currentSignal,double stop_loss_level
			, double stop_loss_level_price, int retryCount) throws Exception{
		

		int maxId = 0;

		ResultSet res = null;

		
		
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



	public static void insertRSIAuditData(Connection connection, RSIAuditData rsiAuditData, int retryCount) throws MySqlPoolableException, SQLException 
	{
		

		int maxId = 0;

		ResultSet res = null;

		

		
		String sql = "replace into rsi_evaluation_audit_data "
				+ "(rsi_evaluation_run_id,symbol,curr_date,valueRSI,shortEmaValue,longEmaValue,marketTrend,"
				+ "signalforSidewaysMarket,signalforTrendingMarket,rsiGreaterThanCurrentValue,rsiGreaterThanCurrentDate,"
				+ "rsiLessThanCurrentValue,rsiLessThanCurrentDate,rateOfChange,minPrevValueRSI,minPrevValueRSIDate,"
				+ "maxPrevValueRSI,maxPrevValueRSIDate,curr_signal)" + 
				" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			// String date = new SimpleDateFormat("yyyy-mm-dd").format(endTime);
			
			

			ps.setInt(1, rsiAuditData.getRsi_evaluation_run_id());
			ps.setString(2, rsiAuditData.getSymbol());
			ps.setString(3, rsiAuditData.getEndTime().toString("yyyy-MM-dd"));
			ps.setDouble(4, rsiAuditData.getValueRSI());					
			ps.setDouble(5, rsiAuditData.getShortEmaValue());					
			ps.setDouble(6, rsiAuditData.getLongEmaValue());					
			ps.setInt(7, rsiAuditData.getMarketTrend());					
			ps.setInt(8, rsiAuditData.getSignalforSidewaysMarket());					
			ps.setInt(9, rsiAuditData.getSignalforTrendingMarket());					
			ps.setDouble(10, rsiAuditData.getRsiGreaterThanCurrentValue());	
			if(checkNull(rsiAuditData.getRsiGreaterThanCurrentDate())){
				ps.setString(11, rsiAuditData.getRsiGreaterThanCurrentDate().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(11,null);
			}
			ps.setDouble(12, rsiAuditData.getRsiLessThanCurrentValue());					
			if(checkNull(rsiAuditData.getRsiLessThanCurrentDate())){
				ps.setString(13, rsiAuditData.getRsiLessThanCurrentDate().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(13,null);
			}
			ps.setDouble(14, rsiAuditData.getRateOfChange());					
			ps.setDouble(15, rsiAuditData.getMinPrevValueRSI());					
			if(checkNull(rsiAuditData.getMinPrevValueRSIDate())){
				ps.setString(16, rsiAuditData.getMinPrevValueRSIDate().toString("yyyy-MM-dd"));					
			}
			else{
				ps.setString(16,null);
			}
			ps.setDouble(17, rsiAuditData.getMaxPrevValueRSI());					
			if(checkNull(rsiAuditData.getMaxPrevValueRSIDate())){
				ps.setString(18, rsiAuditData.getMaxPrevValueRSIDate().toString("yyyy-MM-dd"));					
			}
			else{
				ps.setString(18,null);
			}
			
			ps.setInt(19, rsiAuditData.getCurr_signal());

			
			
			
			ps.execute();


			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertRSIAuditData(connection, rsiAuditData ,retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		}
		finally {
			safeClose(res);
			safeClose(ps);
		}



	}
	
	private static boolean checkNull(Object input) {
		return input != null;
	}
}
