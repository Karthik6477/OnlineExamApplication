package com.onlineexam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.model.LoginPojo;

public interface LoginDaoInterface {
	public  ResultSet fetchlogin(LoginPojo lc) throws SQLException, ClassNotFoundException;
	public  ResultSet validUser(String email,String password) throws ClassNotFoundException, SQLException;
}
