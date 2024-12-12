package feedback.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import database.connection.DatabaseConnection;

import java.util.ArrayList;
import java.util.List;

public class DBUtil {

    // Method to insert feedback into the database
    public static boolean insertFeedback(Feedback feedback) {
    	
        Connection con = null;
        PreparedStatement ps = null;
        boolean status = false;
        
        try {
        	
            con = DatabaseConnection.getConnection(); // Get connection
            
            String query = "INSERT INTO feedback (id, name, email, feedbackText, userName) VALUES (0, ?, ?, ?, ?)";
            
            ps = con.prepareStatement(query);
            
            ps.setString(1, feedback.getName());
            ps.setString(2, feedback.getEmail());
            ps.setString(3, feedback.getFeedbackText());
            ps.setString(4, feedback.getUname());
            
            int rowsInserted = ps.executeUpdate();
            
            if(rowsInserted >= 1) {
            	
            	status = true;
            }
            else {
            	
            	status = false;
            }
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            
        } finally {
        	
            close(con, ps); // Close resources
        }
        
        return status;
    }

    // Method to retrieve a list of all feedback
    public static List<Feedback> getAllFeedback() {
    	
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        List<Feedback> feedbackList = new ArrayList<>();
        
        try {
        	
            con = DatabaseConnection.getConnection(); // Get connection
            String query = "SELECT * FROM feedback";
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
            	
                Feedback feedback = new Feedback(rs.getInt("id"),
                                                 rs.getString("name"),
                                                 rs.getString("email"),
                                                 rs.getString("feedbackText"),
                                                 rs.getString("userName"));
                
                feedbackList.add(feedback); // Add each feedback to list
            }
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            
        } finally {
        	
            close(con, ps, rs); // Close resources
        }
        
        return feedbackList;
    }
    
    

    // Method to retrieve a single feedback by ID
    public static List<Feedback> getFeedbackById(int id) {

        
        List<Feedback> feedbackList = new ArrayList<>();
        
        try {
        	
        	Connection con = DatabaseConnection.getConnection(); // Get connection
            
            String query = "SELECT * FROM feedback WHERE userName = ?";
            
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
            	Feedback feedback = new Feedback(rs.getInt("id"),
                                        rs.getString("name"),
                                        rs.getString("email"),
                                        rs.getString("feedbackText"),
                                        rs.getString("userName"));
                
                feedbackList.add(feedback);
            }
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            
        } 
        
        return feedbackList;
    }
    
public static List<Feedback> getFeedbackByUname(String uname) {

        
        List<Feedback> feedbackList = new ArrayList<>();
        
        try {
        	
        	Connection con = DatabaseConnection.getConnection(); // Get connection
            
            String query = "SELECT * FROM feedback WHERE userName = ?";
            
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, uname);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
            	Feedback feedback = new Feedback(rs.getInt("id"),
                                        rs.getString("name"),
                                        rs.getString("email"),
                                        rs.getString("feedbackText"),
                                        rs.getString("userName"));
                
                feedbackList.add(feedback);
            }
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            
        } 
        
        return feedbackList;
    }

    // Method to update feedback in the database
    public static boolean updateFeedback(Feedback feedback) {
    	
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
        	
            con = DatabaseConnection.getConnection(); // Get connection
            
            String query = "UPDATE feedback SET name = ?, email = ?, feedbackText = ? WHERE id = ?";
            
            ps = con.prepareStatement(query);
            
            ps.setString(1, feedback.getName());
            ps.setString(2, feedback.getEmail());
            ps.setString(3, feedback.getFeedbackText());
            ps.setInt(4, feedback.getId());
            
            int rowsUpdated = ps.executeUpdate();
            
            return rowsUpdated > 0; // Return true if feedback is updated
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            return false;
            
        } finally {
        	
            close(con, ps); // Close resources
        }
    }
    
    

    // Method to delete feedback by ID
    public static boolean deleteFeedback(int id) {
    	
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
        	
            con = DatabaseConnection.getConnection(); // Get connection
            
            String query = "DELETE FROM feedback WHERE id = ?";
            
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            
            int rowsDeleted = ps.executeUpdate();
            
            return rowsDeleted > 0; // Return true if feedback is deleted
            
        } catch (SQLException e) {
        	
            e.printStackTrace();
            return false;
            
        } finally {
        	
            close(con, ps); // Close resources
        }
    }

    // Helper method to close Connection, PreparedStatement, and ResultSet
    public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Helper method to close Connection and PreparedStatement
    public static void close(Connection con, PreparedStatement ps) {
        try {
            if (ps != null) {
                ps.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Helper method to close Connection only
    public static void close(Connection con) {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
