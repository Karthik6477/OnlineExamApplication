package com.onlineexam.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineexam.dao.*;
import com.onlineexam.model.ScoreDetails;
import com.onlineexam.util.ConnectionPage;
public class ScoreDetailsDao implements ScoreDetailsDaoInterface{
	public void insertScore(ScoreDetails sd) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="insert into scoreDetails(studentid,examid,examname,score,passorfail,grade,examdate) values(?,?,?,?,?,?,sysdate)";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, sd.getStudentId());
		pstmt.setInt(2, sd.getExamId());
		pstmt.setString(3, sd.getExamName());
		pstmt.setInt(4, sd.getScore());
		pstmt.setString(5, sd.getPassOrFail());
		pstmt.setString(6, sd.getGrade());
		pstmt.executeUpdate();
	}
	public ResultSet viewScore(int studentId) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from scoreDetails where studentId=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, studentId);
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	
	
}
