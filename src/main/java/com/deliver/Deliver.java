package com.deliver;

public class Deliver {
	
	private String d_id;
	private String delivery_distance;
	private String p_per_km;
	private String delivery_amount;
	private String date;
	private String vehicle_no;
	private String d_order_id;
	private String nic;
	
	public Deliver(String d_id, String delivery_distance, String p_per_km, String delivery_amount, String date,
			String vehicle_no, String d_order_id, String nic) {
		super();
		this.d_id = d_id;
		this.delivery_distance = delivery_distance;
		this.p_per_km = p_per_km;
		this.delivery_amount = delivery_amount;
		this.date = date;
		this.vehicle_no = vehicle_no;
		this.d_order_id = d_order_id;
		this.nic = nic;
		
		
	}

	public String getD_id() {
		return d_id;
	}

	public void setD_id(String d_id) {
		this.d_id = d_id;
	}

	public String getDelivery_distance() {
		return delivery_distance;
	}

	public void setDelivery_distance(String delivery_distance) {
		this.delivery_distance = delivery_distance;
	}

	public String getP_per_km() {
		return p_per_km;
	}

	public void setP_per_km(String p_per_km) {
		this.p_per_km = p_per_km;
	}

	public String getDelivery_amount() {
		return delivery_amount;
	}

	public void setDelivery_amount(String delivery_amount) {
		this.delivery_amount = delivery_amount;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getVehicle_no() {
		return vehicle_no;
	}

	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}

	public String getD_order_id() {
		return d_order_id;
	}

	public void setD_order_id(String d_order_id) {
		this.d_order_id = d_order_id;
	}

	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}
	
	

}
