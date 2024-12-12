package admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.connection.DatabaseConnection;

public class SelectAdminDAO {

	public static List<Admin> selectAdminData(){
		
        List<Admin> adminList = new ArrayList<>();
        
        try {
            
        	Connection conn = DatabaseConnection.getConnection();
            
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM admin");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	
                int a_id = rs.getInt("a_id");
                String a_name = rs.getString("a_name");
                String a_nic = rs.getString("a_nic");
                String a_phone = rs.getString("a_phone");
                String a_email = rs.getString("a_email");
                String a_username = rs.getString("a_username");
                String a_password = rs.getString("a_password");

                Admin admin = new Admin(a_id, a_name, a_nic, a_phone, a_email, a_username, a_password);
                adminList.add(admin);
            }
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
        }

        return adminList;
    }
}
