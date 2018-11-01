package com.servlets;

import java.io.IOException;
import java.sql.*;
import java.util.regex.Pattern;

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
    
    /*Author of doGet method: Noel Cortes*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	int id = 0;
	
	//Getting the session
	session = request.getSession();
	//checking if the user object was associated to session (done in login servlet)
	//If the user is not logged in it will redirect
	if(session.getAttribute("user")==null) {
			response.sendRedirect("CustLogin.jsp");
	}else {
		
		member = (Member) session.getAttribute("user");
		String userEmail = member.getUserEmail();
		    	
		
			if (connection!=null) {
	    		System.out.println("Connected");
	    	} else{
	    		System.out.println("Not connected");
	    	}
			
			
	    String queryCI = "Select * from customer_info where email=?;";
    	try (PreparedStatement pst = connection.prepareStatement(queryCI)) {
			
			if (pst!=null) {
				System.out.println("JSP CI statement object initialized!");
				pst.setString(1, userEmail);
			}
			
			ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					id = rs.getInt("c_id");
					member.setFirst_name(rs.getString("first_name"));
					member.setMiddle_name(rs.getString("middle_name"));
					member.setLast_name(rs.getString("last_name"));
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
    	
    	String queryCS = "Select * from customer_status where c_id=?;";
    	try (PreparedStatement pst = connection.prepareStatement(queryCS)) {
			
			if (pst!=null) {
				System.out.println("JSP CS statement object initialized!");
				pst.setInt(1, id);
			}
			
			ResultSet rs = pst.executeQuery();
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
	/* author Clarissa Mercado
	* doPost function when member updates profile information 
	*/
		
		session = request.getSession();
		member = (Member) session.getAttribute("user");
		
		String profileMessage = null;
		String userEmail = member.getUserEmail();
		System.out.println(userEmail);
		String sql = "UPDATE customer_info SET first_name=?, middle_name=?, last_name=?, email=?, phone=?, mobile=? WHERE email =?;";
		
		String firstName, middleName, lastName, email, phone, mobile;
		
		firstName = request.getParameter("first_name");
		middleName = request.getParameter("middle_name");
		lastName = request.getParameter("last_name");
		email = request.getParameter("email");
		phone = request.getParameter("phone");
		mobile = request.getParameter("mobile");
		
		/*Author of RegEx & Java validation: Noel Cortes*/
		boolean regexFirstName = Pattern.matches("^(?=.*[a-zA-Z])(?!.*[!@#$&*])(?!.*[0-9]).+$", firstName);
		boolean regexMiddleName = Pattern.matches("^(?=.*[a-zA-Z])(?!.*[!@#$&*])(?!.*[0-9]).+$", middleName);
		boolean regexLastName = Pattern.matches("^(?=.*[a-zA-Z])(?!.*[!@#$&*])(?!.*[0-9]).+$", lastName);
		boolean regexEmail = Pattern.matches("^(?=.*[a-zA-Z])(?=.*[@]).+$", email);
		boolean regexPhone = Pattern.matches("^(?=.*[0-9])(?!.*[a-zA-Z])(?!.*[!@#$&*]).+$", phone);
		boolean regexMobile = Pattern.matches("^(?=.*[0-9])(?!.*[a-zA-Z])(?!.*[!@#$&*]).+$", mobile);
		
		String[] inputs = {"First Name", "Middle Name", "Last Name", "Email", "Phone", "Mobile"};
			String updateTarget = null;
		Boolean[] regexUpdate = {regexFirstName, regexMiddleName, regexLastName, regexEmail, regexPhone, regexMobile};
			boolean finalRegEx = false;
			for(int i=0;i<regexUpdate.length;i++) {
				if (regexUpdate[i]==false) {
					finalRegEx = false;
					updateTarget = inputs[i];
					break;
				} else {
					finalRegEx = true;
				}
			}

			//System.out.println(regexName);
			//System.out.println(reg.length());
		
		try (PreparedStatement pst1 = connection.prepareStatement(sql)) {
			if (finalRegEx && 
				firstName.length()<=20 &&
				middleName.length()<=20 && 
				lastName.length()<=20 &&
				email.length()<=25 && 
				phone.length()<=10 && 
				mobile.length()<=10) {
			
				System.out.println("Ran profile update query");
				
				pst1.setString(1, firstName);
				pst1.setString(2, middleName);
				pst1.setString(3, lastName);
				pst1.setString(4, email);
				pst1.setString(5, phone);
				pst1.setString(6, mobile);
				pst1.setString(7, userEmail);
				
				/*Author of session object update: Noel Cortes*/
				if(pst1.executeUpdate()!=0) {
					member.setFirst_name(firstName);
					member.setMiddle_name(middleName);
					member.setLast_name(lastName);
					member.setUserEmail(email);
					member.setPhone(phone);
					member.setMobile(mobile);
				}
				
				profileMessage = "Information successfully updated!";
				System.out.println(profileMessage);
				request.setAttribute("profileMessage", profileMessage);
				request.setAttribute("user", member);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
				dispatcher.forward(request, response);
				//request.setAttribute("user", member);
				//response.sendRedirect("index.jsp");
				
				/*RequestDispatcher dispatcher = request.getRequestDispatcher("CustLogin.jsp");
				dispatcher.forward(request, response);*/
				
			}else {
				profileMessage = "Invalid input(s):" + updateTarget + ". Please follow specific update requirements and try again.";
				System.out.println(profileMessage);
				request.setAttribute("profileMessage", profileMessage);
				RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
				dispatcher.forward(request, response);
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
			profileMessage = "Invalid input(s):" + updateTarget + ". Please follow specific update requirements and try again.";
			request.setAttribute("profileMessage", profileMessage);
			request.setAttribute("profileError", e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
			dispatcher.forward(request, response);
		}		
	}	
}
