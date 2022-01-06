package com.onlineexam.exception;

public class InvalidUserException extends Exception{
	public String invaliduser() {
		return "index.jsp";
	}
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Invalid Username or Password";
	}
}
