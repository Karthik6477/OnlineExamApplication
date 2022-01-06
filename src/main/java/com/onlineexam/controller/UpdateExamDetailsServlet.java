package com.onlineexam.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.onlineexam.impl.ExamDetailsDao;
import com.onlineexam.model.ExamDetailsPojo;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/updateExamDetails")
public class UpdateExamDetailsServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		HttpSession session1=req.getSession();
		//int examId=Integer.parseInt(session1.getAttribute("examid").toString());
		int examId=Integer.parseInt(req.getParameter("examid").toString());
		String difficultyLevel=req.getParameter("difficultyLevel");
		int durationMinutes=Integer.parseInt(req.getParameter("durationMinutes"));
		
		ExamDetailsPojo edp=new ExamDetailsPojo(difficultyLevel,durationMinutes,examId);
		ExamDetailsDao ed=new ExamDetailsDao();
		HttpSession session=req.getSession();
		
		try {
			boolean flag=ed.updateExam(edp);
			if(flag) {
				
				session.setAttribute("updateExamResult","Exam updated successfully");
				res.sendRedirect("ShowExams.jsp");
			}
			else {
				//HttpSession session=req.getSession();
				session.setAttribute("updateExamResult","Couldn't update exam");
				res.sendRedirect("ShowExams.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
