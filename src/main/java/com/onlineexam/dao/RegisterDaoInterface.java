package com.onlineexam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.model.RegisterPojo;

public interface RegisterDaoInterface {
	public  void fetchregister(RegisterPojo rd) throws ClassNotFoundException, SQLException;
	public boolean changepassword(RegisterPojo rp);
	public ResultSet getEmailDetails(RegisterPojo rp) throws SQLException;
	public ResultSet getPhoneDetails(RegisterPojo rp) throws SQLException;
	public void updatestatus(RegisterPojo rp) throws SQLException;
	public void makeactive(RegisterPojo rp) throws SQLException;
}
