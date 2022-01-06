package com.onlineexam.controller;

public class PhoneNumberExistException extends Exception {
	public String phoneNumberExist() {
		return "Register.jsp";
	}

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Phone number already exist";
	}
	
}
