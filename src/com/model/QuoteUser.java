package com.model;

import java.util.HashSet;

public class QuoteUser {

	private String firstname;
	private Gender gender;
	private int age;
	private Citizenship citizenship;
	private HashSet<LifeStyle> lifeStyle = new HashSet<LifeStyle>();
	private HashSet<PreCondition> preCondition = new HashSet<PreCondition>();
	
	
	public String getFirstname() {
		return firstname;
	}
	
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	
	public Gender getGender() {
		return gender;
	}
	
	
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	
	
	public int getAge() {
		return age;
	}
	
	
	public void setAge(int age) {
		this.age = age;
	}
	
	
	public Citizenship getCitizenship() {
		return citizenship;
	}
	
	
	public void setCitizenship(Citizenship citizenship) {
		this.citizenship = citizenship;
	}
	
	
	public HashSet<LifeStyle> getLifeStyle() {
		return lifeStyle;
	}
	
	
	public void setLifeStyle(HashSet<LifeStyle> lifeStyle) {
		this.lifeStyle = lifeStyle;
	}
	 
	
	public HashSet<PreCondition> getPreCondition() {
		return preCondition;
	}
 
	public void setPreCondition(HashSet<PreCondition> preCondition) {
		this.preCondition = preCondition;
	}


	@Override
	public String toString() {
		return "QuoteUser [firstname=" + firstname + ", gender=" + gender + ", age=" + age + ", citizenship="
				+ citizenship + ", lifeStyle=" + lifeStyle + ", preCondition=" + preCondition + "]";
	}
	
	
	

}
