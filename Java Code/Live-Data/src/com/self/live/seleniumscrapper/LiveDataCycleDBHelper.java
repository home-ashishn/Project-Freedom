package com.self.live.seleniumscrapper;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;

import com.self.live.seleniumscrapper.dataobject.BasisForCalls;
import com.self.live.seleniumscrapper.dataobject.LiveStockData;
import com.self.live.seleniumscrapper.dbconnection.MySqlPoolableException;

public class LiveDataCycleDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;

	public LiveDataCycleDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}

	public ObjectPool getConnPool() {
		return connPool;
	}
	
	Connection connection = null;


	public void insertLiveDatainBatch(List<LiveStockData> listLiveStockData, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		ResultSet res = null;

		if (retryCount < 0) {
			return;
		}


		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		String sql = "replace into live_data(curr_time,symbol,volume,price) "
				+ "VALUES (now(), ?, ?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			for (LiveStockData liveStockData : listLiveStockData) {
				try {

					// ps.setString(1, liveStockData.getSymbol());
					ps.setString(1, liveStockData.getSymbol());
					ps.setInt(2, liveStockData.getVolume());
					// ps.setInt(4,
					// indicatorsBackTestData.getCurrentMarketTrend());
					ps.setFloat(3, liveStockData.getPrice());
					ps.addBatch();

				} catch (Exception e) {
					continue;
				}

			}
			ps.executeBatch();
			ps.close();
			// connection.commit();
			//connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertLiveDatainBatch(listLiveStockData, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			//safeClose(connection);
		}

		// TODO Auto-generated method stub

	}

	public void insertLiveDataIndividual(LiveStockData liveStockData, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		ResultSet res = null;

		if (retryCount < 0) {
			return;
		}


		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		String sql = "replace into live_data(curr_time,symbol,volume,price) "
				+ "VALUES (now(), ?, ?,?)";

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			// ps.setString(1, liveStockData.getSymbol());
			ps.setString(1, liveStockData.getSymbol());
			ps.setInt(2, liveStockData.getVolume());
			// ps.setInt(4,
			// indicatorsBackTestData.getCurrentMarketTrend());
			ps.setFloat(3, liveStockData.getPrice());

			ps.executeUpdate();
			ps.close();
			// connection.commit();
			//connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			insertLiveDataIndividual(liveStockData, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			//safeClose(connection);

		}

		// TODO Auto-generated method stub

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

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {
		LiveDataGlobal liveDataGlobal = LiveDataGlobal.getInstance();

		LiveDataCycleDBHelper liveDataCycleDBHelper = new LiveDataCycleDBHelper(liveDataGlobal.getPool());

		List<LiveStockData> listLiveStockData = new ArrayList<LiveStockData>();

		LiveStockData liveStockData = new LiveStockData();

		liveStockData.setPrice((float) 50.5);
		liveStockData.setSymbol("BATAINDIA");
		liveStockData.setVolume(89698698);

		LiveStockData liveStockData1 = new LiveStockData();

		liveStockData1.setPrice((float) 50.5);
		liveStockData1.setSymbol("BATAINDIA");
		liveStockData1.setVolume(89698698);

		listLiveStockData.add(liveStockData1);

		liveDataCycleDBHelper.insertLiveDatainBatch(listLiveStockData, 3);
	}
	
	
	
	public void callEvaluation(int currentSignal,String symbol,int retryCount) throws Exception {


		if (retryCount < 0) {
			return;
		}

		ResultSet res = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		CallableStatement callSt1 = null;
		if(currentSignal == 1)
		{
			callSt1 = connection.prepareCall("call convert_to_buy_calls(?)");
			callSt1.setString(1, symbol);

		}
		
		if(currentSignal == -1)
		{
			callSt1 = connection.prepareCall("call convert_to_sell_calls(?)");
			callSt1.setString(1, symbol);

		}

		connection.setAutoCommit(true);

		try {

				
				callSt1.execute();
				callSt1.close();


		} catch (Exception e) {
			e.printStackTrace();
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(callSt1);
			//safeClose(connection);
		}

	}
	

	public List<BasisForCalls> getBasisForCalls(int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		List<BasisForCalls> listData = new ArrayList<BasisForCalls>();

		if (retryCount < 0) {
			return listData;
		}

		ResultSet res = null;

		/*
		 * String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main a " +
		 * "WHERE a.CURR_DATE = (SELECT max(b.curr_date) FROM engine_ea.equity_data_main b) "
		 * + "order by a.TURNOVER desc " + "limit 50";
		 */

		String sql = "SELECT symbol,curr_signal,url FROM engine_live_temp.basis_for_calls;";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				
				BasisForCalls data = new BasisForCalls();
				
				data.setSymbol(rs.getString("symbol").trim());
				
				data.setSignal(rs.getInt("curr_signal"));

				
				data.setUrl(rs.getString("url").trim());

				listData.add(data);

			}
			ps.close();

		} catch (Exception e) {
			e.printStackTrace();
			getBasisForCalls(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
		}

		return listData;

	}






}
