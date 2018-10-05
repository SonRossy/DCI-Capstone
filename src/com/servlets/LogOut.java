package com.servlets;
/*
 * Author Clarissa Mercado
 * Will connect to loginout button when created 
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOut
 */
@WebServlet("/LogOut")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session = null;  
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogOut() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		session = request.getSession();
		
		//Will update once we have a logout button or link
		try{
			/*session.removeAttribute("email");
			session.removeAttribute("first_name");
			session.removeAttribute("last_name");
			session.setAttribute("LoggedIn","false");*/
			session.getAttribute("user");
			session.removeAttribute("user");
			session.setAttribute("msg", "User successfully logged out");
			session.invalidate();
			//Redirect to homepage 
			response.sendRedirect("index.jsp");
			System.out.println(session.getId());

		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
	}

}
