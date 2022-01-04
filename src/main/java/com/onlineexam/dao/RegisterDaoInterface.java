package com.onlineexam.dao;

import java.sql.SQLException;

import com.onlineexam.model.RegisterPojo;

public interface RegisterDaoInterface {
	public  void fetchregister(RegisterPojo rd) throws ClassNotFoundException, SQLException;
}
