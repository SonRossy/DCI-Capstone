/**
 * Author: Son-Rossy 
 * this class add card info to customer account
 * and charge customer 
 */
package com.payment;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;
import com.stripe.model.Customer;
import com.stripe.model.Token;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.stripe.Stripe;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Card {

	public static String message;
	public static String cmessage;
	public static String paymentDate;
	private String number;
	private String exp_month;
	private String exp_year;
	private String cvc;

	public Card(String number, String exp_month, String exp_year, String cvc) {
		Stripe.apiKey = "sk_test_vxcMsgXebXYGfdpz6hSTuf3H";
		this.number = number;
		this.exp_month = exp_month;
		this.exp_year = exp_year;
		this.cvc = cvc;
	}

	/**
	 * this method returns void and take a Customer parameter to whom the card will
	 * be added
	 * 
	 * @param customer
	 * @throws StripeException
	 */
	public void addCard(Customer customer) throws StripeException {

		Map<String, Object> cardParam = new HashMap<>();
		Map<String, Object> tokenParam = new HashMap<>();
		Map<String, Object> source = new HashMap<>();

		cardParam.put("number", number);
		cardParam.put("exp_month", exp_month);
		cardParam.put("exp_year", exp_year);
		cardParam.put("cvc", cvc);

		tokenParam.put("card", cardParam);

		// now let's create a token object that will take our token parameters
		Token token = Token.create(tokenParam);

		// token id needs to be added to the source
		source.put("source", token.getId());

		// at the end we need to add the source card to the customer
		customer.getSources().create(source);
	}

	/**
	 * this method returns void, it charges the amount passed to the customer passed
	 * 
	 * @param amount
	 * @param customer
	 */
	public void chargeCard(String amount, String customerId) {
		Map<String, Object> chargeParam = new HashMap<>();
		chargeParam.put("amount", amount);
		chargeParam.put("currency", "usd");
		// now we have to add customer to be charged
		chargeParam.put("customer", customerId);
		// now it's time to initiate the charge
		try {
			Charge.create(chargeParam);
			cmessage="successful";
			paymentDate=("Last Payment was on "+new SimpleDateFormat("dd-MM-yyyy").format(new Date()));
		} catch (StripeException e) {
			message=e.getMessage();
			cmessage="not successful";
			e.printStackTrace();
		}
	}

	/**
	 * this method check if customer has a card on file
	 * 
	 * @param customerId
	 * @return
	 */
	public static boolean hasCardOnFile(String customerId) {
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		Customer customer;
		String found ="";
		try {
			customer = Customer.retrieve(customerId);
			String customerJasonValues = gson.toJson(customer);
			HashMap customerMapValues = gson.fromJson(customerJasonValues, HashMap.class);
			String cardValues = customerMapValues.get("sources").toString();
			Pattern pattern = Pattern.compile("data=(.*?)],");
			Matcher matcher = pattern.matcher(cardValues);
			while (matcher.find()) {
				found = matcher.group(1);
				System.out.println(found);
			}
			if(found.length()>3) {
				return true;
			}
		} catch (StripeException e) {
			e.printStackTrace();
			return false;
		}

		return false;
	}

}
