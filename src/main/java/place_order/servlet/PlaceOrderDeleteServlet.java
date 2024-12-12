package place_order.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.connection.DatabaseConnection;
import place_order.model.Order;
import place_order.model.SelectPlaceOrderDAO;

@WebServlet("/PlaceOrderDeleteServlet")
public class PlaceOrderDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			HttpSession session = request.getSession(false); 
		
			String userName = (String) session.getAttribute("username");
		 	int id = Integer.parseInt(request.getParameter("id"));
		 	
	        String sql = "DELETE FROM blogs WHERE id = ?";

	        try {
	        	
	        	Connection conn = DatabaseConnection.getConnection();
	        	
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            
	            pstmt.setInt(1, id);
	            
	            int result = pstmt.executeUpdate();
	            
	            if(result >= 1) {
	            	
	            	List<Order> orderList = SelectPlaceOrderDAO.getOrderData(userName);
	    			request.setAttribute("orderList", orderList);
	    			
	    			RequestDispatcher dis = request.getRequestDispatcher("/place_order/PlaceOrderView.jsp");
	    			dis.forward(request, response);
	            }
	            else {
	            	
	            	RequestDispatcher dis = request.getRequestDispatcher("../place_order/unsuccess.jsp");
	    			dis.forward(request, response);
	            }
	            
	            pstmt.close();
	            conn.close();
	            
	        } catch(Exception e) {
	        	
	            e.printStackTrace();
	        }

	        
	    }
	}

