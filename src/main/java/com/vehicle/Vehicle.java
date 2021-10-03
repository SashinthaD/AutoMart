package com.vehicle;



public class Vehicle {
	private String vehicle_no;
	private String vehicle_type;
	private String vehicle_brand;
	private String chassi_no;
	private String vehicle_mileage;
	private String insurance;
	private String emission;
	
	
	public Vehicle(String vehicle_no, String vehicle_type, String vehicle_brand, String chassi_no,
			String vehicle_mileage, String insurance, String emission) {
		
		this.vehicle_no = vehicle_no;
		this.vehicle_type = vehicle_type;
		this.vehicle_brand = vehicle_brand;
		this.chassi_no = chassi_no;
		this.vehicle_mileage = vehicle_mileage;
		this.insurance = insurance;
		this.emission = emission;
	}


	public String getVehicle_no() {
		return vehicle_no;
	}


	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}


	public String getVehicle_type() {
		return vehicle_type;
	}


	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}


	public String getVehicle_brand() {
		return vehicle_brand;
	}


	public void setVehicle_brand(String vehicle_brand) {
		this.vehicle_brand = vehicle_brand;
	}


	public String getChassi_no() {
		return chassi_no;
	}


	public void setChassi_no(String chassi_no) {
		this.chassi_no = chassi_no;
	}


	public String getVehicle_mileage() {
		return vehicle_mileage;
	}


	public void setVehicle_mileage(String vehicle_mileage) {
		this.vehicle_mileage = vehicle_mileage;
	}


	public String getInsurance() {
		return insurance;
	}


	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}


	public String getEmission() {
		return emission;
	}


	public void setEmission(String emission) {
		this.emission = emission;
	}


	
}


