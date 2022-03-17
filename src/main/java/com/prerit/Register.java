package com.prerit;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.prerit.dao.RegisterDao;

public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String fname = request.getParameter("name1");
		String sname = request.getParameter("name2");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String role = request.getParameter("role");
		String ms = request.getParameter("ms");
		String yb = request.getParameter("yb");
		
		RegisterDao dao = new RegisterDao();
		if(dao.check(id, pass, fname, sname, dob, phone, role, ms, yb)) {
			response.sendRedirect("Login.jsp");
		}
		else {
			response.sendRedirect("Signup.jsp");
		}
	}

}
