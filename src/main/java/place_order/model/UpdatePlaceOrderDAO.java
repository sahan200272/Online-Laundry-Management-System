package place_order.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class UpdatePlaceOrderDAO {

	public static boolean updateBlog(int id, String name, String phoneNo, String shirts, String pants, String jeans, String towels, String mundu, String bedSheet, String shorts, String washing, String ironing, String totalAmount) {
		
        boolean isSuccess = false;
        Connection conn = null;
        PreparedStatement pstmt = null;
 
        try {
            // Get the connection using the DatabaseConnection class (assuming you have one)
            conn = DatabaseConnection.getConnection();
 
            // SQL Update Query
            String sql = "UPDATE blogs SET name = ?, phoneNo = ?, shirts = ?, pants = ?, jeans = ?, towels = ?, mundu = ?, bedSheet = ?, shorts = ?, washing = ?, ironing = ?, totalAmount = ? WHERE id = ?";
 
            // Prepare the SQL statement
            pstmt = conn.prepareStatement(sql);
 
            // Set parameters for the query
            pstmt.setString(1, name);
            pstmt.setString(2, phoneNo);
            pstmt.setString(3, shirts);
            pstmt.setString(4, pants);
            pstmt.setString(5, jeans);
            pstmt.setString(6, towels);
            pstmt.setString(7, mundu);
            pstmt.setString(8, bedSheet);
            pstmt.setString(9, shorts);
            pstmt.setString(10, washing);
            pstmt.setString(11, ironing);
            pstmt.setString(12, totalAmount);
            pstmt.setInt(13, id);
 
            // Execute the update
            int rowsUpdated = pstmt.executeUpdate();
            if (rowsUpdated > 0) {
                isSuccess = true; // Update was successful
            }
 
        } catch (SQLException e) {
        	
            e.printStackTrace();
            
        } finally {

            if (pstmt != null) {
            	
                try {
                	
                    pstmt.close();
                    
                } catch (SQLException e) {
                	
                    e.printStackTrace();
                }
            }
            if (conn != null) {
            	
                try {
                	
                    conn.close();
                    
                } catch (SQLException e) {
                	
                    e.printStackTrace();
                }
            }
        }
 
        return isSuccess; // Return the success flag
    }
}
