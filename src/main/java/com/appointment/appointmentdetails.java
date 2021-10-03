package com.appointment;

import java.util.Date;

public class appointmentdetails {
	
	private int apoid;
	private String servicetype;
	private String vehiclemodel;
	private String timeslot;
	private Date requireddate;
	
	public appointmentdetails(int apoid, String servicetype, String vehiclemodel, String timeslot,Date requireddate) {
		
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

	public Date getRequireddate() {
		return requireddate;
	}
	
	
	


}
