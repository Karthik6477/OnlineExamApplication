package com.onlineexam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.onlineexam.exception.ExamNotDeleteException;
import com.onlineexam.impl.ExamDetailsDao;
import com.onlineexam.model.ExamDetailsPojo;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
@WebServlet("/deleteExamServlet")
public class DeleteExamDetailsServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PrintWriter out=res.getWriter();
		HttpSession session1=req.getSession();
		int examId=Integer.parseInt(req.getParameter("examid").toString());
		ExamDetailsPojo edp=new ExamDetailsPojo(examId);
		ExamDetailsDao ed=new ExamDetailsDao();
		try {
			boolean flag=ed.deleteExam(edp);
			if(flag) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Exam deleted successfully');");
				out.println("location='ShowExams.jsp';");
				out.println("</script>");
			}
			else {
				throw new ExamNotDeleteException();
			}
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				throw new ExamNotDeleteException();
			}
			catch(ExamNotDeleteException end) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Exam already registered, so could not delete');");
				out.println("location='ShowExams.jsp';");
				out.println("</script>");
			}
			
			e.printStackTrace();
		}
	}
}
