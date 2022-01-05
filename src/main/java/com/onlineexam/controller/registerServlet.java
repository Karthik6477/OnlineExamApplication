package com.onlineexam.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.exception.EmailAlreadyExistException;
import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class registerServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PrintWriter out=res.getWriter();
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String confirm_password=req.getParameter("cpassword");
		Long phone_number=Long.parseLong(req.getParameter("phone_number"));
		RegisterPojo rd=new RegisterPojo(firstName, lastName, email, password,confirm_password, phone_number);
		RegisterDao rdao=new RegisterDao();
		try {
			rdao.fetchregister(rd);
//			ResultSet rs=rdao.getUserDetails(rd);
//			if(email.equals(rs.getString(4))) {
//				throw new EmailAlreadyExistException();
//			}
			res.sendRedirect("index.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
//		catch (EmailAlreadyExistException ea) {
//			// TODO Auto-generated catch block
//			String clear=ea.emailexist();
//			res.sendRedirect(clear);
//		}
	}
}
