package com.onlineexam.impl;

import java.sql.Connection;
import java.sql.Date;
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
		String query="select * from scoreDetails where studentId=? order by examdate desc";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, studentId);
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	public static ResultSet filterbydate(ScoreDetails sd) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from scoreDetails where to_char(trunc(examdate),'yyyy-mm-dd')=? order by examdate desc";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, sd.getExamdate());
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	public static ResultSet filterbygrade(ScoreDetails sd) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from scoreDetails where grade=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, sd.getGrade());
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
	public static ResultSet filterbyPOF(ScoreDetails sd) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="select * from scoreDetails where passOrFail=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1, sd.getPassOrFail());
		ResultSet rs=pstmt.executeQuery();
		return rs;
	}
}
