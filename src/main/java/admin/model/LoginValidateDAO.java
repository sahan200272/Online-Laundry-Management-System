package admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.connection.DatabaseConnection;

public class LoginValidateDAO {

	public static boolean validate(String uname, String pwd) {
			
			boolean status = false;
			
			try {
				
				Connection con = DatabaseConnection.getConnection();
				
				PreparedStatement pstmt = con.prepareStatement("SELECT a_id FROM admin WHERE a_username = ? AND a_password = ?");
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
}	
