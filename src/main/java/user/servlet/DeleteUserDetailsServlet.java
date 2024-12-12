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

@WebServlet("/DeleteUserDetailsServlet")
public class DeleteUserDetailsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String userName = request.getParameter("uname");
		
		boolean result = LoginDAO.DeleteUserDetails(id);
		
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
