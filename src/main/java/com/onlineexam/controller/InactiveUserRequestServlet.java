package com.onlineexam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/request")
public class InactiveUserRequestServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		String email=req.getParameter("email");
		String reason=req.getParameter("reason");
		RegisterPojo rp=new RegisterPojo(email,reason);
		RegisterDao rd=new RegisterDao();
		try {
			rd.userrequest(rp);
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Your request has been sent');");
			out.println("location='index.jsp';");
			out.println("</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
