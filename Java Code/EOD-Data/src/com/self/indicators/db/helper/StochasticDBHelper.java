package com.self.indicators.db.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.def.dataobjects.StochasticAuditData;

public class StochasticDBHelper {

	
	
	public static int insertCurrentStochasticSignal(Connection connection, String symbol, 
			DateTime endTime, int currentMarketTrend, int currentSignal, int retryCount) throws MySqlPoolableException, SQLException{
		

		int maxId = 0;

		ResultSet res = null;

		
		if (retryCount < 0) {
			return 0;
		}
		
		String sql = "replace into stochastic_evaluation_run_current_data "
				+ "(symbol,curr_date,current_market_trend,curr_signal)" + " values (?, ?, ?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			// String date = new SimpleDateFormat("yyyy-mm-dd").format(endTime);
			
			

			ps.setString(1, symbol);
			ps.setString(2, endTime.toString("yyyy-MM-dd"));
			ps.setInt(3, currentMarketTrend);
			ps.setInt(4, currentSignal);

			ps.execute();

			sql = "SELECT max(stochastic_evaluation_run_id) max_id FROM engine_indicators.stochastic_evaluation_run_current_data";

			ps = connection.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				maxId = rs.getInt("max_id");

			}

			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertCurrentStochasticSignal(connection, symbol, endTime, currentMarketTrend, currentSignal, retryCount--);
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



	public static void insertStochasticAuditData(Connection connection, StochasticAuditData stochasticAuditData,
			int retryCount) throws Exception {
		

		int maxId = 0;

		ResultSet res = null;

		

		
		String sql = "replace INTO engine_indicators.stochastic_evaluation_audit_data(stochastic_evaluation_run_id,symbol,curr_date,curr_signal,"
				+ "valueD,valueK,shortEmaValue,longEmaValue,marketTrend,signalforSidewaysMarket,signalforTrendingMarket,valueDLessThanCurrentValue,"
				+ "valueDLessThanCurrentDate,prevValueDGreaterThan80,prevValueDGreaterThan80Date,valueDGreaterThanCurrentValue,valueDGreaterThanCurrentDate,"
				+ "prevValueDLessThan20,prevValueDLessThan20Date)" + 
				" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		
		try {

			// String date = new SimpleDateFormat("yyyy-mm-dd").format(endTime);
			
			

			ps.setInt(1, stochasticAuditData.getStochastic_evaluation_run_id());
			ps.setString(2, stochasticAuditData.getSymbol());
			ps.setString(3, stochasticAuditData.getEndTime().toString("yyyy-MM-dd"));
			ps.setInt(4, stochasticAuditData.getCurr_signal());
			ps.setDouble(5, stochasticAuditData.getValueD());
			ps.setDouble(6, stochasticAuditData.getValueK());					
			ps.setDouble(7, stochasticAuditData.getShortEmaValue());					
			ps.setDouble(8, stochasticAuditData.getLongEmaValue());					
			ps.setInt(9, stochasticAuditData.getMarketTrend());					
			ps.setInt(10, stochasticAuditData.getSignalforSidewaysMarket());					
			ps.setInt(11, stochasticAuditData.getSignalforTrendingMarket());					
			
			ps.setDouble(12, stochasticAuditData.getValueDLessThanCurrentValue());	
			if(checkNull(stochasticAuditData.getValueDLessThanCurrentDate())){
				ps.setString(13, stochasticAuditData.getValueDLessThanCurrentDate().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(13,null);
			}
			ps.setDouble(14, stochasticAuditData.getPrevValueDGreaterThan80());					
			if(checkNull(stochasticAuditData.getPrevValueDGreaterThan80Date())){
				ps.setString(15, stochasticAuditData.getPrevValueDGreaterThan80Date().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(15,null);
			}
			
			ps.setDouble(16, stochasticAuditData.getValueDGreaterThanCurrentValue());	
			if(checkNull(stochasticAuditData.getValueDGreaterThanCurrentDate())){
				ps.setString(17, stochasticAuditData.getValueDGreaterThanCurrentDate().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(17,null);
			}
			ps.setDouble(18, stochasticAuditData.getPrevValueDLessThan20());					
			if(checkNull(stochasticAuditData.getPrevValueDLessThan20Date())){
				ps.setString(19, stochasticAuditData.getPrevValueDLessThan20Date().toString("yyyy-MM-dd"));	
			}
			else{
				ps.setString(19,null);
			}			

			
			
			
			ps.execute();


			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertStochasticAuditData(connection, stochasticAuditData ,retryCount--);
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
