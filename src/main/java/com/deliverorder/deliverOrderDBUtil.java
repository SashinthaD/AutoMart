package com.deliverorder;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class deliverOrderDBUtil {
	
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//deliver order
	//insert
	public static boolean insertdeliverorder(String d_order_id,String phone_no,String address,String item_no,String qty,String unit_price,String date,String cid) {
				boolean done=false;
				
				
				
				try {
					
					con = DBconnection.getConnection();
					stmt = con.createStatement();
					
					String sql="insert into deliver_order values('"+d_order_id+"','"+phone_no+"','"+address+"','"+item_no+"','"+qty+"','"+unit_price+"','"+date+"','"+cid+"')";
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
					deliverOrderDBUtil.rs = rs;
				}
				
				//get
				public static List<DeliverOrder>getdeliverorderdetails(String d_order_id)
				{
					
					
					ArrayList<DeliverOrder>DeliverOrder=new ArrayList<>();
					try {
						
				String sql="Select * from deliver_order where d_order_id='"+d_order_id+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String D_order_id=rs.getString(1);
					String Phone_no=rs.getString(2);
					String Address=rs.getString(3);
					String Item_no=rs.getString(4);
					String Qty=rs.getString(5);
					String Unit_price=rs.getString(6);
					String Date=rs.getString(7);
					String Cid=rs.getString(8);
					
					

					DeliverOrder de=new DeliverOrder(D_order_id,Phone_no, Address,Item_no,Qty,Unit_price,Date, Cid);
					DeliverOrder.add(de);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return DeliverOrder;
			
					}
				
				//delete
				
				public static boolean Delete(String d_order_id) {
					try {
						con=DBconnection.getConnection();
						stmt=con.createStatement();
						String sql="Delete from deliver_order where d_order_id='"+d_order_id+"' ";
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
