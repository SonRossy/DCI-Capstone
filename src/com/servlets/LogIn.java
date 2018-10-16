package com.servlets;
/*
 * author Clarissa Mercado
 * Connects CustLogin to local database and send to ApplicationForm servlet
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Member;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session = null;
	DatabaseConnection connect = new DatabaseConnection();
	Connection connection = connect.getConnection();
   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("<h1>Login page creation in process<h1/> ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting parameters from the login form from CustLogin.jsp
		String email=request.getParameter("email");
		String psw=request.getParameter("psw");
		System.out.println("Get email as parameter: " + email);
		
		//creating session
		session = request.getSession();
		
		//declaring objects
		PreparedStatement stmt=null;
		ResultSet rs = null;
		
		try{
			//String sqlQuery = "SELECT email FROM customer_info where email='"+ email +"';";
			String sqlQuery= "SELECT * FROM customer_info where email= ? and password=?;";
			//running above in mySQL
			stmt = connection.prepareStatement(sqlQuery);
			stmt.setString(1,email);
			stmt.setString(2, psw);
			psw=null;
			
			//saving data fetched from above in the resultset object 
			rs = stmt.executeQuery();
			System.out.println("Ran query");
			
			//Creating new Member object 
			Member member = new Member();
			
			//code by Son-Rossy
			if(rs.next()){
				/*//if there is a result then it means the user successfully logged in
				String userEmail=rs.getString("email");
				String first_name=rs.getString("first_name");
				String last_name=rs.getString("last_name");
				System.out.println("Email from the database: " + userEmail);
				
				//usage of session
				session.setAttribute("email", userEmail);
				session.setAttribute("first_name", first_name);
				session.setAttribute("last_name", last_name);*/
				
				member.setUserEmail(rs.getString("email"));
				member.setFirst_name(rs.getString("first_name"));
				member.setLast_name(rs.getString("last_name"));
				
				session.setAttribute("user", member);
				System.out.println("User object created and now associated with session. " + session.getId());
				
				//redirect to Homepage
				response.sendRedirect("index.jsp");
				
			}
			else{
				session.setAttribute("msg", "Invalid user name or password");
				//send them back to login page
				response.sendRedirect("CustLogin.jsp");
			}
			
		}catch(Exception e){
			System.out.print("Cause: "+ e.getMessage());
			
		}
		//response.getWriter().append("<h1>Login page creation in process<h1/> ").append(request.getContextPath());
	}

}
