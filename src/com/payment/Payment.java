package com.payment;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Customer;

/**
 * 
 * @author Son-Rossy Dorvil
 *in this class we are implementing payment for customers
 *
 */
public class Payment {
	
	public Payment() {
		//remember to create a constructor
		Stripe.apiKey="sk_test_vxcMsgXebXYGfdpz6hSTuf3H";
	}
	
	public void setUpCustomer() throws StripeException {
		//creating a hashmap to add the customers because the customer class take a hashmap as parameter
		Map<String,Object> customerParameter=new HashMap<>();
		//we add customer by giving them an email address like so
		customerParameter.put("email", "sondorvil@gmail.com");//we will get the email from database;
		Customer newCustomer=Customer.create(customerParameter);
	}
	
	public static Customer retrieveCustomer(String id) throws StripeException {
		Customer customer=Customer.retrieve(id);
		return customer;
	}
	
	public static void main(String[] args) throws StripeException {
		Payment payment=new Payment();
		Gson gson =new GsonBuilder().setPrettyPrinting().create();//so i can display object in json format
		System.out.println(gson.toJson(retrieveCustomer("cus_DiGn9ztegZfopH")));
	}

}
