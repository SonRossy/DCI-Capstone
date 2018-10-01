package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sessionServlet
 */
@WebServlet("/sessionServlet")
public class sessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.setAttribute("first-name",request.getParameter("first-name") );
		session.setAttribute("date-of-Birth",request.getParameter("date-of-Birth"));
		session.setAttribute("last-name", request.getParameter("last-name"));
		session.setAttribute("email",request.getParameter("email"));
		session.setAttribute("psw",request.getParameter("psw") );
		session.setAttribute("psw-repeat",request.getParameter("psw-repeat") );
	//	response.sendRedirect("ToLocalJDBC");
	}
}
