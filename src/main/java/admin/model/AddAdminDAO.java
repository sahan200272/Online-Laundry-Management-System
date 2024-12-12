package admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class AddAdminDAO {

	public static boolean insertAdminData(String name, String nic, String phone, String email, String username, String password) {
		
		boolean status = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = DatabaseConnection.getConnection();
            
            ps = conn.prepareStatement("INSERT INTO admin (a_name, a_nic, a_phone, a_email, a_username, a_password) VALUES (?, ?, ?, ?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, nic);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, username);
            ps.setString(6, password);

            int result = ps.executeUpdate();
            
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
