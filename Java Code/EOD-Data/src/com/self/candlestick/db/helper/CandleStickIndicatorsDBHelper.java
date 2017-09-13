package com.self.candlestick.db.helper;

import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;

import com.self.common.db.helper.BaseIndicatorTypesDBHelper;

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



}
