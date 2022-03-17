package com.prerit;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.prerit.dao.LoginDao;


public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao dao = new LoginDao();
		if(dao.check(id, pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("emp_id", id);
			session.setAttribute("fname", dao.fname);
			session.setAttribute("sname", dao.sname);
			session.setAttribute("dob", dao.dob);
			session.setAttribute("phone", dao.phone);
			session.setAttribute("role", dao.role);
			session.setAttribute("ms", dao.ms);
			session.setAttribute("yb", dao.yb);
			
			session.setAttribute("ts", Integer.parseInt(dao.yb) + (Integer.parseInt(dao.ms) * 12));
			
			response.sendRedirect("Report.jsp");
		}
		else {
			// failed
			response.sendRedirect("Login.jsp");
		}
	}

}
