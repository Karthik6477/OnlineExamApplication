package com.onlineexam.model;

public class LoginPojo {
	private String email;
	private String password;
	
	public String getUsername() {
		return email;
	}
	public void setUsername(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LoginPojo(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	
}
