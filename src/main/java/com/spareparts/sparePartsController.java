package com.spareparts;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class sparePartsController {

	//connect DB
	private static boolean isSuccess;
	private static  Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs= null;
	
	//Insert Data Function
	public static boolean insertdata(String name, String email, String phonenumber, String password) {
	    boolean isSuccess = false;
	    try {
	        // DB connection call
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // SQL query
	        String sql = "INSERT INTO admin (name, email, phonenumber, password) VALUES('" + name + "', '" + email + "', '" + phonenumber + "', '" + password + "')";

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





	public static List<sparepartsModel> getById (String Id) {
	    int convertedID = Integer.parseInt(Id);
	    ArrayList<sparepartsModel> admin = new ArrayList<>();
	    
	    try {
	        // DB connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // Correct SQL query
	        String sql = "SELECT * FROM admin WHERE id = " + convertedID;
	        
	        rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	            int id = rs.getInt(1);
	            String name = rs.getString(2);
	            String email = rs.getString(3);
	            String phonenumber = rs.getString(4);
	            String password = rs.getString(5);
	            
	            sparepartsModel bk = new sparepartsModel(id, name, email, phonenumber, password);
	            admin.add(bk);
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return admin;
	}



//GetAll Data
public static List<sparepartsModel> getAlladmin (){
	
	ArrayList<sparepartsModel> admins = new ArrayList<>();
	
	
	try {
		//DB connection
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		
		//Query
		String sql = "select * from admin ";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phonenumber = rs.getString(4);
			String password = rs.getString(5);
			
			sparepartsModel bk = new sparepartsModel(id,name,email,phonenumber,password);
			admins.add(bk);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return admins;
	
}
	
	//update data

	public static boolean updateData(String id , String name , String email, String phonenumber ){//, String password) {
		
	    try {
	        // DB connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        
	        // Correct SQL query
	        String sql = "UPDATE admin SET name='" + name + "', email='" + email + "', phonenumber='" + phonenumber + "'"//, password='" + password + "' "
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
	    		
	    		String sql = "delete from admin where id='"+convID+"'";
	    		
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
		public static sparepartsModel loginValidate(String email, String password) {
			sparepartsModel admin = null;

		    try  {
		    	//DB CONNECTION CALL
				con=DBConnection.getConnection();
				stmt=con.createStatement();
		        
				
				String sql="SELECT * FROM admin WHERE email = ? AND password = ?";
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

		            admin = new sparepartsModel(id, namee, emails, phone, passwords);
		        } else {
		            System.out.println("No matching admin found.");
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return admin;
		}
 
}