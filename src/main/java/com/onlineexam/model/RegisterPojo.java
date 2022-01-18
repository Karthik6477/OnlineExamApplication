package com.onlineexam.model;

public class RegisterPojo {
	private int userid;
	private String first_name;
	private String last_name;
	private String email;
	private String password;
	private String confirm_password;
	private long phone_number;
	private String photo;
	private String reason;
	
	
	
	public RegisterPojo(int userid, String email, String password) {
		super();
		this.userid = userid;
		this.email = email;
		this.password = password;
	}
	public RegisterPojo(String email, String reason) {
		super();
		this.email = email;
		this.reason = reason;
	}
	public RegisterPojo(long phone_number, String password, String confirm_password) {
		super();
		this.phone_number = phone_number;
		this.password = password;
		this.confirm_password = confirm_password;
	}
	public RegisterPojo(String first_name, String last_name, String email, String password, String confirm_password,
			long phone_number) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.password = password;
		this.confirm_password = confirm_password;
		this.phone_number = phone_number;
	}
	
	
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public RegisterPojo(int userid) {
		super();
		this.userid = userid;
	}
	
	public RegisterPojo(int userid, String photo) {
		super();
		this.userid = userid;
		this.photo = photo;
	}
	
	
	
	
	public RegisterPojo(int userid, String first_name, String last_name, String email, long phone_number) {
		super();
		this.userid = userid;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.phone_number = phone_number;
	}
	public String getConfirm_password() {
		return confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(long phone_number) {
		this.phone_number = phone_number;
	}
	
	
}
