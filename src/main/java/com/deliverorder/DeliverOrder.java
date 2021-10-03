package com.deliverorder;

public class DeliverOrder {
	private String d_order_id;
	private String phone_no;
	private String address;
	private String item_no;
	private String qty;
	private String unit_price;
	private String date;
	private String cid;
	
	public DeliverOrder(String d_order_id, String phone_no, String address, String item_no, String qty,
			String unit_price, String date, String cid) {
		super();
		this.d_order_id = d_order_id;
		this.phone_no = phone_no;
		this.address = address;
		this.item_no = item_no;
		this.qty = qty;
		this.unit_price = unit_price;
		this.date = date;
		this.cid = cid;
		
		
	}

	public String getD_order_id() {
		return d_order_id;
	}

	public void setD_order_id(String d_order_id) {
		this.d_order_id = d_order_id;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getItem_no() {
		return item_no;
	}

	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(String unit_price) {
		this.unit_price = unit_price;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}
	
	

}
