package com.bridgeit.jspregistration;

public class Employee {

	String name;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLanguageKnown() {
		return languageKnown;
	}
	public void setLanguageKnown(String languageKnown) {
		this.languageKnown = languageKnown;
	}
	public String getSpecialized() {
		return specialized;
	}
	public void setSpecialized(String specialized) {
		this.specialized = specialized;
	}
	String mail;
	String address;
	String mobile;
	String cname;
	String age;
	String gender;
	String languageKnown;
	String specialized;
	
	public Employee(String name, String mail, String address, String mobile, String cname, String age, String gender,
			String languageKnown, String specialized) {
		super();
		this.name = name;
		this.mail = mail;
		this.address = address;
		this.mobile = mobile;
		this.cname = cname;
		this.age = age;
		this.gender = gender;
		this.languageKnown = languageKnown;
		this.specialized = specialized;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
}
