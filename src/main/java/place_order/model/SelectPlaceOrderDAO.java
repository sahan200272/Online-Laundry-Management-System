package place_order.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.connection.DatabaseConnection;

public class SelectPlaceOrderDAO {

	public static List<Order> getOrderData(String userName) {
		
		List<Order> orderList = new ArrayList<>();
		
		Connection con = DatabaseConnection.getConnection();
		
		try {
			
			PreparedStatement pstmt = con.prepareStatement("SELECT * FROM blogs WHERE uname = ?");
			
			pstmt.setString(1, userName);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String phoneNo = rs.getString("phoneNo");
				String shirts = rs.getString("shirts");
				String pants = rs.getString("pants");
				String jeans = rs.getString("jeans");
				String towels = rs.getString("towels");
				String mundu = rs.getString("mundu");
				String bedSheet = rs.getString("bedSheet");
				String shorts = rs.getString("shorts");
				String washing = rs.getString("washing");
				String ironing = rs.getString("ironing");
				String totalAmount = rs.getString("totalAmount");
				String uname = rs.getString("uname");
				
				Order order = new Order(id, name, phoneNo, shirts, pants, jeans, towels, mundu, bedSheet, shorts, washing, ironing, totalAmount, uname);
				
				orderList.add(order);
			}

			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return orderList;
	}
}
