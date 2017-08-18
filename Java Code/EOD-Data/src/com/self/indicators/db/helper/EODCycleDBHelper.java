package com.self.indicators.db.helper;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;

import com.self.dbconnection.MySqlPoolableException;
import com.self.main.EODGlobal;
import com.self.main.extractor.dataobjects.Top25EquityGap;

public class EODCycleDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;

	public EODCycleDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}

	
	public List<String> getTop50Equities(int retryCount)
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

		String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main_top50 where done = 0";

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
			getTop50Equities(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listSymbol;

	}


	
	public List<Top25EquityGap> getTop25EquityGapData(int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		List<Top25EquityGap> listData = new ArrayList<Top25EquityGap>();

		if (retryCount < 0) {
			return listData;
		}

		Connection connection = null;
		ResultSet res = null;

		/*
		 * String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main a " +
		 * "WHERE a.CURR_DATE = (SELECT max(b.curr_date) FROM engine_ea.equity_data_main b) "
		 * + "order by a.TURNOVER desc " + "limit 50";
		 */

		String sql = "SELECT * FROM engine_ea.top_25_equity_gap "
				+ "where min_date is not null";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				
				Top25EquityGap data = new Top25EquityGap();
				
				data.setSymbol(rs.getString("SYMBOL"));
				
				if (rs.getString("CURR_DATE") != null)
					
				{
				
				data.setCurrDate(new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("CURR_DATE")));

				}
				
				if (rs.getString("min_date") != null)
			
				{
					
				data.setMinDate(new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("min_date")));

				}
				


				listData.add(data);

			}
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			getTop50Equities(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listData;

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
		/*
		 * 
		 * ObjectPool pool; pool = initMySqlConnectionPool();
		 * 
		 * IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(pool);
		 * 
		 * indicatorsDBHelper.getIndicatorsBaseData(5);
		 * 
		 */

		EODGlobal eodGlobal = EODGlobal.getInstance();

		EODCycleDBHelper eodCycleDBHelper = new EODCycleDBHelper(eodGlobal.getPool());

		eodCycleDBHelper.getTop25EquityGapData(5);

	}

	/*
	 * private void removeHeader(String filePath) throws IOException {
	 * 
	 * CSVReader reader2 = new CSVReader(new FileReader(filePath));
	 * List<String[]> allElements = reader2.readAll(); allElements.remove(0);
	 * FileWriter sw = new FileWriter(filePath); CSVWriter writer = new
	 * CSVWriter(sw); writer.writeAll(allElements); reader2.close();
	 * writer.close();
	 * 
	 * }
	 */

	private static void removeHeader(String string) throws IOException {
		File inputFile = new File(string);
		File tempFile = new File(string + "1");

		BufferedReader reader = new BufferedReader(new FileReader(inputFile));
		BufferedWriter writer = new BufferedWriter(new FileWriter(tempFile));

		String currentLine;

		// boolean fileAlreadyProcessed = false;

		while ((currentLine = reader.readLine()) != null) {
			// trim newline when comparing with lineToRemove
			String trimmedLine = currentLine.trim();

			if (trimmedLine.contains("DATE") || !trimmedLine.contains("EQ")) {
				continue;
			}

			trimmedLine = trimmedLine.replace("\"", "") + "\n";

			writer.write(trimmedLine);
		}

		writer.flush();

		writer.close();
		reader.close();

		if (!inputFile.delete()) {
			System.out.println("Could not delete file-" + string);
			return;
		}
		if (!tempFile.renameTo(inputFile)) {
			System.out.println("Could not rename file");
		}

	}

	
	public void loadDataToDB(String filePath,  int retryCount) throws Exception {

		// filePath = filePath.replace("\\", "\\\\");
		filePath = filePath.replace("\\", "/");

		removeHeader(filePath);

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		String sqlDelete = "delete from engine_ea.equity_data_main_temporary";

		String sql = "LOAD DATA LOCAL INFILE '" + filePath + "' " + "INTO TABLE equity_data_main_temporary "
				+ "FIELDS TERMINATED BY ',' "
				// + "OPTIONALLY ENCLOSED BY '\"' "
				// + " LINES TERMINATED BY '\r\n' "
				// + "IGNORE 1 LINES "
				+ "(SYMBOL,SERIES,@my_date,PREV_CLOSE,OPEN_PRICE,HIGH_PRICE,LOW_PRICE,LAST_PRICE,CLOSE_PRICE,"
				+ "AVERAGE_PRICE,TOTAL_TRADED_QUANTITY,TURNOVER,NO_OF_TRADES,DELIVERABLE_QTY,"
				+ "PERCENT_DELIVERABLE_QTY) " + "set curr_date = str_to_date(@my_date,'%d-%b-%Y')";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		Statement ps1 = connection.createStatement();

		Statement ps = connection.createStatement();

		connection.setAutoCommit(true);

		try {

			ps1.executeUpdate(sqlDelete);

			ps1.close();
			
			ps.execute(sql);
			
			ps.close();

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			loadDataToDB(filePath,  retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(ps1);
			safeClose(connection);
		}

	}


	
	public void call_transfer_equity_data(int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		CallableStatement callSt = connection.prepareCall("call engine_ea.transfer_equity_data()");

		connection.setAutoCommit(true);

		try {


			callSt.execute();

			callSt.close();

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			call_transfer_equity_data(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(callSt);
			safeClose(connection);
		}

	}


	
	public void call_keep_top50(int retryCount) throws Exception {


		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		CallableStatement callSt1 = connection.prepareCall("call engine_ea.keep_top50()");

		connection.setAutoCommit(true);

		try {

				
				callSt1.execute();
				callSt1.close();

				connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			call_keep_top50(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(callSt1);
			safeClose(connection);
		}

	}


	
	public void call_calculate_top_25_turnover(int retryCount) throws Exception {


		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		CallableStatement callSt1 = connection.prepareCall("call engine_ea.calculate_top_25_turnover()");

		connection.setAutoCommit(true);

		try {

				
				callSt1.execute();
				
				callSt1.close();

				connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			call_calculate_top_25_turnover(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(callSt1);
			safeClose(connection);
		}

	}

	
	public void call_verify_top25_data(int retryCount) throws Exception {


		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		CallableStatement callSt1 = connection.prepareCall("call engine_ea.verify_top25_data()");

		connection.setAutoCommit(true);

		try {

				
				callSt1.execute();
				callSt1.close();

				connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			call_verify_top25_data(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(callSt1);
			safeClose(connection);
		}

	}


	public ObjectPool getConnPool() {
		return connPool;
	}


}
