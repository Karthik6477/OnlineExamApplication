package com.onlineexam.exception;

import java.sql.SQLIntegrityConstraintViolationException;

public class ExamNotDeleteException extends SQLIntegrityConstraintViolationException{

	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "Exam already registered so couldn't delete.";
	}
	
}
