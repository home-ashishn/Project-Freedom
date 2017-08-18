package com.self.dbconnection;

public class MySqlPoolableException extends Exception {
    public MySqlPoolableException(final String msg, Exception e) {
        super(msg, e);
    }
}
