package admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class DeleteAdminDAO {

	public static boolean deleteAdminData(int id) {
		
		boolean status = false;
		
		Connection con = DatabaseConnection.getConnection();
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("Delete from admin where a_id = ?");
			pstmt.setInt(1, id);
			
			int result = pstmt.executeUpdate();
			
			if(result >=1) {
				
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
