package question.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class UpdateQuesionDAO {

public static boolean updateQuestion(String cname, String cphone, String cemail, String question, int id) {
    	
    	boolean status = false;
    	
    	Connection con = DatabaseConnection.getConnection();
    	
    	try {
    		
			PreparedStatement pstmt = con.prepareStatement("update questions set customerName = ?, customerPhone = ?, customerEmail = ?, questionText = ? , date_ = date(curdate()) where qid = ? ");
			
			pstmt.setString(1, cname);
			pstmt.setString(2, cphone);
			pstmt.setString(3, cemail);
			pstmt.setString(4, question);
			pstmt.setInt(5, id);
			
			int result = pstmt.executeUpdate();
			
			if(result >= 1) {
				
				status = true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    	
    	return status;
    }
}
