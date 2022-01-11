package com.onlineexam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.model.ExamDetailsPojo;

public interface ExamDetailsDaoInterface {
	public  boolean addExam(ExamDetailsPojo edp) throws SQLException ;
	public   boolean updateExam(ExamDetailsPojo edp) throws SQLException;
	public  boolean deleteExam(ExamDetailsPojo edp) throws SQLException;
	public  ResultSet showExams();
	public  ResultSet showExamsDetails(ExamDetailsPojo edp);
}
