package com.onlineexam.controller;

import java.io.IOException;

import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/changepassword")
public class PasswordChangeServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long PhoneNumber=Long.parseLong(req.getParameter("phone_number"));
		String password=req.getParameter("password");
		String cpassword=req.getParameter("cpassword");
		RegisterPojo rp=new RegisterPojo(PhoneNumber, password, cpassword);
		RegisterDao rd=new RegisterDao();
		rd.changepassword(rp);
		resp.sendRedirect("index.jsp");
	}
}
