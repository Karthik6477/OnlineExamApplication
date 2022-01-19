package com.onlineexam.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/active")
public class InactiveUsersServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		int userid=Integer.parseInt(req.getParameter("userid"));
		RegisterPojo rp=new RegisterPojo(userid);
		RegisterDao rd=new RegisterDao();
		try {
			rd.makeactive(rp);
			session.setAttribute("madeactive", "Made as active");
			resp.sendRedirect("ShowInactiveUsers.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
