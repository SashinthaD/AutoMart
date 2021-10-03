package com.promotionandoffers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import dbconnection.DBconnect;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import java.text.SimpleDateFormat;  
public class PromoDButil {


	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	
public static boolean Updatepromotion(String id,String details,String precentage,String time,String time2) {
		
		try {
			
			con=DBconnect.getConnection();
			stmt=con.createStatement();
			String sql="Update promotion set Promotion_details='"+details+"' ,Percentage='"+precentage+"' ,startdate='"+time+"',enddate='"+time2+"' where Idpromotionsandoffers='"+id+"'" ;
			int rs=stmt.executeUpdate(sql);
			
			
			if(rs>0)
			{
				Success=true;
			}
			else
			{
				Success=false;
			}
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		return Success;
	}
	
public static boolean deletepromotion(String id) {
	
	try {
		Date date=new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
	    String strDate = formatter.format(date);  
		
		con=DBconnect.getConnection();
		stmt=con.createStatement();
		String sql="delete from automart.promotion where Idpromotionsandoffers='"+id+"' and  enddate<'"+strDate+"'";
		int rs=stmt.executeUpdate(sql);
		
		
		if(rs>0)
		{
			Success=true;
		}
		else
		{
			Success=false;
		}
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	return Success;
}
	
	
public static boolean insertdiscount(String id,String promoid,double discount,double amount) {
	
	try {
		
	double tot;
	tot=amount-amount*(discount/100);
	
		con=DBconnect.getConnection();
		stmt=con.createStatement();
		String sql="INSERT INTO promotion_calculation(Cal_id,percentage,After_Discount,Promo_id,Cus_id) VALUES(0,'"+discount+"','"+tot+"','"+promoid+"','"+id+"')" ;
		int rs=stmt.executeUpdate(sql);
		
		
		if(rs>0)
		{
			Success=true;
		}
		else
		{
			Success=false;
		}
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	return Success;
}
	





	
}