package question.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import database.connection.DatabaseConnection;

public class DeleteQuestionDAO {

public static boolean deleteQuestion(int id) {
    	
    	boolean status = false;
    	
    	Connection con = DatabaseConnection.getConnection();
    	
    	try {
    		
			PreparedStatement pstmt = con.prepareStatement("delete from questiondb.questions where qid = ?");
			pstmt.setInt(1, id);
			
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
