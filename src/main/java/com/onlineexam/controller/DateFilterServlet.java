package com.onlineexam.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.onlineexam.impl.ScoreDetailsDao;
import com.onlineexam.model.ScoreDetailsPojo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/filterdate")
public class DateFilterServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date=req.getParameter("date");
		try {
			ScoreDetailsPojo sd=new ScoreDetailsPojo(date);
			ScoreDetailsDao sdd=new ScoreDetailsDao();
			sdd.filterbydate(sd);
			resp.sendRedirect("FilterExamsByDate.jsp?examdate="+date);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
