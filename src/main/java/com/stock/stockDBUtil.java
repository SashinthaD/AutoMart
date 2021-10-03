package com.stock;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.seller.Order;

import java.sql.Connection;



public class stockDBUtil {
	
	
		private static boolean done;
		private static Connection con=null;
		private static Statement stmt=null;
		private static ResultSet rs=null;
		//insert
		public static boolean insertstock(String item_no,String vehicle_brand,String vehicle_model,String vehicle_year,String category,int qty,int limit_stock, String unit_price, String warranty, String status) {
					boolean done=false;
					
					
					
					try {
					
						int less_item=limit_stock-qty;
						
						con = DBconnection.getConnection();
						stmt = con.createStatement();
						
					
						
					
						
						String sql="insert into stock values('"+item_no+"','"+vehicle_brand+"','"+vehicle_model+"','"+vehicle_year+"','"+category+"','"+qty+"','"+limit_stock+"','"+less_item+"','"+unit_price+"','"+warranty+"','"+status+"')";
						int rs=stmt.executeUpdate(sql);
					
						
			
						if(rs>0)
						{
							done=true;
						}
						else
						{
							done=false;
						}
						
						
				
					}catch(Exception e)
					{
						e.printStackTrace();
					}
					
					
					return done;
					}
		
					
					public static ResultSet getRs() {
						return rs;
					}
					
					public static void setRs(ResultSet rs) {
						stockDBUtil.rs = rs;
					}
					
					//get
					public static List<stock>getstockdetails(String item_no)
					{
						
						
						ArrayList<stock>stock=new ArrayList<>();
						try {
							
					String sql="Select * from stock where item_no='"+item_no+"'";
					rs=stmt.executeQuery(sql);
					
					if(rs.next())
					{
						String Item_no=rs.getString(1);
						String Vehicle_brand=rs.getString(2);
						String Vehicle_model=rs.getString(3);
						String Vehicle_year=rs.getString(4);
						String Category=rs.getString(5);
						String Qty=rs.getString(6);
						String Limit_stock=rs.getString(7);
						String Less_item=rs.getString(8);
						String Unit_price=rs.getString(9);
						String Warranty=rs.getString(10);
						String Status=rs.getString(11);
						
						
						stock st=new stock(Item_no,Vehicle_brand,Vehicle_model,Vehicle_year,Category,Qty,Limit_stock,Less_item, Unit_price, Warranty, Status);
						stock.add(st);
						
					}
					
					
					}
					catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				
				return stock;
				
						}
					
					//update stock
					public static boolean Updatestock(String item_no,String vehicle_brand,String vehicle_model,String vehicle_year,String category,int qty,int limit_stock, String unit_price, String warranty, String status) {

						try {
							int less_item=limit_stock-qty;

						con=DBconnection.getConnection();
						stmt=con.createStatement();
						String sql="Update stock set qty='"+qty+"' ,limit_stock='"+limit_stock+"' ,less_item='"+less_item+"',status='"+status+"'"
						+"where item_no='"+item_no+"'" ;
						int rs=stmt.executeUpdate(sql);


						if(rs>0)
						{
						done=true;
						}
						else
						{
						done=false;
						}
						}catch(Exception e) {

						e.printStackTrace();
						}
						return done;
						}
					
					//search stock
					public static boolean search(String item_no) {
						try {
						con=DBconnection.getConnection();
						stmt = con.createStatement();
						
						String sql = "Select * from stock where item_no='"+item_no+"'";
						rs = stmt.executeQuery(sql);
						
						
						
						if (rs.next()) {
						done = true;
						} else {
						done = false;
						}
						} catch (Exception e) {
						e.printStackTrace();
						}
						return done;
						}
					
					//get update
					public static List<stock>getUpdatestock(String item_no)
					{
						
						
						ArrayList<stock>st1=new ArrayList<>();
						try {
							
							String sql = "Select * from stock where item_no='"+item_no+"'";
					rs=stmt.executeQuery(sql);
					
					while(rs.next())
					{
						String Item_no=rs.getString(1);
						String Vehicle_brand=rs.getString(2);
						String Vehicle_model=rs.getString(3);
						String Vehicle_year=rs.getString(4);
						String Category=rs.getString(5);
						String Qty=rs.getString(6);
						String Limit_stock=rs.getString(7);
						String Less_item=rs.getString(8);
						String Unit_price=rs.getString(9);
						String Warranty=rs.getString(10);
						String Status=rs.getString(11);
						
						
						stock st2=new stock(Item_no,Vehicle_brand,Vehicle_model,Vehicle_year,Category,Qty,Limit_stock,Less_item, Unit_price, Warranty, Status);
						st1.add(st2);
						
					}
					
					
					}
					catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				
				return st1;
				
						}
					
					
						
						//delete
						
						public static boolean Delete(String item_no) {
							try {
								con=DBconnection.getConnection();
								stmt=con.createStatement();
								String sql="Delete from stock where item_no='"+item_no+"' ";
								int rs=stmt.executeUpdate(sql);
								
								if(rs>0)
								{
								done=true;
								}
								else
								{
								done=false;
								}

								}
							
							catch(Exception e)
							{
							e.printStackTrace();
							}
							return done;
						


						}


						public static boolean validationstoid(String item_no) {
							try {
								
								con = DBconnection.getConnection();
								stmt = con.createStatement();
								
								String sql = "select * from automart.order where item_no ='"+item_no+"'";
								
								rs=stmt.executeQuery(sql);
								
								if(rs.next()) {
									
									done = true;
								}else {
									
									done = false;
								}
								
								
								
							}catch(Exception e) {
								
								e.printStackTrace();
							}
							return done;
						}


						public static List<Order> getorderstid(String item_no) {
							ArrayList<Order> os = new ArrayList<>();
							
							try {
								
								con = DBconnection.getConnection();
								stmt = con.createStatement();
								
								String sql = "select * from automart.order where item_no ='"+item_no+"'";
								
								rs= stmt.executeQuery(sql);
								
								while(rs.next()) {
									
									int oid = rs.getInt(1);
									String date = rs.getString(2);
									String bemail = rs.getString(3);
									String vbrand = rs.getString(4);
									String category = rs.getString(5);
									String model = rs.getString(6);
									String myear = rs.getString(7);
									String scategory = rs.getString(8);
									String qty = rs.getString(9);
									String name = rs.getString(10);
									String item_No = rs.getString(11);
									String status = rs.getString(12);
									
									Order od2 = new Order(oid,date,bemail,vbrand,category,model,myear,scategory,qty,name,item_no,status);
									os.add(od2);
									
								}
								
								
							}catch(Exception e) {
								
								e.printStackTrace();
								
							}
							return os;
						}


					


}
