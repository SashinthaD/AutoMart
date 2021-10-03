package com.appointment;

public class customer {
	private int idcustomer;
	private String fullName;
	private String email;
	private int phoneNo;
	
	public customer(int idcustomer, String Full_Name, String Email, int Phone_No) {
	
		this.idcustomer = idcustomer;
		this.fullName = Full_Name;
		this.email = Email;
		this.phoneNo = Phone_No;
	}
	public int getidcustomer() {
		return idcustomer;
	}
	

	public String getFullName() {
		return fullName;
	}


	public String getEmail() {
		return email;
	}


	public int getPhoneNo() {
		return phoneNo;
	}




}
