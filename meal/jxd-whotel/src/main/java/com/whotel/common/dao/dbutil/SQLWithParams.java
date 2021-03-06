package com.whotel.common.dao.dbutil;

public class SQLWithParams {

	private String sql;
	private Object[] params;

	public SQLWithParams() {
	}

	public SQLWithParams(String sql, Object[] params) {
		this.sql = sql;
		this.params = params;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public Object[] getParams() {
		return params;
	}

	public void setParams(Object[] params) {
		this.params = params;
	}

}
