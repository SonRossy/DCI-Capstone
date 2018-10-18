package com.servlets;
/*
 * @author Son-Rossy
 * 
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Son-Rossy-(tristesse08)
 *this class creates a connection to our database which can be used in any other class that need to connect to database
 */
public class DatabaseConnection{
	Connection connect = null; 	 
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	
		 	connect=DriverManager.getConnection("jdbc:mysql://sql3.freemysqlhosting.net:3306/sql3259516?trueSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&autoReconnect=true","sql3259516","ClnmVEeuCQ");
			if(connect!=null){
				System.out.println("Connected to database!");
			}
			else System.out.println("error123");
	
		} catch (SQLException e) {
			 e.getMessage();
			e.printStackTrace();
		} catch (Exception e) {
	
			System.out.println("error3");
		}
		return connect;
		}
}
