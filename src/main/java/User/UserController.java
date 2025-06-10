package User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.spareparts.DBConnection;

public class UserController {
	
	//DB connect
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert data function
    public static boolean insertdata(String firstname, String lastname, String email, String address) {

    	boolean isSuccess = false;
        try {
            // DB connection call
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL Query - FIXED concatenation
            String sql = "insert into user values (0,'"+firstname+"','"+lastname+"','"+email+ "','"+address+"')";

            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
                
            }
            else {
                isSuccess = false;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
    
    //login validate
    public static List<UserModel> loginValidate (String email){
    	
    	ArrayList<UserModel> user = new ArrayList<>();
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		String sql = "select * from user where " + "email= '"+email+"'";

    		 rs = stmt.executeQuery(sql);
    		
    		if(rs.next()) {
    			int id = rs.getInt(1);
    			String firstname = rs.getString(2);
    			String lastname = rs.getString(3);
    			String gmail = rs.getString(4);
    			String address = rs.getString(5);
    			
    			UserModel u = new UserModel(id,firstname,lastname,gmail,address);
    			user.add(u);
    		}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return user;
    }

    //getById
    public static List<UserModel> getById(String Id){
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList <UserModel> user = new ArrayList<>();
    	
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		String sql = "SELECT * FROM user WHERE id = '"+convertedID+"'";

    		
    		rs = stmt.executeQuery(sql);
    		
    		if(rs.next()) {
    			int id = rs.getInt(1);
    			String firstname = rs.getString(2);
    			String lastname = rs.getString(3);
    			String email = rs.getString(4);
    			String address = rs.getString(5);
    			
    			UserModel u = new UserModel(id, firstname, lastname, email, address);
    			user.add(u);	
    			
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    			
    	return user;
    }
    
 
    //update data
    public static boolean updateprofile(String id, String firstname, String lastname, String email, String address) {
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		
    		//SQL Query
    		String sql = "UPDATE user SET firstname='"+firstname+"', lastname='"+lastname+"', email='"+email+"', address='"+address+"' WHERE id='"+id+"'";

    		
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
    
    //Delete data
    public static boolean deletedata(String id) {
    	int convID = Integer.parseInt(id);
    	
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
    		
    		
    		//SQL Query
    		String sql = "delete from user where id ='"+convID+"'";
    		
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
    }


