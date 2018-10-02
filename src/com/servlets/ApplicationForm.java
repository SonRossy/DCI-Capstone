
package com.servlets;
/*
 * author Clarissa Mercado
 * Connects to Applyingforinsurance.html to local dataase
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class ApplicationForm
 */
@WebServlet("/ApplicationForm")
public class ApplicationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection connects = new DatabaseConnection();
	Connection connection = connects.getConnection();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationForm() {
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
		
		

//		String fname, mname, lname, sex, primaryaddress, aptnumber, city, state, country, zip, mailingaddress, citizen, imstatus, status, statehouseholdmems, marital, ethnicity, disabled, job, compName, vet, income, taxid; 
		String middle_name, SSN, street_address, apt_number, city, state, zip_code, country, phone, mobile, secondary_address;	
		String ethnicity, gender, veteran, disability, citizenship, immigration, marital_status, number_of_dependents;
		String company_name, profession, annual_income, fed_tax_id;
		
		HttpSession session = request.getSession();
		//grabbing the saved email attribtue from LogIn servlet
		String email = (String) session. getAttribute("email");
		System.out.println("Email from gsession: " + email);
		
		
		//get fields for table: customer_info
		middle_name = request.getParameter("mname");
		SSN = request.getParameter("ssn");
		street_address= request.getParameter("primaryaddress");
		apt_number = request.getParameter("aptnumber");
		city = request.getParameter("city");
		state = request.getParameter("state");
		zip_code = request.getParameter("zip");
		country = request.getParameter("country");
		secondary_address = request.getParameter("mailingaddress");
		phone = request.getParameter("tel");
		
		//get fields for table: customer_status
		ethnicity = request.getParameter("ethinicity");
		gender = request.getParameter("sex");
		veteran = request.getParameter("survey");
		disability = request.getParameter("survey2");
		citizenship = request.getParameter("survey1");
		immigration = request.getParameter("imstatus");
		marital_status = request.getParameter("marital");
		number_of_dependents = request.getParameter("householdmems");
		 
		 
		//get fields for table:customer_employment
		company_name = request.getParameter("compName");
		profession = request.getParameter("job");
		annual_income = request.getParameter("income");
		fed_tax_id = request.getParameter("taxid");

		String msg = "";
		try{
			if(connection != null)
			{	
				

				String sql = "UPDATE customer_info SET middle_name=?,SSN = ?, street_address=?, apt_number=?, city=?, state=?, zip_code=?, country=?, secondary_address =?, phone=? WHERE email ='" + email + "';";
				String sql2= "UPDATE customer_status SET ethnicity=?, gender=?, veteran=?, disability=?, citizenship=?, immigration=?, marital_status=?, number_of_dependents=? WHERE c_id = ((SELECT c_id FROM customer_info WHERE email = '" + email + "'));" ;
				String sql3= "UPDATE customer_employment SET company_name=?, profession=?, annual_income=?, fed_tax_id=? WHERE c_id = ((SELECT c_id FROM customer_info WHERE email = '" + email + "'));" ;
				
				PreparedStatement pst1 = connection.prepareStatement(sql);
				PreparedStatement pst2 = connection.prepareStatement(sql2);
				PreparedStatement pst3 = connection.prepareStatement(sql3);
				
				pst1.setString(1, middle_name);
				pst1.setString(2, SSN);
				pst1.setString(3, street_address);
				pst1.setString(4, apt_number);
				pst1.setString(5, city);
				pst1.setString(6, state);
				pst1.setString(7, zip_code);
				pst1.setString(8, country);
				pst1.setString(9, secondary_address);
				pst1.setString(10, phone);
				
				pst2.setString(1, ethnicity);
				pst2.setString(2, gender);
				pst2.setString(3, veteran);
				pst2.setString(4, disability);
				pst2.setString(5, citizenship);
				pst2.setString(6, immigration);
				pst2.setString(7, marital_status);
				pst2.setString(8, number_of_dependents);
				
				pst3.setString(1, company_name);
				pst3.setString(2, profession);
				pst3.setString(3, annual_income);
				pst3.setString(4,  fed_tax_id);
				
				pst1.executeUpdate();
				pst2.executeUpdate();
				pst3.executeUpdate();
				
				
				System.out.println("Sussessfully updated and saved into the database!");
				
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
}}
	


}
