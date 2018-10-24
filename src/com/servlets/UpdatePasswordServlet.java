/*Author of servlet: Noel Cortes*/

package com.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Member;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
@WebServlet("/passwordUpdate")
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HttpSession session = null;
	DatabaseConnection connect = new DatabaseConnection();
	Connection connection = connect.getConnection();
	Member member = null;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePasswordServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		session = request.getSession();
		member = (Member) session.getAttribute("user");
		
		String message = null;
		String query = "UPDATE customer_info SET password=? WHERE email=? AND password=?;";
		
		String email = member.getUserEmail();
		String oldPassword = request.getParameter("oldPassword").trim();
		String newPassword = request.getParameter("newPassword").trim();
		String confirmNewPassword = request.getParameter("confirmNewPassword").trim();
		
		try(PreparedStatement pst = connection.prepareStatement(query)) {
			if(newPassword.equals(confirmNewPassword)) {
				pst.setString(1, newPassword);
				pst.setString(2, email);
				pst.setString(3, oldPassword);
			}
			
			if(pst.executeUpdate()!=0) {
				System.out.println("New password successfully saved into the database!");	
				message = "Password successfully updated!";
				request.setAttribute("message", message);
				RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
				dispatcher.forward(request, response);
			} else {
				message = "Invalid password(s). Please try again.";
				request.setAttribute("message", message);
				RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
				dispatcher.forward(request, response);			
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			message = "Invalid password(s). Please try again.";
			request.setAttribute("message", message);
			request.setAttribute("passwordTruncate", e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerProfile.jsp");
			dispatcher.forward(request, response);		}		
	}
}
