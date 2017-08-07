package com.self.live.seleniumscrapper.dbconnection;

public class MySqlPoolableException extends Exception {
    public MySqlPoolableException(final String msg, Exception e) {
        super(msg, e);
    }
}
