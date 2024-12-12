package user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.connection.DatabaseConnection;

public class LoginDAO {

	public static boolean validate(String uname, String pwd) {
		
		boolean status = false;
		
		try {
			
			Connection con = DatabaseConnection.getConnection();
			
			PreparedStatement pstmt = con.prepareStatement("SELECT id FROM user WHERE userName = ? AND password = ?");
			pstmt.setString(1, uname);
			pstmt.setString(2, pwd);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				status = true;
				
			}
			else {
				
				status = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return status;
	}
	
	//Get User Details Static Method 
	public static List<User> getUserDetails(String userName){
		
		ArrayList<User> user = new ArrayList<>();
		
		Connection con = DatabaseConnection.getConnection();
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("Select * from user where userName = ?");
			pstmt.setString(1, userName);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				int id = rs.getInt("id");
				String firstName = rs.getString("First_Name");
				String lastName = rs.getString("Last_Name");
				String email = rs.getString("Email");
				String phone = rs.getString("Phone");
				String password =rs.getString("password");
				String userName1 = rs.getString("userName");
				
				User userobj = new User(id, firstName, lastName, email, phone, password, userName1);
				
				user.add(userobj);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return user;
	}
	
	//User Details Update Method
	public static boolean updateUserDetails(int id, String fname, String lname, String email, String phone, String uname, String password) {
		
		boolean status = false;
		
		Connection con = DatabaseConnection.getConnection();
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("update user set First_Name = ?, Last_Name = ?, Email = ?, Phone = ?, userName = ?,  password = ?  where id = ?");
			
			pstmt.setString(1, fname);
			pstmt.setString(2, lname);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			pstmt.setString(5, uname);
			pstmt.setString(6, password);
			pstmt.setInt(7, id);
			
			int result = pstmt.executeUpdate();
			
			if(result >= 1) {
				
				status = true;
			}
			else {
				
				status = false;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return status;
	}
	
	//Delete User Details Method
	public static boolean DeleteUserDetails(int id) {
		
		boolean status = false;
		
		Connection con = DatabaseConnection.getConnection();
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("DELETE FROM user WHERE id = ?");
			
			pstmt.setInt(1, id);
			
			int result = pstmt.executeUpdate();
			
			if(result >= 1) {
				
				status = true;
			}
			else {
				
				status = false;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return status;
	}
}
