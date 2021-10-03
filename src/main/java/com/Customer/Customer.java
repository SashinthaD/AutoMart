package com.Customer;

public class Customer {
	
	
	private int idCustomer;
	private String Full_Name;
	private String Email;
	private String Phone_No;
	private String Brand;
	private String Model;
	private String PlateNumber;
	private String password;
	public Customer(int idCustomer, String full_Name, String email, String phone_No, String brand, String model,
			String plateNumber, String password) {
		super();
		this.idCustomer = idCustomer;
		Full_Name = full_Name;
		Email = email;
		Phone_No = phone_No;
		Brand = brand;
		Model = model;
		PlateNumber = plateNumber;
		this.password = password;
	}
	public int getIdCustomer() {
		return idCustomer;
	}
	public void setIdCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}
	public String getFull_Name() {
		return Full_Name;
	}
	public void setFull_Name(String full_Name) {
		Full_Name = full_Name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone_No() {
		return Phone_No;
	}
	public void setPhone_No(String phone_No) {
		Phone_No = phone_No;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
	}
	public String getPlateNumber() {
		return PlateNumber;
	}
	public void setPlateNumber(String plateNumber) {
		PlateNumber = plateNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
}
