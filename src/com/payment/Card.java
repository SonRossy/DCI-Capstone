/**
 * Author: Son-Rossy D
 * this class add card info to customer account
 * and charge customer 
 */
package com.payment;

import java.util.HashMap;
import java.util.Map;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;
import com.stripe.model.Customer;
import com.stripe.model.Token;

public class Card {
	
	private String number;
	private String exp_month;
	private String exp_year;
	private String cvc;
	
	
	public Card(String number, String exp_month, String exp_year, String cvc) {
		Stripe.apiKey="sk_test_vxcMsgXebXYGfdpz6hSTuf3H";
		this.number = number;
		this.exp_month = exp_month;
		this.exp_year = exp_year;
		this.cvc = cvc;
	}
	
	/**
	 * this method returns void and take a Customer parameter to whom the card will be added
	 * @param customer
	 * @throws StripeException
	 */
	public void addCard(Customer customer) throws StripeException {
		
		Map<String,Object> cardParam=new HashMap<>();
		Map<String,Object> tokenParam=new HashMap<>();
		Map<String,Object> source=new HashMap<>();
		
		cardParam.put("number", number);
		cardParam.put("exp_month", exp_month);
		cardParam.put("exp_year", exp_year);
		cardParam.put("cvc", cvc);
		
		tokenParam.put("card", cardParam);
		
		//now let's create a token object that will take our token parameters
		Token token =Token.create(tokenParam);
		
		//token id  needs to be added to the source
		source.put("source", token.getId());
		
		//at the end we need to add the source card to the customer
		customer.getSources().create(source);
	}
	
	/**
	 * this method returns void, it charges the amount passed to the customer passed 
	 * @param amount
	 * @param customer
	 */
	public void chargeCard(String amount, String customerId) {
		Map<String,Object> chargeParam=new HashMap<>();
		chargeParam.put("amount", amount);
		chargeParam.put("currency", "usd");
		//now we have to add customer  to be charged
		chargeParam.put("customer", customerId);
		//now it's time to initiate the charge
		try {
			Charge.create(chargeParam);
			//will set message to be sent here 
		} catch (StripeException e) {
			//will set message to be sent here 
			e.printStackTrace();
		}
	}
	

}
