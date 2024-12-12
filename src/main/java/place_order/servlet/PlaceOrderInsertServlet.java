package place_order.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import place_order.model.InsertPlaceOrderDAO;
import place_order.model.Order;
import place_order.model.SelectPlaceOrderDAO;

@WebServlet("/PlaceOrderInsertServlet")
public class PlaceOrderInsertServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); 
		
		String userName = (String) session.getAttribute("username");
		
		String name= request.getParameter("name");
		String phoneNo= request.getParameter("phoneNo");
		String shirts= request.getParameter("shirts");
		String pants = request.getParameter("pants");
		String jeans= request.getParameter("jeans");
		String towels= request.getParameter("towels");
		String mundu= request.getParameter("mundu");
		String bedSheet= request.getParameter("bedSheet");
		String shorts= request.getParameter("shorts");
		String washing = request.getParameter("washing");
		String ironing = request.getParameter("ironing");
		String totalAmount= request.getParameter("totalAmount");

		boolean result = InsertPlaceOrderDAO.insertOrderData( name,  phoneNo ,  shirts,  pants,  jeans,  towels,  mundu, bedSheet, shorts,  washing ,  ironing,  totalAmount, userName);
		
		if(result == true) { 
					
            List<Order> orderList = SelectPlaceOrderDAO.getOrderData(userName);
			request.setAttribute("orderList", orderList);
			
			RequestDispatcher dis = request.getRequestDispatcher("/place_order/PlaceOrderView.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsucccess.jsp");
			dis2.forward(request, response);
		}
	}

}
