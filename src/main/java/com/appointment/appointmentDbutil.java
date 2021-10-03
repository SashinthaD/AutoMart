package com.appointment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.appointment.DBConnect;
import com.appointment.customer;

public class appointmentDbutil {
	
	private static ResultSet rs =null;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static boolean isSuccess;
	
public static boolean validate(String idcustomer)
{
try {
	con=DBConnect.getConnection();
	stmt =con.createStatement();

	String sql = "select * from customer where idCustomer= '"+idcustomer+"' " ;
	rs= stmt.executeQuery(sql);

	if(rs.next())
	{
		isSuccess=true;
	
	}
	else
	{
		isSuccess=false;
	}


	}catch(Exception e)
{
	e.printStackTrace();
}

return isSuccess;
}




	public static List<customer> getCustomer (String idcustomer){
		
		int idCust = Integer.parseInt(idcustomer);
		ArrayList<customer> cus = new ArrayList<>();
		
		
		//Validate
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			String sql = "select * from customer where idCustomer= '"+idCust+"' " ;
			
			 rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int idcustom = rs.getInt(1);
				String Full_Name = rs.getString(2);
				String Email = rs.getString(3);
				int Phone_No = rs.getInt(4);
				
				 customer c = new customer(idcustom,Full_Name,Email,Phone_No);
				 cus.add(c);
				 
				
				 
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("rrrr");
		}
		
		
		return cus;
		
	}
	
	
	public static boolean insertappointment(String servicetype,String vehiclemodel,String requiredtime,String requireddate,String cid ) {
	
		boolean isSuccess = false;
		 
		 try {
			
				
			con = DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql = "insert into appointment values (0,'"+servicetype+"','"+ vehiclemodel+"','"+requiredtime+"','"+requireddate+"','"+cid+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			
			
		 }
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
	    return isSuccess;
	}




	public static List<appointmentdetails> getAppointment(String cid) {
		
		int Apo_id = Integer.parseInt(cid);
		ArrayList<appointmentdetails> app = new ArrayList<>();
		
		
		//Validate
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			String sql = "select * from appointment where Cid= '"+Apo_id+"' " ;
			
			 rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int apoid = rs.getInt(1);
				String servicetype = rs.getString(2);
				String vehiclemodel = rs.getString(3);
				String timeslot = rs.getString(4);
				Date requireddate = rs.getDate(5);
				
				 appointmentdetails c = new appointmentdetails(apoid,servicetype,vehiclemodel,timeslot,requireddate);
				 app.add(c);
				 
				
				 
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("rrrr");
		}
		
		
		return app;
		
		
	}
	




public static boolean validate1(String apoid)
{
try {
	con=DBConnect.getConnection();
	stmt =con.createStatement();

	String sql = "select * from appointment where Apo_id = '"+apoid+"' " ;
	rs= stmt.executeQuery(sql);

	if(rs.next())
	{
		isSuccess=true;
	
	}
	else
	{
		isSuccess=false;
	}


	}catch(Exception e)
{
	e.printStackTrace();
}

return isSuccess;
}




	public static List<appointment> getappointment (String apoid){
		
		int apoid1 = Integer.parseInt(apoid);
		ArrayList<appointment> apo = new ArrayList<>();
		
		
		//Validate
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			 String sql = "select * from appointment where Apo_id = '"+apoid1+"' " ;
			
			 rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				 int apo_id = rs.getInt(1);
				String  servicetype = rs.getString(2);
				String vehiclemodel = rs.getString(3);
				String timeslot = rs.getString(4);
				String requireddate = rs.getString(5);
				
				 appointment c = new appointment(apo_id,servicetype,vehiclemodel,timeslot,requireddate);
				 apo.add(c);
				 
				
				 
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("rrrr");
		}
		
		
		return apo;
		
	}
	
	
//UPDATE

public static boolean update_appointment_details(String apoid, String servicetype, String vehiclemodel, String timeslot, String requireddate, String cid) {
	
	boolean isSuccess = false;
	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update appointment set Service_type='"+servicetype+"',Vehicle_model='"+vehiclemodel+"',Time_slot='"+timeslot+"',Required_date='"+requireddate+"' where Apo_id='"+apoid+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) { 
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<appointment> getappointment_details(String apoid1) {
    	
    	int convertedID = Integer.parseInt(apoid1);
    	
    	ArrayList<appointment> upd = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int apoid = rs.getInt(1);
 				String  servicetype = rs.getString(2);
 				String vehiclemodel = rs.getString(3);
 				String timeslot = rs.getString(4);
 				String requireddate = rs.getString(5);
    			
    			appointment c = new appointment(apoid,servicetype,vehiclemodel,timeslot ,requireddate);
    			upd.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	
    	return upd;	
    }




	public static boolean deletedappointments(String apoid, String servicetype, String vehiclemodel, String timeslot,String requireddate) {
		
		
		boolean isSuccess = false;
		 
		 try {
			
				
			con = DBConnect.getConnection();
			stmt =con.createStatement();
			
			String sql = "insert into deleted_appointments values ('"+apoid+"','"+servicetype+"','"+ vehiclemodel+"','"+timeslot+"','"+requireddate+"')";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
			
			
		 }
		catch(Exception e) {
			e.printStackTrace();
		}
		
	
	    return isSuccess;
	}




	public static boolean delete(String apoid) {
	
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
			String sql = "delete from appointment where Apo_id='"+apoid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
			isSuccess = true;
			}
			
			else {
			isSuccess = false;
			}
			
			}
			catch (Exception e) {
			e.printStackTrace();
			
			}
			return isSuccess;
	}




	public static List<appointment> getreport(String date) {
		
ArrayList<appointment> upd = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from appointment where Required_date='"+date+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int apoid = rs.getInt(1);
 				String  servicetype = rs.getString(2);
 				String vehiclemodel = rs.getString(3);
 				String timeslot = rs.getString(4);
 				String requireddate = rs.getString(5);
    			
    			appointment c = new appointment(apoid,servicetype,vehiclemodel,timeslot ,requireddate);
    			upd.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	
    	return upd;	
		
		
	}

	}





