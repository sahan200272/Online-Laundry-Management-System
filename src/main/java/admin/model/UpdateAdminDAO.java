package admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class UpdateAdminDAO {

	public static boolean updateAdmin(int id, String name, String nic, String phone, String email, String username, String password){
		
        boolean result = false;
        Connection conn = DatabaseConnection.getConnection();

        String query = "UPDATE admin SET a_name = ?, a_nic = ?, a_phone = ?, a_email = ?, a_username = ?, a_password = ? WHERE a_id = ?";
        
        try {
        		
        	PreparedStatement ps = conn.prepareStatement(query); 
        	
            ps.setString(1, name);
            ps.setString(2, nic);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, username);
            ps.setString(6, password);
            ps.setInt(7, id);

            result = ps.executeUpdate() > 0;
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
        }

        return result;
    }
}
