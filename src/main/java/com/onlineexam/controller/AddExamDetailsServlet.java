package com.onlineexam.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.impl.ExamDetailsDao;
import com.onlineexam.model.ExamDetailsPojo;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/addExamDetails")
public class AddExamDetailsServlet extends HttpServlet {
	//method for adding exam
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int examId=Integer.parseInt(req.getParameter("examId"));
		String examName=req.getParameter("examName");
		String examType=req.getParameter("examType");
		String difficultyLevel=req.getParameter("difficultyLevel");
		int durationMinutes=Integer.parseInt(req.getParameter("durationMinutes"));
		
		ExamDetailsPojo edp=new ExamDetailsPojo(examId,examName,examType,difficultyLevel,durationMinutes);
		ExamDetailsDao ed=new ExamDetailsDao();
		HttpSession session=req.getSession();
		ResultSet rs=ShowExamDetails.showExams();
		try {
			int duration=rs.getInt(5);
			session.setAttribute("duration", duration);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			boolean flag=ed.addExam(edp);
			if(flag) {
				
				session.setAttribute("addExamResult","Exam added successfully");
				res.sendRedirect("ShowExams.jsp");
			}
			else {
				//HttpSession session=req.getSession();
				session.setAttribute("addExamResult","Couldn't add exam");
				res.sendRedirect("ShowExams.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
