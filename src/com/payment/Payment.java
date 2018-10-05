package com.payment;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;
import com.stripe.model.Customer;
import com.stripe.model.Token;

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
		/*//creating a hashmap to add the customers because the customer class take a hashmap as parameter
		Map<String,Object> customerParameter=new HashMap<>();
		Map<String,Object> cardParam=new HashMap<>();
		Map<String,Object> tokenParam=new HashMap<>();
		Map<String,Object> source=new HashMap<>();
		//we add customer by giving them an email address like so
		//customerParameter.put("email", "sondorvil@gmail.com");//we will get the email from database;
		//Customer newCustomer=Customer.create(customerParameter);
		
		Customer newCustomer=Customer.retrieve("cus_Dj2PsW0JY9SfXg");
		
		//customer card information which will get from form
		cardParam.put("number", "4242424242424242");
		cardParam.put("exp_month", "11");
		cardParam.put("exp_year", "2022");
		cardParam.put("cvc", "123");
		
		
		//we also need a token to add customer card info, now we have the token saved
		tokenParam.put("card", cardParam);
		
		//now let's create a token object that will take our token parameters
		Token token =Token.create(tokenParam);
		
		//token id  needs to be added to the source
		source.put("source", token.getId());
		
		
		
		//at the end we need to add the source card to the customer
		newCustomer.getSources().create(source);*/
	}
	
	public static Customer retrieveCustomer(String id) throws StripeException {
		Customer customer=Customer.retrieve(id);
		return customer;
	}
	
	public void chargeCustomer() throws StripeException {
		Map<String,Object> chargeParam=new HashMap<>();
		chargeParam.put("amount", "500");//this is how much customer will be charged 5 dollars in this case
		chargeParam.put("currency", "usd");//meaning dollar
		Customer newCustomer=Customer.retrieve("cus_Dj2PsW0JY9SfXg");
		
		//now we have to add customer  to be charged
		chargeParam.put("customer", newCustomer.getId());
		
		//now it's time to initiate the charge
		Charge.create(chargeParam);
		
	}
	
	
	public static void main(String[] args) throws StripeException {
		Payment payment=new Payment();
		//Gson gson =new GsonBuilder().setPrettyPrinting().create();//so i can display object in json format
		//System.out.println(gson.toJson(retrieveCustomer("cus_DiGn9ztegZfopH")));
		payment.chargeCustomer();
	}

}
