package com.spareparts;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class hPartsController {

	//connect DB
	private static boolean isSuccess;
	private static  Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs= null;
	
	//Insert Data Function
	public static boolean insertdata(String name, String qty, String price, String description) {
	    boolean isSuccess = false;
	    try {
	        // DB connection call
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // SQL query
	        String sql = "INSERT INTO parts (name, qty, price, description) VALUES('" + name + "', '" + qty + "', '" + price + "', '" + description + "')";

	        int result = stmt.executeUpdate(sql);  // changed variable name to result
	        
	        if(result > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}





	public static List<partsModel> getById (String Id) {
	    int convertedID = Integer.parseInt(Id);
	    ArrayList<partsModel> parts = new ArrayList<>();
	    
	    try {
	        // DB connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // Correct SQL query
	        String sql = "SELECT * FROM parts WHERE id = " + convertedID;
	        
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String qty = rs.getString(3);
	            String price = rs.getString(4);
	            String description = rs.getString(5);
	            
	            partsModel bk = new partsModel(id, name, qty, price, description);
	            parts.add(bk);
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return parts;
	}



//GetAll Data
public static List<partsModel> getAllparts (){
	
	ArrayList<partsModel> parts = new ArrayList<>();
	
	
	try {
		//DB connection
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		//Query
		String sql = "select * from parts ";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String qty = rs.getString(3);
			String price = rs.getString(4);
			String description = rs.getString(5);
			
			partsModel bk = new partsModel(id,name,qty,price,description);
			parts.add(bk);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return parts;
	
}
	
	//update data

	public static boolean updateData(String id , String name , String qty, String price , String description ){//, String password) {
		
	    try {
	        // DB connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // Correct SQL query
	        String sql = "UPDATE parts SET name='" + name + "', qty='" + qty + "', price='" + price + "' , description='"+description+"'"//, password='" + password + "' "
	        		+ "WHERE id='"+id+"'";                    
	        
	        int rs = stmt.executeUpdate(sql);
	        
	        if(rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	        
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	    
	}
	    
	    
	   //Delete Data
	   
	    public static boolean deletedata(String id) {
	    	int convID = Integer.parseInt(id);
	    
	    	try {
	    		//DB connection
	    		con = DBConnection.getConnection();
	    		stmt=con.createStatement();
	    		
	    		String sql = "delete from parts where id='"+convID+"'";
	    		
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
	    
	
	  //login validate
		public static partsModel loginValidate(String email, String password) {
			partsModel manager = null;

		    try  {
		    	//DB CONNECTION CALL
				con=DBConnection.getConnection();
				stmt=con.createStatement();
		        
				
				String sql="SELECT * FROM manager WHERE email = ? AND password = ?";
				PreparedStatement pstmt=con.prepareStatement(sql);
		        pstmt.setString(1, email);
		        pstmt.setString(2, password);

		        ResultSet rs = pstmt.executeQuery();

		        if (rs.next()) {
		            int id = rs.getInt("id");
		            String namee = rs.getString("name");
		            String emails = rs.getString("email");
		            String phone = rs.getString("phonenumber");
		            String passwords = rs.getString("password");

		            manager = new partsModel(id, namee, emails, phone, passwords);
		        } else {
		            System.out.println("No matching admin found.");
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return manager;
		}
 
}