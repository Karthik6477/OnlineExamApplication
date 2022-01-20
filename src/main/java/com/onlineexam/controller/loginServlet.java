package com.onlineexam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import com.onlineexam.exception.InactiveUserException;
import com.onlineexam.exception.InvalidUserException;
import com.onlineexam.impl.RegisterDao;
import com.onlineexam.model.RegisterPojo;

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
		PrintWriter out=res.getWriter();
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		RegisterPojo rp=new RegisterPojo(0,email,password);
		RegisterDao rd=new RegisterDao();
		int userid;
		String username;
		try {
			ResultSet result=rd.fetchlogin(rp);
			if(result.next()) {
				ResultSet rs=rd.validUser(email, password);
				rs.next();
				
				userid=rs.getInt(1);
				username=rs.getString(2);
				HttpSession ses=req.getSession();
				ses.setAttribute("userid", userid);
				ses.setAttribute("username", username);
				
				String role=rs.getString(8);
				if(role.equals("admin")) {
					res.sendRedirect("AdminMain.jsp");
				}
				else if(role.equals("student")){
					RegisterPojo rp1=new RegisterPojo(userid);
					rd.updateactivedate(rp1);
					res.sendRedirect("UserMain.jsp");
				}
				else if(role.equals("inactive")) {
					throw new InactiveUserException();
				}
				
				else {
					HttpSession session=req.getSession();
					session.setAttribute("loginResult","Invalid username or password");
				}
			}
			else {
				throw new InvalidUserException();
			}}
			catch(InvalidUserException iv) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Invalid email id or password');");
				out.println("location='index.jsp';");
				out.println("</script>");
				
		}catch(InactiveUserException e) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('You are in inactive mode.Request admin to activate');");
			out.println("location='Request.jsp';");
			out.println("</script>");
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		
	}
	
}
