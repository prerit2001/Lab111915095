package com.prerit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDao {
	String sql1 = "insert into prerit_111915095_detail values (?, ?, ?, ?, ?, ?)";
	String sql2 = "insert into prerit_111915095_salary values (?, ?, ?, ?)";
	String url = "jdbc:mysql://localhost:3306/users";
	String username = "root";
	String password = "admin";
	
	
	public boolean check(String id, String pass, String fname, String sname, String dob, String phone, String role, String ms, String yb) {
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql1);
			st.setString(1, id);
			st.setString(2, fname);
			st.setString(3, sname);
			st.setString(4, dob);
			st.setString(5, phone);
			st.setString(6, pass);
			st.execute();
			
			
			PreparedStatement st2 = con.prepareStatement(sql2);
			st2.setString(1, id);
			st2.setString(2, role);
			st2.setString(3, ms);
			st2.setString(4, yb);
			st2.execute();
			
			con.close();
			
			return true;
			
		} catch (Exception e) {
		
			e.printStackTrace();
			return false;
		}
		
		
	}
	
}

