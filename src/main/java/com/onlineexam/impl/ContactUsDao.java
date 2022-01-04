package com.onlineexam.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.onlineexam.dao.ContactUsInterface;
import com.onlineexam.model.ContactUsPojo;
import com.onlineexam.util.ConnectionPage;

public class ContactUsDao implements ContactUsInterface {
	public void insertcomments(ContactUsPojo cup) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="insert into contactUs values(?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, cup.getUserid());
		pstmt.setString(2, cup.getEmail());
		pstmt.setString(3, cup.getComments());
		pstmt.executeQuery();
	}
}
