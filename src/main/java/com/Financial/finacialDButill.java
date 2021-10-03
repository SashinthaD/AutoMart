package com.Financial;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class finacialDButill {
	
	private static ResultSet rs =null;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static boolean isSuccess;
	
public static boolean validate(String rid)
{
try {
	con=DBConnect.getConnection();
	stmt =con.createStatement();

	String sql = "select * from repairs where Rid= '"+rid+"' " ;
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



	public static List<repair> getrepair (String rid){
		
		int idCust = Integer.parseInt(rid);
		ArrayList<repair> repair = new ArrayList<>();
		//Validate
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			String sql = "select * from repairs where Rid= '"+idCust+"' " ;
			
			 rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int Rid = rs.getInt(1);
				int Qty = rs.getInt(6);
				float Billamount = rs.getFloat(11);
				
				
				
				 repair c = new repair(Rid,Billamount,Qty);
				 repair.add(c);
				 
				
				 
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("rrrr");
		}
		
		
		return repair;
		
	}
	
public static List<discount> getdiscount (String rid){
		
		int idCust = Integer.parseInt(rid);
		ArrayList<discount> discount = new ArrayList<>();
		//Validate
		try {
			
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			
			String sql = "select * from promotion_calculation where rid= '"+idCust+"' " ;
			
			 rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				
				float afterdiscount = rs.getFloat(3);
				
				
				 discount c = new discount(afterdiscount);
				 discount.add(c);
				 
				
				 
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("rrrr");
		}
		
		
		return discount;
		
	}



public static boolean insertrepairbill(String date, String sparepart, String service, String discount ,String repair, String qty , String amount) {

		isSuccess = false;
		
		
		
		float Qty = Float.parseFloat(qty);
		float Sparepart = Float.parseFloat(sparepart);
		float Service = Float.parseFloat(service);
		float Amount = Float.parseFloat(amount);
		float Total;
		
		
		if(discount==null) {
			Total= Qty*Sparepart+Service+Amount;
		}
		else {
			float Discount = Float.parseFloat(discount);
			Total = Discount+(Qty*Sparepart)+Service;
		}
		int Repair = Integer.parseInt(repair);


		

		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "insert into repair_bills values (0, '"+Sparepart+"', '"+date+"', '"+Service+"', '"+Total+"','"+Repair+"')";

		int rs = stmt.executeUpdate(sql);

		if(rs>0) {
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



public static List<billhistory> gethistory(String date) {
	
	
	
	
	ArrayList<billhistory> billhistory = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from automart.repair_bills where Date = '"+date+"'" ;
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			int billID = rs.getInt(1);
			float sparepartprice = rs.getFloat(2);
			Date datee = rs.getDate(3);
			float serviceCharges = rs.getFloat(4);
			float total = rs.getFloat(5);
			int rid = rs.getInt(6);
			

			
			
			billhistory c = new billhistory(billID,sparepartprice,datee,serviceCharges,total,rid);
			billhistory.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return billhistory;
	
	
}



public static boolean validation(String bid) {
	
	try {
		con=DBConnect.getConnection();
		stmt =con.createStatement();

		String sql = "select * from repair_bills where B_id= '"+bid+"' " ;
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



public static List<billhistory> getbildetails(String bid) {
	
	int idCust = Integer.parseInt(bid);
	ArrayList<billhistory> billhistory = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		 String sql = "select * from repair_bills where B_id= '"+idCust+"' " ;		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			int billID = rs.getInt(1);
			float sparepartprice = rs.getFloat(2);
			Date datee = rs.getDate(3);
			float serviceCharges = rs.getFloat(4);
			float total = rs.getFloat(5);
			int rid = rs.getInt(6);
			
			
			
			billhistory e = new billhistory(billID,sparepartprice,datee,serviceCharges,total,rid);
			billhistory.add(e);
			 
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return billhistory;

}



public static boolean updaterepairbill(String billID, String spare, String date, String service, String total) {
	
	int billid = Integer.parseInt(billID);
	float Spare = Float.parseFloat(spare);
	float Service = Float.parseFloat(service);
	float Total = Float.parseFloat(total);
	

	try {
	con = DBConnect.getConnection();
	stmt = con.createStatement();

	String sql = "update repair_bills set Sparepart_price='"+Spare+"', Date='"+date+"', Service_Charges='"+Service+"',Total_Amount='"+Total+"' where B_id='"+billid+"'";

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



public static boolean insertToOther(String billID, String spare, String date, String service, String total) {
	
	
	isSuccess = false;
	
	
	int BillID = Integer.parseInt(billID);
	float Spare = Float.parseFloat(spare);
	float Service = Float.parseFloat(service);
	float Total = Float.parseFloat(total);

	
	
	

	

	
	try {
	con = DBConnect.getConnection();
	stmt = con.createStatement();

	String sql = "insert into delete_repair_bills values ('"+BillID+"','"+Spare+"', '"+date+"', '"+Service+"', '"+Total+"')";

	int rs = stmt.executeUpdate(sql);

	if(rs>0) {
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



public static boolean deletebills(String billID) {
	
	
	int BillID = Integer.parseInt(billID);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "delete from repair_bills where B_id='"+BillID+"'";

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



public static List<deliver> getdeliverdetails(String did) {
	
	
	
	
	
	ArrayList<deliver> deliverbills = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		 String sql = "select * from deliver_order where d_order_id= '"+did+"' " ;		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			String deliverID = rs.getString(1);
			String adress = rs.getString(3);
			String itemNO = rs.getString(4);
			int qty = rs.getInt(5);
			float unitprice = rs.getFloat(6);
			Date date = rs.getDate(7);
			int cusid = rs.getInt(8);
			
			
			
			deliver e = new deliver(deliverID,adress,itemNO,qty,unitprice,date,cusid);
			deliverbills.add(e);
			 
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return deliverbills;
	
	
	
	
}



public static boolean insertdeliverybill(String deliverID, String cusID, String unitPrice, String qty,
		String deliverdate, String billdate, String tax, String cost) {
	
	isSuccess = false;
	
	
	int cusid = Integer.parseInt(cusID);
	float unitprice = Float.parseFloat(unitPrice);
	float Qty = Float.parseFloat(qty);
	float Tax = Float.parseFloat(tax);
	float Cost = Float.parseFloat(cost);
	
	
	float total;
	
	total=(Qty*unitprice)+Tax+Cost;
	
	
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "insert into delivery_bills values (0, '"+deliverdate+"', '"+total+"', '"+deliverID+"', '"+Tax+"','"+Cost+"','"+billdate+"','"+cusid+"')";

		int rs = stmt.executeUpdate(sql);

		if(rs>0) {
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



public static List<inserted_deliver_info> getdeliverbillhistory(String deliverydate) {
	
	ArrayList<inserted_deliver_info> inserted_deliver_info = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from delivery_bills where bill_date = '"+deliverydate+"'" ;
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			int deliverbillID = rs.getInt(1);
			Date orderdate = rs.getDate(2);
			float Total = rs.getFloat(3);
			String orderID = rs.getString(4);
			float Tax = rs.getFloat(5);
			float deliverycost = rs.getFloat(6);
			Date billdate = rs.getDate(7);
			int cid = rs.getInt(8);
			

			
			
			inserted_deliver_info c = new inserted_deliver_info(deliverbillID,orderdate,Total,orderID,Tax,deliverycost,billdate,cid);
			inserted_deliver_info.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return inserted_deliver_info;
	
	
	
	
}



public static boolean validationdelivery(String bid) {
	
	
	
	try {
		con=DBConnect.getConnection();
		stmt =con.createStatement();

		String sql = "select * from delivery_bills where B_id= '"+bid+"' " ;
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



public static List<inserted_deliver_info> getdeliverybildetails(String bid) {
	
	int billid = Integer.parseInt(bid);
	
	ArrayList<inserted_deliver_info> inserted_deliver_info = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from delivery_bills where B_id = '"+billid+"'" ;
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			int deliverbillID = rs.getInt(1);
			Date orderdate = rs.getDate(2);
			float Total = rs.getFloat(3);
			String orderID = rs.getString(4);
			float Tax = rs.getFloat(5);
			float deliverycost = rs.getFloat(6);
			Date billdate = rs.getDate(7);
			int cid = rs.getInt(8);
			

			
			
			inserted_deliver_info c = new inserted_deliver_info(deliverbillID,orderdate,Total,orderID,Tax,deliverycost,billdate,cid);
			inserted_deliver_info.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return inserted_deliver_info;
	
	
	
	
	

}



public static boolean insertToOtherdeliver(String bllID, String cusID, String orderID, String deliverdate,
		String billdate, String tax, String cost, String total) {


		
		
	isSuccess = false;
		
		
		int bill_ID= Integer.parseInt(bllID);
		int cus_ID= Integer.parseInt(cusID);
		float Tax = Float.parseFloat(tax);
		float Cost = Float.parseFloat(cost);
		float Total = Float.parseFloat(total);

		
		
		

		

		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "insert into delete_delivery_bills values ('"+bill_ID+"','"+deliverdate+"', '"+Total+"', '"+orderID+"', '"+Tax+"','"+Cost+"','"+billdate+"','"+cus_ID+"')";

		int rs = stmt.executeUpdate(sql);

		if(rs>0) {
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



public static boolean deletedeliverbills(String billID) {
	
int BillID = Integer.parseInt(billID);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "delete from delivery_bills where B_id='"+BillID+"'";

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



public static boolean updatdeliverbill(String diliverBillid, String billDate, String tax, String cost, String total) {
	
	
	
	int DiliverBillid = Integer.parseInt(diliverBillid);
	float Tax = Float.parseFloat(tax);
	float Cost = Float.parseFloat(cost);
	float Total = Float.parseFloat(total);
	

	try {
	con = DBConnect.getConnection();
	stmt = con.createStatement();

	String sql = "update delivery_bills set Total_Amount='"+Total+"', bill_date='"+billDate+"', tax='"+Tax+"',Delivery_Cost='"+Cost+"' where B_id='"+DiliverBillid+"'";

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



public static List<Empdetails> getemp() {
	
	
	

	
	ArrayList<Empdetails> Empdetails = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from new_employee";
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			String nic = rs.getString(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String position = rs.getString(5);
			Float basicsalary = rs.getFloat(7);
			
	
			

			
			
			Empdetails c = new Empdetails(nic,name,email,position,basicsalary);
			Empdetails.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return Empdetails;
	
	

}



public static List<Empdetails> getempdetails(String nic) {
	
	
	ArrayList<Empdetails> Empdetails = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from new_employee where Nic='"+nic+"'";
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			String Nic = rs.getString(1);
			String Name = rs.getString(2);
			String Email = rs.getString(3);
			String Position = rs.getString(5);
			Float Basicsalary = rs.getFloat(7);
			
	
			

			
			
			Empdetails c = new Empdetails(Nic,Name,Email,Position,Basicsalary);
			Empdetails.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return Empdetails;
	
}







public static boolean insertdeliverybill(String nic, String epf, String etf, String ot, String bonus, String basicsalary) {
	
	
	
	
	isSuccess = false;
	
	
	float EPF = Float.parseFloat(epf);
	float ETF = Float.parseFloat(etf);
	float OT = Float.parseFloat(ot);
	float Bonus = Float.parseFloat(bonus);
	float Basicsalary = Float.parseFloat(basicsalary);

	
	float total = Basicsalary + OT + EPF + ETF + Bonus;

	
	
	

	

	
	try {
	con = DBConnect.getConnection();
	stmt = con.createStatement();

	String sql = "insert into salaries values (0,'"+ETF+"','"+EPF+"', '"+OT+"', '"+Bonus+"', '"+nic+"','"+total+"')";

	int rs = stmt.executeUpdate(sql);

	if(rs>0) {
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





public static List<EmpSalaryDetails> getemphistroy(String nic) {

	ArrayList<EmpSalaryDetails> EmpSalaryDetails = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from salaries where Nic='"+nic+"'";
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			int SalaryID = rs.getInt(1);
			float ETF = rs.getFloat(2);
			float EPF = rs.getFloat(3);
			float OT = rs.getFloat(4);
			float Bonus = rs.getFloat(5);
			String Nic = rs.getString(6);
			float Total = rs.getFloat(7);
			
	
			

			
			
			EmpSalaryDetails c = new EmpSalaryDetails(SalaryID,ETF,EPF,OT,Bonus,Nic,Total);
			EmpSalaryDetails.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return EmpSalaryDetails;
	
	
	
}



public static List<EmpSalaryDetails> getsalaryupdate(String salid) {
	
	
	ArrayList<EmpSalaryDetails> EmpSalaryDetails = new ArrayList<>();
	//Validate
	try {
		
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		
		String sql = "select * from salaries where Sal_id='"+salid+"'";
		
		 rs = stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			
		
			int SalaryID = rs.getInt(1);
			float ETF = rs.getFloat(2);
			float EPF = rs.getFloat(3);
			float OT = rs.getFloat(4);
			float Bonus = rs.getFloat(5);
			String Nic = rs.getString(6);
			float Total = rs.getFloat(7);
			
	
			

			
			
			EmpSalaryDetails c = new EmpSalaryDetails(SalaryID,ETF,EPF,OT,Bonus,Nic,Total);
			EmpSalaryDetails.add(c);
			 
			
			 
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
		System.out.println("rrrr");
	}
	
	
	return EmpSalaryDetails;
	
	
	

}



public static boolean updatdeliverbill(String salID, String nic, String etf, String epf, String ot, String bonus,
		String total) {
	
	
	
	
	int SalID = Integer.parseInt(salID);
	float Etf = Float.parseFloat(etf);
	float Epf = Float.parseFloat(epf);
	float Ot = Float.parseFloat(ot);
	float Bonus = Float.parseFloat(bonus);
	float Total = Float.parseFloat(total);
	

	try {
	con = DBConnect.getConnection();
	stmt = con.createStatement();

	String sql = "update salaries set Sal_id='"+SalID+"', Nic='"+nic+"', ETF='"+Etf+"',EPF='"+Epf+"',Over_time='"+Ot+"',Bonus='"+Bonus+"',total_salary='"+Total+"' where Sal_id='"+salID+"'";

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



public static boolean deletesalary(String salid) {
	
	
	
	int Salid = Integer.parseInt(salid);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "delete from salaries where Sal_id='"+Salid+"'";

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



public static boolean repairbillreport(String date)
{
try {
con=DBConnect.getConnection();
stmt =con.createStatement();

String sql = "select repairs.Rid,repair_bills.B_id,repair_bills.Sparepart_price,repairs.qty,repair_bills.Service_Charges,repair_bills.Total_Amount,repair_bills.Date from automart.repair_bills inner join automart.repairs where repairs.Rid = repair_bills.Rid and repair_bills.Date = '"+date+"'";
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








public static List <Report> getrepairbillreport(String date) {
	
	
	ArrayList<Report> report = new ArrayList<>();

	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "select repairs.Rid,repair_bills.B_id,repair_bills.Sparepart_price,repairs.qty,repair_bills.Service_Charges,repair_bills.Total_Amount,repair_bills.Date from automart.repair_bills inner join automart.repairs where repairs.Rid = repair_bills.Rid and repair_bills.Date = '"+date+"'";
		
		rs = stmt.executeQuery(sql);
		while(rs.next()) {
			
			
			int rid = rs.getInt(1);
			int bid = rs.getInt(2);
			float sparepartprice = rs.getFloat(3);
			int qty = rs.getInt(4);
			float servicecharges = rs.getFloat(5);
			float total = rs.getFloat(6);
			String Date = rs.getString(7);
			
			
			Report r = new Report (rid, bid, sparepartprice, qty, servicecharges, total, Date);
			
			report.add(r);
			
		}
		
		
	}catch(Exception e){
		
		e.printStackTrace();
		
	}
	return report;
	
	
}









}












