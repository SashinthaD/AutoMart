package com.promotionandoffers;

public class Promotion {

	
	

	private int idpromotionsandoffers;
	private String Promotion_details;
	private String precentage;
	private String time;
	private String time2;
	public Promotion(int idpromotionsandoffers, String promotion_details, String precentage, String time,
			String time2) {
		super();
		this.idpromotionsandoffers = idpromotionsandoffers;
		Promotion_details = promotion_details;
		this.precentage = precentage;
		this.time = time;
		this.time2 = time2;
	}
	public int getIdpromotionsandoffers() {
		return idpromotionsandoffers;
	}
	public void setIdpromotionsandoffers(int idpromotionsandoffers) {
		this.idpromotionsandoffers = idpromotionsandoffers;
	}
	public String getPromotion_details() {
		return Promotion_details;
	}
	public void setPromotion_details(String promotion_details) {
		Promotion_details = promotion_details;
	}
	public String getPrecentage() {
		return precentage;
	}
	public void setPrecentage(String precentage) {
		this.precentage = precentage;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
