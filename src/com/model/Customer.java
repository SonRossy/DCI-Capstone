package com.model;
/*
 * author Clarissa Mercado
 * Created customer class to associate attributes
 */
public class Customer {
	//Declaring all attributes
	private String userEmail;
	private String first_name;
	private String last_name;
	private String loggedIn;
	
	//Setters & Getters 
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getLoggedIn() {
		return loggedIn;
	}
	public void setLoggedIn(String loggedIn) {
		this.loggedIn = loggedIn;
	}
	
	//Constructors
	public Customer(){
		
	}
	//Contains: userEmail, first name, last name 
		Customer(String userEmail, String first_name, String last_name){
			this.userEmail = userEmail;
			this.first_name = first_name;
			this.last_name = last_name;
		}

}
