package com.onlineexam.controller;

import java.io.IOException;
import java.sql.ResultSet;

import com.onlineexam.exception.InvalidUserException;
import com.onlineexam.impl.LoginDao;
import com.onlineexam.model.LoginPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/loginserv")
public class loginServlet extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		LoginPojo lp=new LoginPojo(email, password);
		LoginDao ld=new LoginDao();
		int userid;
		try {
			ResultSet result=ld.fetchlogin(lp);
			if(result.next()) {
				//res.sendRedirect("AdminMain.html");
				ResultSet rs=ld.validUser(email, password);
				rs.next();
				
				userid=rs.getInt(1);
				HttpSession ses=req.getSession();
				ses.setAttribute("userid", userid);
				
				
				String role=rs.getString(8);
				if(role.equals("admin")) {
					res.sendRedirect("AdminMain.html");
				}
				else if(role.equals("student")){
					res.sendRedirect("UserMain.jsp");
				}
				
				else {
					HttpSession session=req.getSession();
					session.setAttribute("loginResult","Invalid username or password");
					res.sendRedirect("index.jsp");
				
					//res.getWriter().println("Invalid Username or password!!");
				}
			}
			else {
				throw new InvalidUserException();
			}}
			catch(InvalidUserException iv) {
				String clear=iv.invaliduser();
				res.sendRedirect(clear);
			
			
//			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
	}
	
}
