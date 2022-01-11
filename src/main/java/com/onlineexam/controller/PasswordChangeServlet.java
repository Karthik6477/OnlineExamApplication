package com.onlineexam.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.onlineexam.exception.InvalidPhoneNumberException;
import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/changepassword")
public class PasswordChangeServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		boolean flag;
		Long adminnum=8870623149l;
		Long PhoneNumber=Long.parseLong(req.getParameter("phone_number"));
		String password=req.getParameter("password");
		String cpassword=req.getParameter("cpassword");
		RegisterPojo rp=new RegisterPojo(PhoneNumber, password, cpassword);
		RegisterDao rd=new RegisterDao();
		
		try {
		
		if(PhoneNumber.equals(adminnum)) {
			throw new InvalidPhoneNumberException();
			
			
		}
		else {
			flag=rd.changepassword(rp);
			if(flag) {
				session.setAttribute("changed", "Your password has changed");
				resp.sendRedirect("index.jsp");
			}
			else {
				throw new InvalidPhoneNumberException();
			}
		}
		}catch(InvalidPhoneNumberException ipn) {
			resp.sendRedirect("errorpage.jsp?message="+ipn.getMessage()+"&url=UserPasswordUpdateServlet.jsp");
		} 
		
	}
}
