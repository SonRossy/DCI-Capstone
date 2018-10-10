/**
 * Author:Son-Rossy Dorvil
 */
package com.payment;

import java.util.HashMap;
import java.util.Map;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;

public class Customers {
	private String email;
	private Customer customer;
	private boolean hasCustomer=false; 
	
	public Customers(String email) {
		Stripe.apiKey="sk_test_vxcMsgXebXYGfdpz6hSTuf3H";
		this.email = email;
	}
	
	/**
	 * this method returns a customer created by email passed to constructor
	 * @return
	 */
	public Customer createCustomer() {
		Map<String,Object> customerParameter=new HashMap<>();
		customerParameter.put("email", email);
		try {
			 customer=Customer.create(customerParameter);
			 hasCustomer=true;
			return customer;
			//will set message
		} catch (StripeException e) {
			//will set message
			e.printStackTrace();
		}
		return null; //if we could not create customer 
	}
	
	/**
	 * this method returns a customer according to id passed in the parameter
	 * @param id
	 * @return
	 * @throws StripeException
	 */
	public  Customer retrieveCustomer(String id) throws StripeException {
		Customer customer=Customer.retrieve(id);
		return customer;
	}
	
	/**
	 * this method return customer id to be saved in database once the customer was successfully created
	 * @return
	 */
	public String getCustomerId() {
		if(hasCustomer) {
			return customer.getId();
		}
		return null;
	}
	
}
