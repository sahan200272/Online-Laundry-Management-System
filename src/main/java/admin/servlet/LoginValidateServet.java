package admin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.LoginValidateDAO;

@WebServlet("/LoginValidateServet")
public class LoginValidateServet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean result = LoginValidateDAO.validate(username, password);
        
        if(result) {
        
    		
    		RequestDispatcher dis = request.getRequestDispatcher("/admin/home_admin.jsp");
    		dis.forward(request, response);
        }
        else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("../admin/unsucccess.jsp");
			dis2.forward(request, response);
        }
	}

}
