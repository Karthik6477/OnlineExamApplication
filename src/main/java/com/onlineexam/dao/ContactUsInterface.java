package com.onlineexam.dao;

import java.sql.SQLException;

import com.onlineexam.model.ContactUsPojo;

public interface ContactUsInterface {
	public void insertcomments(ContactUsPojo cup) throws SQLException;
}
