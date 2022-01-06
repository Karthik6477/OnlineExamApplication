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
import jakarta.servlet.http.HttpSession;
@WebServlet("/register")
public class registerServlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String confirm_password=req.getParameter("cpassword");
		Long phone_number=Long.parseLong(req.getParameter("phone_number"));
		RegisterPojo rd=new RegisterPojo(firstName, lastName, email, password,confirm_password, phone_number);
		RegisterDao rdao=new RegisterDao();
		try {
			
			ResultSet rs=rdao.getEmailDetails(rd);
			ResultSet rs1=rdao.getPhoneDetails(rd);
			//rs.next();
			if(rs.next()){
				if(email.equals(rs.getString(4))) {
					throw new EmailAlreadyExistException();
				}
			}
			
			
			//rs1.next();
			if(rs1.next()) {
				if(phone_number==(rs1.getLong(7))) {
					throw new PhoneNumberExistException();
				}
			}
			
			
			rdao.fetchregister(rd);
			res.sendRedirect("index.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		catch (EmailAlreadyExistException ea) {
			// TODO Auto-generated catch block
			//String clear=ea.emailexist();
			//session.setAttribute("emailexist","Email already exist");
			res.sendRedirect("errorpage.jsp?message="+ea.getMessage()+"&url=Register.jsp");
		} 
		catch (PhoneNumberExistException pn) {
			// TODO Auto-generated catch block
			//String Error=pn.phoneNumberExist();
			//session.setAttribute("phonenumberexist","Phone number already exist");
			res.sendRedirect("errorpage.jsp?message="+pn.getMessage()+"&url=Register.jsp");
		}
	}
}
