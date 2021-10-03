package com.appointment;

public class appointment {
	private int apoid;
	private String servicetype;
	private String vehiclemodel;
	private String timeslot;
	private String requireddate;
	
	public appointment(int apoid, String servicetype, String vehiclemodel, String timeslot, String requireddate) {
	
		this.apoid = apoid;
		this.servicetype = servicetype;
		this.vehiclemodel = vehiclemodel;
		this.timeslot = timeslot;
		this.requireddate = requireddate;
	}

	public int getApoid() {
		return apoid;
	}

	public String getServicetype() {
		return servicetype;
	}

	public String getVehiclemodel() {
		return vehiclemodel;
	}

	public String getTimeslot() {
		return timeslot;
	}

	public String getRequireddate() {
		return requireddate;
	}
	
	
	
	
	
}
