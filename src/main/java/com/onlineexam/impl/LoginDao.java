package com.onlineexam.impl;
import java.sql.Connection;

import com.onlineexam.dao.*;
import com.onlineexam.model.LoginPojo;
import com.onlineexam.model.RegisterPojo;
import com.onlineexam.util.ConnectionPage;
import com.onlineexam.util.ConnectionPage.*;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class LoginDao implements LoginDaoInterface {
	public ResultSet fetchlogin(LoginPojo lc) throws SQLException, ClassNotFoundException {
		Connection con=ConnectionPage.connection();
		String query="select * from registerPage where email=? and password=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, lc.getUsername());
		ps.setString(2, lc.getPassword());
		ResultSet rs= ps.executeQuery();
		return rs;
		
	}
	
	
	public  ResultSet validUser(String email,String password) throws ClassNotFoundException, SQLException {
		Connection con=ConnectionPage.connection();
		String que="select * from registerPage where email=? and password=?";
		PreparedStatement pst=con.prepareStatement(que);
		pst.setString(1, email);
		pst.setString(2, password);
		ResultSet rs=pst.executeQuery();

		return rs;
	}
	public ResultSet userprofile(int userid) throws SQLException {
		Connection con=ConnectionPage.connection();
		String que="select * from registerPage where id=?";
		PreparedStatement pstmt=con.prepareStatement(que);
		pstmt.setInt(1, userid);
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	
}
