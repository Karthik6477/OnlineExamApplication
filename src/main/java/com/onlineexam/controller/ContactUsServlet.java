package com.onlineexam.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.onlineexam.impl.ContactUsDao;
import com.onlineexam.model.ContactUsPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/contact")
public class ContactUsServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userid=Integer.parseInt(req.getParameter("uID"));
		String email=req.getParameter("email");
		String comments=req.getParameter("comments");
		ContactUsPojo cup=new ContactUsPojo(userid, email, comments);
		ContactUsDao cud=new ContactUsDao();
		try {
			cud.insertcomments(cup);
			resp.sendRedirect("UserMain.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
