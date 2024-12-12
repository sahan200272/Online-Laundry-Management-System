package user.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.*;


@WebServlet("/RegisterServlet")

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String userName = request.getParameter("uname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pwd");
		
		boolean result = RegisterDAO.insertData(firstName, lastName, userName, email, phone, password);
		
		if(result) {
			
			RequestDispatcher dis = request.getRequestDispatcher("/user_register_and_login/login.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("/user_register_and_login/register.jsp");
			dis2.forward(request, response);
		}
	}

}
