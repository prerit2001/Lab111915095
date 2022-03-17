package com.prerit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String sql = "select * from prerit_111915095_detail where employee_id_number=? and password=?";
	String url = "jdbc:mysql://localhost:3306/users";
	String username = "root";
	String password = "admin";
	
	public String fname = "NULL";
	public String sname = "NULL";
	public String dob = "NULL";;
	public String phone = "NULL";
	public String role = "NULL";
	public String ms = "NULL";
	public String yb = "NULL";
	
	
	public boolean check(String uname, String pass) {
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				
				fname = rs.getString("first_name");
				sname = rs.getString("last_name");
				dob = rs.getString("date_of_birth");
				phone= rs.getString("contact_number");
				
				sql = "select * from prerit_111915095_salary where employee_id_number=?";
				st = con.prepareStatement(sql);
				st.setString(1, uname);
				rs = st.executeQuery();
				
				if(rs.next()) {
					role = rs.getString("job_role");
					ms = rs.getString("monthly_salary");
					yb = rs.getString("yearly_bonus");
				}
				
				return true;
			}
			
		} catch (Exception e) {
		
			e.printStackTrace();
		
		}
		
		return false;
	}
}
