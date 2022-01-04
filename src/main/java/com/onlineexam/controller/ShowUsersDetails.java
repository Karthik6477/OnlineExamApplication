package com.onlineexam.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineexam.model.ScoreDetails;
import com.onlineexam.util.ConnectionPage;

public class ShowUsersDetails {
	public  ResultSet showUsers() {
		Connection con=ConnectionPage.connection();
		String query="select * from registerPage where role='student'";
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			rs=st.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public static ResultSet viewAllScore() throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from scoreDetails";
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			rs=st.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
