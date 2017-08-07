package com.self.live.seleniumscrapper;

import java.util.Properties;

import org.apache.commons.pool.ObjectPool;
import org.apache.commons.pool.PoolableObjectFactory;
import org.apache.commons.pool.impl.GenericObjectPool;
import org.apache.commons.pool.impl.GenericObjectPool.Config;
import org.apache.commons.pool.impl.GenericObjectPoolFactory;

import com.self.live.seleniumscrapper.dbconnection.MySqlPoolableObjectFactory;

public class LiveDataGlobal {
	
	
	private ObjectPool pool;

	private int currentCycleNumber;
	

	/*
	public void createFireFoxProfile(){
		
	}*/
	
	private ObjectPool initMySqlConnectionPool() {
		Properties properties = new Properties();
		// properties.load(Boot.class.getClassLoader().getResourceAsStream("config.properties"));
		/*
		 * If you are using Google's Guava:
		 * properties.load(Resources.getResource("config.properties");
		 */
		// properties.load(Resources.getResource("config.properties");
		/*
		 * String host = properties.getProperty("host"); String port =
		 * properties.getProperty("port"); String schema =
		 * properties.getProperty("schema"); String user =
		 * properties.getProperty("user"); String password =
		 * properties.getProperty("password");
		 */

		String host = "localhost";
		String port = "3306";
		String schema = "engine_live_temp";
		String user = "root";
		String password = "root";

		PoolableObjectFactory mySqlPoolableObjectFactory = new MySqlPoolableObjectFactory(host, Integer.parseInt(port),
				schema, user, password);
		Config config = new GenericObjectPool.Config();
		config.maxActive = 500;
		config.testOnBorrow = true;
		config.testWhileIdle = true;
		config.timeBetweenEvictionRunsMillis = 10000;
		config.minEvictableIdleTimeMillis = 60000;

		GenericObjectPoolFactory genericObjectPoolFactory = new GenericObjectPoolFactory(mySqlPoolableObjectFactory,
				config);
		ObjectPool pool = genericObjectPoolFactory.createPool();
		return pool;
	}
	

	
	private static final LiveDataGlobal instance = new LiveDataGlobal();
    
    //private constructor to avoid client applications to use constructor
    private LiveDataGlobal(){
    	this.setPool(initMySqlConnectionPool());
    	
    }

    public static LiveDataGlobal getInstance(){
        return instance;
    }

	public ObjectPool getPool() {
		return pool;
	}

	public void setPool(ObjectPool pool) {
		this.pool = pool;
	}

}
