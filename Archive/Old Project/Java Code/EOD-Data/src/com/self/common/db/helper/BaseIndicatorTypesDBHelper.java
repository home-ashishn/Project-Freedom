package com.self.common.db.helper;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;
import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;

import eu.verdelhan.ta4j.Tick;

public class BaseIndicatorTypesDBHelper extends BaseDBHelper{


	// protected ObjectPool connPool;
	
	protected List<Tick> ticks = new ArrayList<Tick>();

	
	public BaseIndicatorTypesDBHelper(ObjectPool connPool) {
		super(connPool);
		this.connPool = connPool;

	}

	public List<Tick> getTicks() {
		return ticks;
	}

	public void setTicks(List<Tick> ticks) {
		this.ticks = ticks;
	}
	

	public void accumulateDataForSymbol(String symbol, int retryCount) throws Exception {

	if (retryCount < 0) {
		return;
	}

	Connection connection = null;

	while (connection == null || connection.isClosed()) {
		connection = (Connection) connPool.borrowObject();
	}

	connection.setAutoCommit(true);

	CallableStatement callSt = connection.prepareCall("call data_accumulation(?,?,?)");

	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
	callSt.setString(1, symbol);
	callSt.setString(2, format.format(new Date()));
	callSt.setString(3, getDateRange(new Date(),180,false));

	
	try {
		callSt.execute();
		callSt.close();
	} catch (Exception e) {
		e.printStackTrace();
		accumulateDataForSymbol(symbol, retryCount--);
	} finally {

		safeClose(connection);
	}

}


public void initDB(int retryCount) throws Exception {

	if (retryCount < 0) {
		return;
	}

	Connection connection = null;

	while (connection == null || connection.isClosed()) {
		connection = (Connection) connPool.borrowObject();
	}

	connection.setAutoCommit(true);

	CallableStatement callSt = connection.prepareCall("call INIT_DB()");

	
	try {
		callSt.execute();
		callSt.close();
	} catch (Exception e) {
		e.printStackTrace();
		initDB(retryCount--);
	} finally {

		safeClose(connection);
	}

}



public void getIndicatorsBaseData(String symbol, int retryCount)
		throws NoSuchElementException, IllegalStateException, Exception {

	ticks = new ArrayList<Tick>();

	if (retryCount < 0) {
		return;
	}

	Connection connection = null;
	ResultSet res = null;

	String sql = "SELECT CURR_DATE,HIGH_PRICE,LOW_PRICE,OPEN_PRICE,CLOSE_PRICE" + ",TURNOVER"
			+ ",TOTAL_TRADED_QUANTITY" + " FROM equity_data_indiactors" + " WHERE SYMBOL = '"
			+ symbol + "' " + " ORDER BY CURR_DATE ASC";

	while (connection == null || connection.isClosed()) {
		connection = (Connection) connPool.borrowObject();
	}
	connection.setAutoCommit(true);

	PreparedStatement ps = connection.prepareStatement(sql);

	try {

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			DateTime curr_date = new DateTime(rs.getDate("CURR_DATE"));

			double high_price = rs.getFloat("HIGH_PRICE");
			double low_price = rs.getFloat("LOW_PRICE");
			double open_price = rs.getFloat("OPEN_PRICE");
			double close_price = rs.getFloat("CLOSE_PRICE");
			double turnover_volume = rs.getFloat("TOTAL_TRADED_QUANTITY");

			ticks.add(new Tick(curr_date, open_price, high_price, low_price, close_price, turnover_volume));

		}
		ps.close();
		connection.close();

	} catch (Exception e) {
		e.printStackTrace();
		getIndicatorsBaseData(symbol, retryCount--);
		throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
	} finally {
		safeClose(res);
		safeClose(ps);
		safeClose(connection);
	}

}









}
