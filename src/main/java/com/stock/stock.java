package com.stock;

public class stock {

	private String item_no;
	private String vehicle_brand;
	private String vehicle_model;
	private String vehicle_year;
	private String category;
	private String qty;
	private String limit_stock;
	private String less_item;
	private String unit_price;
	private String warranty;
	private String status;
	
	public stock(String item_no, String vehicle_brand, String vehicle_model, String vehicle_year, String category,
			String qty, String limit_stock, String less_item, String unit_price, String warranty, String status) {
		super();
		this.item_no = item_no;
		this.vehicle_brand = vehicle_brand;
		this.vehicle_model = vehicle_model;
		this.vehicle_year = vehicle_year;
		this.category = category;
		this.qty = qty;
		this.limit_stock = limit_stock;
		this.less_item = less_item;
		this.unit_price = unit_price;
		this.warranty = warranty;
		this.status = status;
	}

	public String getItem_no() {
		return item_no;
	}

	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}

	public String getVehicle_brand() {
		return vehicle_brand;
	}

	public void setVehicle_brand(String vehicle_brand) {
		this.vehicle_brand = vehicle_brand;
	}

	public String getVehicle_model() {
		return vehicle_model;
	}

	public void setVehicle_model(String vehicle_model) {
		this.vehicle_model = vehicle_model;
	}

	public String getVehicle_year() {
		return vehicle_year;
	}

	public void setVehicle_year(String vehicle_year) {
		this.vehicle_year = vehicle_year;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getLimit_stock() {
		return limit_stock;
	}

	public void setLimit_stock(String limit_stock) {
		this.limit_stock = limit_stock;
	}

	public String getLess_item() {
		return less_item;
	}

	public void setLess_item(String less_item) {
		this.less_item = less_item;
	}

	public String getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(String unit_price) {
		this.unit_price = unit_price;
	}

	public String getWarranty() {
		return warranty;
	}

	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
	
	
