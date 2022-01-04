package com.onlineexam.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.onlineexam.impl.FeedbackDetailsDao;
import com.onlineexam.model.FeedbackDetailsPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/feedbackDetails")
public class FeedbackServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpSession session=req.getSession();
		int userId=Integer.parseInt(req.getParameter("uID"));
		int ExamId=Integer.parseInt(req.getParameter("examId"));
		String Feedback=req.getParameter("feedback");
		FeedbackDetailsPojo fdp=new FeedbackDetailsPojo(userId,ExamId,Feedback);
		FeedbackDetailsDao fdd=new FeedbackDetailsDao();
		try {
			fdd.insertFeedback(fdp);
			resp.sendRedirect("UserMain.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
