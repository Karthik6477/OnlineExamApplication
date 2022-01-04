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
@WebServlet("/deleteExamServlet")
public class DeleteExamDetailsServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int examId=Integer.parseInt(req.getParameter("examId"));
		
		ExamDetailsPojo edp=new ExamDetailsPojo(examId);
		ExamDetailsDao ed=new ExamDetailsDao();
		try {
			boolean flag=ed.deleteExam(edp);
			if(flag) {
				HttpSession session=req.getSession();
				session.setAttribute("deleteExamResult","Exam deleted successfully");
				res.sendRedirect("ExamDetails.jsp");
			}
			else {
				HttpSession session=req.getSession();
				session.setAttribute("deleteExamResult","Couldn't delete exam");
				res.sendRedirect("ExamDetails.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
