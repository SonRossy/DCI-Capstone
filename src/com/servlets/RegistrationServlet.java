package com.servlets;
/*
 * author Naresh Kc
 * Connects to local database
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ToLocalJDBC
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor. 
	 */
	public RegistrationServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String first_name, last_name, date_of_birth, email, password,password1;

		HttpSession session = request.getSession();
		DatabaseConnection connect=new DatabaseConnection();
		Connection connection =  connect.getConnection();
		

		first_name = request.getParameter("first-name");
		last_name = request.getParameter("last-name");
		date_of_birth = request.getParameter("first-name");
		password= request.getParameter("psw");
		email = request.getParameter("email");
		password1 = request.getParameter("psw-repeat");


//		last_name = session.getAttribute("last-name").toString();
//		date_of_birth = session.getAttribute("date-of-Birth").toString();
//		email = session.getAttribute("email").toString();
//		password = session.getAttribute("psw").toString();
//		password1 = session.getAttribute("psw-repeat").toString();

		String msg = "";
		try{
			if(connection != null)
			{
				String sql1 = "INSERT INTO customer_info (first_name, last_name, date_of_birth, email, password) VALUES(?,?,?,?,?); ";
				String sql2= "INSERT INTO customer_status (c_id) VALUES((SELECT c_id FROM customer_info WHERE email LIKE ?)); ";
				String sql3= "INSERT INTO customer_employment (c_id) VALUES((SELECT c_id FROM customer_info WHERE email LIKE ?)); ";
				PreparedStatement pst1 = connection.prepareStatement(sql1);
				PreparedStatement pst2 = connection.prepareStatement(sql2);
				PreparedStatement pst3 = connection.prepareStatement(sql3);
				pst1.setString(1, first_name);
				pst1.setString(2, last_name);
				pst1.setString(3, date_of_birth);
				pst1.setString(4, email);
				pst1.setString(5, password);
				
				pst2.setString(1, email);
				pst3.setString(1, email);
				
				pst1.executeUpdate();
				pst2.executeUpdate();
				pst3.executeUpdate();
				System.out.println("go cat!");
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
}}}