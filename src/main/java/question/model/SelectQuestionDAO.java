package question.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.connection.DatabaseConnection;

public class SelectQuestionDAO {

	public static List<Questions> getQuestions(String userName) {

        List<Questions> questions = new ArrayList<>();

        Connection con = DatabaseConnection.getConnection();

        try {
            // Corrected SQL query
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM questions WHERE uname = ?");
            pstmt.setString(1, userName);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
            	
                int id = rs.getInt("qid");
                String customerName = rs.getString("customerName");
                String customerPhone = rs.getString("customerPhone");
                String customerEmail = rs.getString("customerEmail");
                String questionText = rs.getString("questionText");
                String uname = rs.getString("uname");
                Date date = rs.getDate("date_");
                
                Questions qu = new Questions(id, customerName, customerPhone, customerEmail, questionText, uname, date);

                questions.add(qu);
            }
        } catch (SQLException e) {
        	
            e.printStackTrace();
        }

        return questions; // Return the list of questions
    }
}
