package A_VehicleSpareParts;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.spareparts.DBConnection;


import java.sql.ResultSet;

public class OrderController {
	
	//ConnectDB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert data function
	
	public static boolean insertdata(String Date,String Details,double Cost,String Status) {
		
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con= DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into orders values(0,'"+Date+"','"+Details+"','"+Cost+"','"+Status+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	//GetById
	public static List<OrderModel> getById(String Id){
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <OrderModel> Orders = new ArrayList<>();
		
		try {
			//DBConnection 
			con= DBConnection.getConnection();
			stmt=con.createStatement();
			//SQL Query
			String sql = "Select * from orders where OrderID ='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int OrderID = rs.getInt(1);
				String Date = rs.getString(2);
				String Details = rs.getString(3);
				double Cost = rs.getDouble(4);
				String Status = rs.getString(5);
				
				OrderModel od = new OrderModel(OrderID,Date,Details,Cost,Status);
				Orders.add(od);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return Orders;
	}
	
	//GetAll Data
	
	public static List<OrderModel> getAllorder(){
		
		ArrayList <OrderModel> orders = new ArrayList<>();
		
		try {
			//DBConnection 
			con= DBConnection.getConnection();
			stmt=con.createStatement();
			//SQL Query
			String sql = "Select * from orders";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int OrderID = rs.getInt(1);
				String Date = rs.getString(2);
				String Details = rs.getString(3);
				double Cost = rs.getDouble(4);
				String Status = rs.getString(5);
				
				OrderModel od = new OrderModel(OrderID,Date,Details,Cost,Status);
				orders.add(od);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return orders;
		
	}
	
	//Update data
	public static boolean updatedata(String OrderID,String Date,String Details,double Cost,String Status) {
		try {
			//DBConnection 
			con= DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "UPDATE orders SET Date='" + Date + "', Details='" + Details + "', Cost=" + Cost + ", Status='" + Status + "' WHERE OrderID=" + OrderID;

			
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
	
	//Delete Data
	public static boolean deletedata(String OrderID) {
		int convID = Integer.parseInt(OrderID);
		
		try {
			//DBConnection 
			con= DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from orders where OrderID='"+convID+"'";
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
	
	
	//login validate
		public static supplierModel loginValidate(String email, String password) {
			supplierModel supplier = null;

		    try  {
		    	//DB CONNECTION CALL
				con=DBConnection.getConnection();
				stmt=con.createStatement();
		        
				
				String sql="SELECT * FROM supplier WHERE email = ? AND password = ?";
				PreparedStatement pstmt=con.prepareStatement(sql);
		        pstmt.setString(1, email);
		        pstmt.setString(2, password);

		        ResultSet rs = pstmt.executeQuery();

		        if (rs.next()) {
		            int id = rs.getInt("id");
		            String name = rs.getString("name");
		            String emails = rs.getString("email");
		            String phone = rs.getString("phonenumber");
		            String passwords = rs.getString("password");

		            supplier = new supplierModel(id, name, emails , phone, passwords);
		        } else {
		            System.out.println("No matching supplier found.");
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return supplier;
		}

	
}

	
	
	
	


