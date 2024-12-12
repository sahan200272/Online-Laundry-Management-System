package place_order.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import place_order.model.Order;
import place_order.model.SelectPlaceOrderDAO;
import place_order.model.UpdatePlaceOrderDAO;

@WebServlet("/PlaceOrderUpdateServlet")
public class PlaceOrderUpdateServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String phoneNo = request.getParameter("phoneNo");
        String shirts = request.getParameter("shirts");
        String pants = request.getParameter("pants");
        String jeans = request.getParameter("jeans");
        String towels = request.getParameter("towels");
        String mundu = request.getParameter("mundu");
        String bedSheet = request.getParameter("bedSheet");
        String shorts = request.getParameter("shorts");
        String washing = request.getParameter("washing") != null ? "yes" : "no";
        String ironing = request.getParameter("ironing") != null ? "yes" : "no";
        String totalAmount = request.getParameter("totalAmount");
        String userName = request.getParameter("uname");
 
        // Call the DAO method to update the blog data
        boolean isSuccess = UpdatePlaceOrderDAO.updateBlog(id, name, phoneNo, shirts, pants, jeans, towels, mundu, bedSheet, shorts, washing, ironing, totalAmount);
        
        if (isSuccess) {
            
        	List<Order> orderList = SelectPlaceOrderDAO.getOrderData(userName);
			request.setAttribute("orderList", orderList);
			
			RequestDispatcher dis = request.getRequestDispatcher("/place_order/PlaceOrderView.jsp");
			dis.forward(request, response);
			
        } else {

            response.getWriter().write("Error updating blog data.");
        }
	}

}
