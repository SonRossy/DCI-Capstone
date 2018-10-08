package com.model;
/*
 * author Clarissa Mercado
 * Created customer class to associate attributes
 */
public class Member {
	//Declaring all attributes
	private String userEmail;
	private String first_name;
	private String middle_name;
	private String last_name;
	private String DOB;
	private String street;
	private String apt;
	private String city;
	private String state;
	private String zip;
	private String country;
	private String phone;
	private String mobile;
	private String secondaryAddress;
	private String coverage;
	private String loggedIn;
	
	//Setters & Getters 
	/**
	 * @return the userEmail
	 */
	public String getUserEmail() {
		return userEmail;
	}
	/**
	 * @param userEmail the userEmail to set
	 */
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	/**
	 * @return the middle_name
	 */
	public String getMiddle_name() {
		return middle_name;
	}
	/**
	 * @param middle_name the middle_name to set
	 */
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	/**
	 * @return the dOB
	 */
	public String getDOB() {
		return DOB;
	}
	/**
	 * @param dOB the dOB to set
	 */
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}
	/**
	 * @param street the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}
	/**
	 * @return the apt
	 */
	public String getApt() {
		return apt;
	}
	/**
	 * @param apt the apt to set
	 */
	public void setApt(String apt) {
		this.apt = apt;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the zip
	 */
	public String getZip() {
		return zip;
	}
	/**
	 * @param zip the zip to set
	 */
	public void setZip(String zip) {
		this.zip = zip;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/**
	 * @return the secondaryAddress
	 */
	public String getSecondaryAddress() {
		return secondaryAddress;
	}
	/**
	 * @param secondaryAddress the secondaryAddress to set
	 */
	public void setSecondaryAddress(String secondaryAddress) {
		this.secondaryAddress = secondaryAddress;
	}
	/**
	 * @return the coverage
	 */
	public String getCoverage() {
		return coverage;
	}
	/**
	 * @param coverage the coverage to set
	 */
	public void setCoverage(String coverage) {
		this.coverage = coverage;
	}
	/**
	 * @return the loggedIn
	 */
	public String getLoggedIn() {
		return loggedIn;
	}
	/**
	 * @param loggedIn the loggedIn to set
	 */
	public void setLoggedIn(String loggedIn) {
		this.loggedIn = loggedIn;
	}
	
	
	//Constructors
	public Member(){
		
	}
	//Contains: userEmail, first name, last name 
	public Member(String userEmail, String first_name, String middle_name, String last_name, String dOB, String street,
			String apt, String city, String state, String zip, String country, String phone, String mobile,
			String secondaryAddress, String coverage, String loggedIn) {
		super();
		this.userEmail = userEmail;
		this.first_name = first_name;
		this.middle_name = middle_name;
		this.last_name = last_name;
		this.DOB = dOB;
		this.street = street;
		this.apt = apt;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.country = country;
		this.phone = phone;
		this.mobile = mobile;
		this.secondaryAddress = secondaryAddress;
		this.coverage = coverage;
		this.loggedIn = loggedIn;
	}
}

