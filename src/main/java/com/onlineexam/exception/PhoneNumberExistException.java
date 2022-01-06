package com.onlineexam.exception;

public class PhoneNumberExistException extends Exception{
	
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Phone number already exist";
	}
	
}
