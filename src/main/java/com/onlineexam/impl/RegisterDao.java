package com.onlineexam.impl;
import com.onlineexam.dao.*;
import com.onlineexam.model.RegisterPojo;
import com.onlineexam.util.ConnectionPage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao implements RegisterDaoInterface {
	public void fetchregister(RegisterPojo rd) throws ClassNotFoundException, SQLException {
		Connection con=ConnectionPage.connection();
		String query="insert into registerPage(first_name,last_name,email,password,confirm_password,phone_number) values(?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, rd.getFirst_name());
		ps.setString(2, rd.getLast_name());
		ps.setString(3, rd.getEmail());
		ps.setString(4, rd.getPassword());
		ps.setString(5, rd.getConfirm_password());
		ps.setLong(6, rd.getPhone_number());
		ps.executeUpdate();
	}
	public boolean changepassword(RegisterPojo rp) {
		Connection con=ConnectionPage.connection();
		boolean flag=false;
		int i=0;
		String query="update registerPage set password=?,confirm_password=? where phone_number=?";
		try {
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, rp.getPassword());
			pstmt.setString(2, rp.getConfirm_password());
			pstmt.setLong(3, rp.getPhone_number());
			i=pstmt.executeUpdate();
			if(i>0) {
				flag=true;
			}
			else {
				flag=false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}
	public ResultSet getEmailDetails(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from registerPage where email=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, rp.getEmail());
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	public ResultSet getPhoneDetails(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from registerPage where phone_number=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setLong(1, rp.getPhone_number());
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	public void updatestatus(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update registerPage set role='inactive' where id=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, rp.getUserid());
		pstmt.executeUpdate();
	}
	public void makeactive(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update registerPage set role='student' where id=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, rp.getUserid());
		pstmt.executeUpdate();
	}
	public void changephoto(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update registerPage set profilepicture=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, rp.getPhoto());
		pstmt.setInt(2, rp.getUserid());
		pstmt.executeUpdate();
	}
	public void editprofile(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update registerPage set first_name=?,last_name=?,email=?,phone_number=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, rp.getFirst_name());
		pstmt.setString(2, rp.getLast_name());
		pstmt.setString(3, rp.getEmail());
		pstmt.setLong(4, rp.getPhone_number());
		pstmt.setInt(5, rp.getUserid());
		pstmt.executeUpdate();
	}
	public void userrequest(RegisterPojo rp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update registerPage set reason=? where email=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, rp.getReason());
		pstmt.setString(2, rp.getEmail());
		pstmt.executeUpdate();
	}
}
