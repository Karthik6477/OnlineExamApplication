package com.onlineexam.exception;

public class InvalidPhoneNumberException extends Exception{

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Entered Phone number is invalid";
	}
	
}
