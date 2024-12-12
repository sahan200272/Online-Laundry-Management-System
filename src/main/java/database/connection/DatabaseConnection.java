package database.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	//Create Constants
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/questiondb";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "sah@17834";

	
	  public static Connection getConnection() {
	  
	  Connection connection = null;
	  
	  try { 
		  
		  Class.forName("com.mysql.cj.jdbc.Driver"); 
	  
		  connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
	  
	  } catch (Exception e) { 
		  
		  e.printStackTrace(); 
	  }
	  
	  return connection; 
	  
	  }

}
