package com.servlets;
import com.model.Customer;
/*
 * author Clarissa Mercado
 * Connects CustLogin to local database and send to ApplicationForm servlet
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		//checking if email was grabbed
		System.out.println("Get email as parameter: " + email);
		
		//creating session
		session = request.getSession();
		
		//declaring objects
		Statement stmt=null;
		ResultSet rs = null;
		
		try{
			
			//String sqlQuery = "SELECT email FROM customer_info where email='"+ email +"';";
			String sqlQuery= "SELECT * FROM customer_info where email= '"+email+"' and password= '"+psw+"';";
			//running above in mySQL
			stmt = connection.createStatement();
			//saving data fetched from above in the resultset object 
			rs = stmt.executeQuery(sqlQuery);
			System.out.println("Ran query");
			
			//Creating new Customer Object
			Customer customer = new Customer();
			
			
			//code by Son-Rossy
			if(rs.next()){
				/*//if there is a result then it means the user successfully logged in
				String userEmail=rs.getString(10);
				String first_name=rs.getString(2);
				String last_name=rs.getString(3);
				
				//usage of session
				session.setAttribute("email", userEmail);
				session.setAttribute("first_name", first_name);
				session.setAttribute("last_name", last_name);
				session.setAttribute("LoggedIn", "true");*/
				
				///Code by Clarissa Mercado
				customer.setUserEmail(rs.getString("email"));
				customer.setFirst_name(rs.getString("first_name"));
				customer.setLast_name(rs.getString("last_name"));
				//customer.setLoggedIn("true");
				session.setAttribute("user", customer);
				session.setAttribute("LogIn", "You are logged in");
				System.out.println(session.getId());
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
			
		}finally {
			try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

		}
	
	}

}
