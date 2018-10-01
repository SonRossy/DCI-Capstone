package com.servlets;
/*
 * @author Naresh Kc
 * 
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection{
	 Connection connects = null;	
	public  Connection  getConnection() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	 	connects =DriverManager.getConnection("jdbc:mysql://localhost:3306/dci?trueSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","root123");
		if(connects!=null){
			
		}
		else System.out.println("error123");

	} catch (SQLException e) {
		 e.getMessage();
		e.printStackTrace();
	} catch (Exception e) {

		System.out.println("error3");
	}
	return connects;
}}
