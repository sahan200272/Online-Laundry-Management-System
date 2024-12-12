package admin.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.AddAdminDAO;
import admin.model.Admin;
import admin.model.SelectAdminDAO;

import java.io.IOException;
import java.util.List;

@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String name = request.getParameter("a_name");
        String nic = request.getParameter("a_nic");
        String phone = request.getParameter("a_phone");
        String email = request.getParameter("a_email");
        String username = request.getParameter("a_username");
        String password = request.getParameter("a_password");

        boolean result = AddAdminDAO.insertAdminData(name, nic, phone, email, username, password);
        
        if(result) {
        	
        		List<Admin> adminList = SelectAdminDAO.selectAdminData();
        		request.setAttribute("adminList", adminList);
        		
        		RequestDispatcher dis = request.getRequestDispatcher("/admin/manage_admin.jsp");
        		dis.forward(request, response);
        }
		else {
					
				RequestDispatcher dis2 = request.getRequestDispatcher("../admin/unsucccess.jsp");
				dis2.forward(request, response);
		}
    }
}
