package place_order.model;

import java.sql.Connection;
import java.sql.Statement;

import database.connection.DatabaseConnection;

public class InsertPlaceOrderDAO {

	public static boolean insertOrderData(String name, String phoneNo , String shirts, String pants, String jeans, String towels, String mundu,String bedSheet,String shorts, String washing , String ironing, String totalAmount, String uname) {
		
		boolean isSuccess = false;

		try {
			
			Connection connection = DatabaseConnection.getConnection(); 
			Statement stat = connection.createStatement();
			
			String sql = "INSERT INTO blogs VALUES (0, '"+name+"', '"+phoneNo+"', '"+shirts+"', '"+pants+"', '"+jeans+"', '"+towels+"', '"+mundu+"','"+bedSheet+"','"+shorts+"','"+washing+"','"+ironing+"','"+totalAmount+"', '"+uname+"')";
			
			int rs = stat.executeUpdate(sql);
			
			
			if(rs >= 1) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
