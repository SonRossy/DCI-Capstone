package com.servlets;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Member;

/**
 * Servlet implementation class customerProfileServlet
 */
@WebServlet("/bob")
public class customerProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HttpSession session = null;
	DatabaseConnection connect = new DatabaseConnection(); 
	Connection connection = connect.getConnection();
	Member member = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customerProfileServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		session = request.getSession();
		if(session.getAttribute("user")==null) {
			response.sendRedirect("CustLogin.jsp");
		}
		
		member = (Member) session.getAttribute("user");
		String userEmail = member.getUserEmail();

		String id = null, fname = null, mname = null, lname = null, DOB = null, email = null, street = null,
				apt = null, city = null, state = null, zip = null, country = null, phone = null, mobile = null, 
				secondary_address = null, coverage = null;
		
    	String queryCI = "Select * from customer_info where email='" +userEmail+ "';";
    	String queryCS = "Select * from customer_status where c_id=" +id+ ";";
    	
		
			if (connection!=null) {
	    		System.out.println("JSP connected");
	    		//System.out.println(member.getUserEmail());
	    	} else{
	    		System.out.println("JSP not connected");
	    	}
			
    	
    	try (PreparedStatement pstmt = connection.prepareStatement(queryCI)) {
			
			if (pstmt!=null) {
				System.out.println("JSP CI statement object initialized!");
			}
			
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					id = rs.getString("c_id");
					fname = rs.getString("first_name");
					mname = rs.getString("middle_name");
					lname = rs.getString("last_name");
					DOB = rs.getString("date_of_birth");
					email = rs.getString("email");
					street = rs.getString("street_address");
					apt = rs.getString("apt_number");
					city = rs.getString("city");
					state = rs.getString("state");
					zip = rs.getString("zip_code");
					country = rs.getString("country");
					phone = rs.getString("phone");
					mobile = rs.getString("mobile");
					secondary_address = rs.getString("secondary_address");
				}
			}catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
	    	}
    	
    	
    	try (PreparedStatement pstmt = connection.prepareStatement(queryCS)) {
			
			if (pstmt!=null) {
				System.out.println("JSP CS statement object initialized!");
			}
			
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					coverage = rs.getString("coverage_type");
				}	
		}catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
    	}		
		
		//request.setAttribute(name, o);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Claims.jsp");
		dispatcher.forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
