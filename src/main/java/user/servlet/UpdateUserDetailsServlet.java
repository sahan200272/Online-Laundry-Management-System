package user.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.LoginDAO;
import user.model.User;

@WebServlet("/UpdateUserDetailsServlet")
public class UpdateUserDetailsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean result = LoginDAO.updateUserDetails(id, firstName, lastName, email, phone, userName, password);
		
		if(result) {
			
			List<User> userDetails = LoginDAO.getUserDetails(userName);
            request.setAttribute("userDetails", userDetails);
            
            RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
            dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
