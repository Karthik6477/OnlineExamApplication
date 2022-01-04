package com.onlineexam.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineexam.util.ConnectionPage;

public class ShowExamDetails {
	public static ResultSet showExams() {
		Connection con=ConnectionPage.connection();
		String query="select examId,examName,examType,difficultyLevel,durationMinutes from examDetails";
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
