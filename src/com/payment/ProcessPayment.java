package com.payment;

import java.io.IOException;
import java.sql.Connection;
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

import com.model.Member;
import com.servlets.DatabaseConnection;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;




/** Author:Son-Rossy
 * Servlet implementation class ProcessPayment
 */
@WebServlet("/ProcessPayment")
public class ProcessPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DatabaseConnection connects = new DatabaseConnection();
	private Connection connection = connects.getConnection();
	private HttpSession session = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessPayment() {
        super();
        Stripe.apiKey="sk_test_vxcMsgXebXYGfdpz6hSTuf3H";
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
		session = request.getSession();
		String email =((Member) (session.getAttribute("user"))).getUserEmail();
		System.out.println("email from son "+email);
		String sql="Select payementId from customer_info where email like ?";
		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet res=pst.executeQuery();
			if (res.next()) {
				String customerId= res.getString("payementId");
				chargeCustomer( request,response, customerId);
			}
		} catch (SQLException | StripeException e) {
			e.printStackTrace();
			session.setAttribute("paymentMessage", e.getMessage());
			response.sendRedirect("payment.jsp");
			
		}catch(Exception e) {
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
	}
	
	/**
	 * 
	 * @param request
	 * @return an array of card Information from html form fields.
	 */
	private String[] getFieldFromFrom(HttpServletRequest request) {
		String name=request.getParameter("cardname");
		String cardNumber=request.getParameter("cardnumber");
		String expMonth=request.getParameter("expmonth");
		String expYear=request.getParameter("expyear");
		String cvv=request.getParameter("cvv");
		String save=request.getParameter("save");
		System.out.println(save);
		String[] cardInfo= {name,cardNumber,expMonth,expYear,cvv};
		return cardInfo;
	}
	
	/**
	 * this method charge a customer
	 * @param request
	 * @param customerId
	 * @throws StripeException
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void chargeCustomer(HttpServletRequest request,HttpServletResponse response, String customerId) throws StripeException, IOException, ServletException {
		Customer customer=Customer.retrieve(customerId);
		String[] cardInfo=getFieldFromFrom(request);
		System.out.println(" son request "+request.getParameter("save"));
		Card card=new Card(cardInfo[1],cardInfo[2],cardInfo[3],cardInfo[4]);
	 if(request.getParameter("save")!=null) {
		 //
		 if(!Card.hasCardOnFile(customerId)) {
			 session.setAttribute("paymentMessage", "you have no card on file");
			 response.sendRedirect("payment.jsp");
		 }
		 else {
			 card.chargeCard("5000", customerId);
			 session.setAttribute("cpaymentMessage", Card.cmessage);
			 session.setAttribute("paymentMessage", Card.message);
			 session.setAttribute("paymentDate", Card.paymentDate);
			 //session.getRequestDispatcher("customerProfile.jsp").forward(request, response);
			 response.sendRedirect("customerProfile.jsp");
		 }
		 
	 }
	 else{
		 //add new card
		 card.addCard(customer);
		 card.chargeCard("4000", customerId);
		 session.setAttribute("cpaymentMessage", Card.cmessage);
		 session.setAttribute("paymentMessage", Card.message);
		 session.setAttribute("paymentDate", Card.paymentDate);
		 response.sendRedirect("customerProfile.jsp");
	 }
	}

}
