package question.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class InsertQuestionDAO {

	 public static boolean insertQuestion( String name, String phone, String email, String question, String userName) {
		 
	        boolean status = false;
	        Connection con = DatabaseConnection.getConnection();

	        try {
	            PreparedStatement pstmt = con.prepareStatement("insert into questions value (0, ?, ?, ?, ?, ?, date(curdate()))");

	            pstmt.setString(1, name);
	            pstmt.setString(2, phone);
	            pstmt.setString(3, email);
	            pstmt.setString(4, question);
	            pstmt.setString(5, userName);

	            int result = pstmt.executeUpdate();

	            if (result >= 1) {
	            	
	                status = true;
	                
	            } else {
	            	
	                status = false;
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }

	        return status;
	    }
}
