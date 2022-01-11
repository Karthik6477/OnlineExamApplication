package com.onlineexam.model;

public class ExamDetailsPojo {
	private int examId;
	private String examName;
	private String examType;
	private String difficultyLevel;
	private int durationMinutes;
	
	
	public int getDurationMinutes() {
		return durationMinutes;
	}
	public void setDurationMinutes(int durationMinutes) {
		this.durationMinutes = durationMinutes;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public String getExamType() {
		return examType;
	}
	public void setExamType(String examType) {
		this.examType = examType;
	}
	public String getDifficultyLevel() {
		return difficultyLevel;
	}
	public void setDifficultyLevel(String difficultyLevel) {
		this.difficultyLevel = difficultyLevel;
	}
	
	
	//for adding exam
	public ExamDetailsPojo( String examName, String examType, String difficultyLevel, int durationMinutes) {
		super();
		this.examName = examName;
		this.examType = examType;
		this.difficultyLevel = difficultyLevel;
		this.durationMinutes = durationMinutes;
	}
	//for updating exam
	public ExamDetailsPojo(String difficultyLevel, int durationMinutes,int examId) {
		super();
		this.examId = examId;
		this.difficultyLevel = difficultyLevel;
		this.durationMinutes = durationMinutes;
	}
	//for deleting exam
	public ExamDetailsPojo(int examId) {
		// TODO Auto-generated constructor stub
		this.examId=examId;
	}
	@Override
	public String toString() {
		return "ExamDetailsPojo [examId=" + examId + ", examName=" + examName + ", examType=" + examType
				+ ", difficultyLevel=" + difficultyLevel + ", durationMinutes=" + durationMinutes + "]";
	}
	
	
}
