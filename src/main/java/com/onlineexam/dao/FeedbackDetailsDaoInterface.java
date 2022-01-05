package com.onlineexam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.model.FeedbackDetailsPojo;

public interface FeedbackDetailsDaoInterface {
	public void insertFeedback(FeedbackDetailsPojo fdp) throws SQLException;
	public ResultSet showFeedback(int userid) throws SQLException;
	public ResultSet showFeedbackAdmin() throws SQLException;
}
