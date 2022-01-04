package com.onlineexam.model;

public class FeedbackDetailsPojo {
	private int userid;
	private int examid;
	private String feedback;
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getExamid() {
		return examid;
	}

	public void setExamid(int examid) {
		this.examid = examid;
	}

	

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public FeedbackDetailsPojo(int userid, int examid, String feedback) {
		super();
		this.userid = userid;
		this.examid = examid;
		this.feedback = feedback;
	}

	
	
	
}
