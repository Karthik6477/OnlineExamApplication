package com.onlineexam.model;

public class ContactUsPojo {
	private int userid;
	private String email;
	private String comments;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public ContactUsPojo(int userid, String email, String comments) {
		super();
		this.userid = userid;
		this.email = email;
		this.comments = comments;
	}
	
	

}
