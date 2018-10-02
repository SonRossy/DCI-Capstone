package com.servlets;
/*
 * @author Son-Rossy
 * 
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * @author tristesse08
 *this class creates a connection to our database which can be used in any other class that need to connect to database
 */
public class DatabaseConnection{
	Connection connects = null;	
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
		 	connects=DriverManager.getConnection("jdbc:mysql://localhost:3306/dci2?trueSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","Note1025!");
	
			if(connects!=null){
				System.out.println("Connected to database!");
			}
			else System.out.println("error123");
	
		} catch (SQLException e) {
			 e.getMessage();
			e.printStackTrace();
		} catch (Exception e) {
	
			System.out.println("error3");
		}
		return connects;
		}
}
