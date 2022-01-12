package com.onlineexam.exception;

public class InactiveUserException extends Exception {

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "You are in inactive mode.Request admin";
	}

}
