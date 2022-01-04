package com.onlineexam.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.dao.ExamDetailsDaoInterface;
import com.onlineexam.model.ExamDetailsPojo;
import com.onlineexam.util.ConnectionPage;
public class ExamDetailsDao implements ExamDetailsDaoInterface{
	static int i;
	public  boolean addExam(ExamDetailsPojo edp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="insert into examDetails values(?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1, edp.getExamId());
			pstmt.setString(2, edp.getExamName());
			pstmt.setString(3, edp.getExamType());
			pstmt.setString(4, edp.getDifficultyLevel());
			pstmt.setInt(5, edp.getDurationMinutes());
			i=pstmt.executeUpdate();
			if(i>0) {
				return true;
			}
			else {
				return false;
			}
	}
	public  boolean updateExam(ExamDetailsPojo edp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="update examDetails set examtype=?,difficultylevel=?,durationMinutes=? where examid=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, edp.getExamType());
			pstmt.setString(2, edp.getDifficultyLevel());
			pstmt.setInt(3, edp.getDurationMinutes());
			pstmt.setInt(4, edp.getExamId());
			i=pstmt.executeUpdate();
			if(i>0) {
				return true;
			}
			else {
				return false;
			}
	}
	public  boolean deleteExam(ExamDetailsPojo edp) throws SQLException {
		Connection con=ConnectionPage.connection();
		String query="delete from examDetails where examId=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setInt(1, edp.getExamId());
		i=pstmt.executeUpdate();
		if(i>0) {
			return true;
		}
		else {
			return false;
		}
	}
}
