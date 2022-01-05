package com.onlineexam.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.model.ContactUsPojo;

public interface ContactUsInterface {
	public void insertcomments(ContactUsPojo cup) throws SQLException;
	public ResultSet showCommentsAdmin() throws SQLException;
}
