package com.vehicle;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class VehicleDBUtil {
	
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	//insert
	public static boolean insertvehicle(String vehicle_no,String vehicle_type,String vehicle_brand,String chassi_no,String vehicle_mileage,String insurance,String emission) {
				boolean done=false;
				
				
				
				try {
					
					con = DBconnection.getConnection();
					stmt = con.createStatement();
					
					String sql="insert into delivery_vehicle values('"+vehicle_no+"','"+vehicle_type+"','"+vehicle_brand+"','"+chassi_no+"','"+vehicle_mileage+"','"+insurance+"','"+emission+"')";
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
					VehicleDBUtil.rs = rs;
				}
				
				
				//get
				public static List<Vehicle>getVehicledetails(String vehicle_no)
				{
					
					
					ArrayList<Vehicle>vehicle=new ArrayList<>();
					try {
						
				String sql="Select * from delivery_vehicle where vehicle_no='"+vehicle_no+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String Vehicle_no=rs.getString(1);
					String Vehicle_type=rs.getString(2);
					String Vehicle_brand=rs.getString(3);
					String Chassi_no=rs.getString(4);
					String Vehicle_mileage=rs.getString(5);
					String Insurance=rs.getString(6);
					String Emission=rs.getString(7);
					
					Vehicle vh=new Vehicle(Vehicle_no,Vehicle_type,Vehicle_brand,Chassi_no,Vehicle_mileage,Insurance,Emission);
					vehicle.add(vh);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return vehicle;
			
					}
				//update
				public static boolean UpdateVehicle(String vehicle_no,String vehicle_type,String vehicle_brand,String chassi_no,String vehicle_mileage,String insurance,String emission) {

					try {

					con=DBconnection.getConnection();
					stmt=con.createStatement();
					String sql="Update delivery_vehicle set vehicle_mileage='"+vehicle_mileage+"' ,insurance='"+insurance+"' ,emission='"+emission+"'"
					+"where vehicle_no='"+vehicle_no+"'" ;
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
				public static boolean search(String vehicle_no) {
					try {
					con=DBconnection.getConnection();
					stmt = con.createStatement();
					String sql = "select * from delivery_vehicle where vehicle_no='"+vehicle_no+"'";
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
				public static List<Vehicle>getUpdateVehicle(String vehicle_no){
					//int convertid1=Integer.parseInt(id);

					ArrayList<Vehicle>vh1=new ArrayList<>();
					

					try {
					con=DBconnection.getConnection();
					stmt=con.createStatement();
					String sql="Select * from delivery_vehicle where vehicle_no='"+vehicle_no+"' ";
					rs=stmt.executeQuery(sql);

					while(rs.next()) {

						String Vehicle_no=rs.getString(1);
						String Vehicle_type=rs.getString(2);
						String Vehicle_brand=rs.getString(3);
						String Chassi_no=rs.getString(4);
						String Vehicle_mileage=rs.getString(5);
						String Insurance=rs.getString(6);
						String Emission=rs.getString(7);


					Vehicle vh2=new Vehicle(Vehicle_no,Vehicle_type,Vehicle_brand,Chassi_no,Vehicle_mileage,Insurance,Emission);
					vh1.add(vh2);

					}

					}catch(Exception e)
					{
					e.printStackTrace();
					}

					return vh1;


					}
				//delete
				public static boolean Delete(String vehicle_no) {
					try {
						con=DBconnection.getConnection();
						stmt=con.createStatement();
						String sql="Delete from delivery_vehicle where vehicle_no='"+vehicle_no+"' ";
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



	
	
		
		


