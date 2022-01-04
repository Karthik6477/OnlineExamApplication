package com.onlineexam.controller;
import java.io.IOException;
import java.sql.SQLException;

import com.onlineexam.impl.ScoreDetailsDao;
import com.onlineexam.model.ScoreDetails;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/scoreDetails")
public class ScoreDetailsServlet extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int userId=Integer.parseInt(req.getParameter("uID"));
		int ExamId=Integer.parseInt(req.getParameter("examId"));
		String ExamName=req.getParameter("examName");
		int score=Integer.parseInt(req.getParameter("score"));
		String passOrFail=req.getParameter("passOrFail");
		String grade=req.getParameter("grade");
		ScoreDetails sd=new ScoreDetails(userId,ExamId,ExamName,score,passOrFail,grade);
		ScoreDetailsDao sdd=new ScoreDetailsDao();
		try {
			sdd.insertScore(sd);
			res.sendRedirect("StudentScoreDetails.jsp");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
