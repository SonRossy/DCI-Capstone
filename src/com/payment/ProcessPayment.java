package com.payment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** Author:Son-Rossy
 * Servlet implementation class ProcessPayment
 */
@WebServlet("/ProcessPayment")
public class ProcessPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessPayment() {
        super();
        // TODO Auto-generated constructor stub
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
		String[] cardInfo=getFieldFromFrom(request);
		System.out.println(cardInfo[0]);
	}
	
	/**
	 * 
	 * @param request
	 * @return an array of card Information from fields.
	 */
	private String[] getFieldFromFrom(HttpServletRequest request) {
		String name=request.getParameter("cardname");
		String cardNumber=request.getParameter("cardnumber");
		String expMonth=request.getParameter("expmonth");
		String expYear=request.getParameter("expyear");
		String cvv=request.getParameter("cvv");
		String[] cardInfo= {name,cardNumber,expMonth,expYear,cvv};
		return cardInfo;
	}

}
