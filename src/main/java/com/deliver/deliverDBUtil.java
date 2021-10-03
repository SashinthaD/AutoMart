package com.deliver;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vehicle.DBconnection;


public class deliverDBUtil {
	//insert
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	public static boolean insertDeliver(String d_id,int deliver_distance,double p_per_km,String date,String vehicle_no,String d_order_id, String nic) {
		boolean done=false;
		
		
		
		try {
			double delivery_amount=deliver_distance * p_per_km;
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql="insert into deliver values('"+d_id+"','"+deliver_distance+"','"+p_per_km+"','"+delivery_amount+"','"+date+"','"+vehicle_no+"','"+d_order_id+"','"+nic+"')";
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
			deliverDBUtil.rs = rs;
		}
		
		
		//get
		public static List<Deliver>getDeliverdetails(String d_id)
		{
			
			
			ArrayList<Deliver>Deliver=new ArrayList<>();
			try {
				
		String sql="Select * from deliver where d_id='"+d_id+"'";
		rs=stmt.executeQuery(sql);
		
		if(rs.next())
		{
			String D_id=rs.getString(1);
			String Delivery_distance=rs.getString(2);
			String P_per_km=rs.getString(3);
			String Delivery_amount=rs.getString(4);
			String Date=rs.getString(5);
			String Vehicle_no=rs.getString(6);
			String D_order_id=rs.getString(7);
			String Nic=rs.getString(8);
			
			Deliver d=new Deliver(D_id,Delivery_distance,P_per_km,Delivery_amount,Date,Vehicle_no,D_order_id,Nic);
			Deliver.add(d);
			
		}
		
		
		}
		catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	
	return Deliver;
	
			}
		
		//update
		public static boolean UpdateDeliver(String d_id,String deliver_distance,String p_per_km,String delivery_amount,String date,String vehicle_no,String d_order_id, String nic) {

			try {

			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql="Update deliver set vehicle_no='"+vehicle_no+"' ,d_order_id='"+d_order_id+"' ,nic='"+nic+"'"
			+"where d_id='"+d_id+"'" ;
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
		//search
		public static boolean search(String d_id) {
			try {
			con=DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from deliver where d_id='"+d_id+"'";
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
		
		//update
		public static List<Deliver>getUpdateDeliver(String d_id){
			//int convertid1=Integer.parseInt(id);

			ArrayList<Deliver>d1=new ArrayList<>();
			
			try {
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql="Select * from deliver where d_id='"+d_id+"' ";
			rs=stmt.executeQuery(sql);

			while(rs.next()) {

				String D_id=rs.getString(1);
				String Delivery_distance=rs.getString(2);
				String P_per_km=rs.getString(3);
				String Delivery_amount=rs.getString(4);
				String Date=rs.getString(5);
				String Vehicle_no=rs.getString(6);
				String D_order_id=rs.getString(7);
				String Nic=rs.getString(8);


			Deliver d2=new Deliver(D_id,Delivery_distance,P_per_km,Delivery_amount,Date,Vehicle_no,D_order_id,Nic);
			d1.add(d2);

			}

			}catch(Exception e)
			{
			e.printStackTrace();
			}

			return d1;


			}
		//delete
		public static boolean Delete(String d_id) {
			try {
				con=DBconnection.getConnection();
				stmt=con.createStatement();
				String sql="Delete from deliver where d_id='"+d_id+"' ";
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



}



