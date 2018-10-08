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
@WebServlet("/customerProfile")
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
		
		String id = null;
		
		session = request.getSession();
		if(session.getAttribute("user")==null) {
			response.sendRedirect("CustLogin.jsp");
		}else {
		
		member = (Member) session.getAttribute("user");
		String userEmail = member.getUserEmail();
		    	
		
			if (connection!=null) {
	    		System.out.println("JSP connected");
	    		//System.out.println(member.getUserEmail());
	    	} else{
	    		System.out.println("JSP not connected");
	    	}
			
			
	    String queryCI = "Select * from customer_info where email='" +userEmail+ "';";
    	try (PreparedStatement pstmt = connection.prepareStatement(queryCI)) {
			
			if (pstmt!=null) {
				System.out.println("JSP CI statement object initialized!");
			}
			
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					id = rs.getString("c_id");
					member.setFirst_name(rs.getString("first_name"));
					member.setMiddle_name(rs.getString("middle_name"));
					member.setDOB(rs.getString("date_of_birth"));
					member.setStreet(rs.getString("street_address"));
					member.setApt(rs.getString("apt_number"));
					member.setCity(rs.getString("city"));
					member.setState(rs.getString("state"));
					member.setZip(rs.getString("zip_code"));
					member.setCountry(rs.getString("country"));
					member.setPhone(rs.getString("phone"));
					member.setMobile(rs.getString("mobile"));
					member.setSecondaryAddress(rs.getString("secondary_address"));
				}
			}catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
	    	}
    	
    	String queryCS = "Select * from customer_status where c_id=" +id+ ";";
    	try (PreparedStatement pstmt = connection.prepareStatement(queryCS)) {
			
			if (pstmt!=null) {
				System.out.println("JSP CS statement object initialized!");
			}
			
			ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					member.setCoverage(rs.getString("coverage_type"));
				}
		}catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
    	}		
		
		request.setAttribute("user", member);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
		dispatcher.forward(request, response);	
		}}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
