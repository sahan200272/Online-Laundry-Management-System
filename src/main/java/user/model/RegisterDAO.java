package user.model;

import java.sql.Connection;
import java.sql.Statement;

import database.connection.DatabaseConnection;

public class RegisterDAO {

	public static boolean insertData(String fname, String lname, String uname, String email, String phone, String password) {
		
		boolean isSuccess = false;

		try {
			
			Connection connection = DatabaseConnection.getConnection();
			Statement stat = connection.createStatement();
			
			String sql = "INSERT INTO user VALUES (0, '"+fname+"', '"+lname+"', '"+email+"', '"+phone+"', '"+password+"', '"+uname+"')";
			
			int rs = stat.executeUpdate(sql);
			
			if(rs >= 1) {
				
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
	
}
