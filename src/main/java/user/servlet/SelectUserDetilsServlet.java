package user.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.*;

@WebServlet("/SelectUserDetilsServlet")
public class SelectUserDetilsServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession session = request.getSession(false); 
		
			if (session != null) {
			
            String userName = (String) session.getAttribute("username"); 
				
            List<User> userDetails = LoginDAO.getUserDetails(userName);
            request.setAttribute("userDetails", userDetails);
				 
			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
            dis.forward(request, response); 	
            	
        }
	}

}
