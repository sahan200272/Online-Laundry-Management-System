package admin.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.Admin;
import admin.model.SelectAdminDAO;
import admin.model.UpdateAdminDAO;

import java.io.IOException;
import java.util.List;

@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("a_id"));
        String name = request.getParameter("a_name");
        String nic = request.getParameter("a_nic");
        String phone = request.getParameter("a_phone");
        String email = request.getParameter("a_email");
        String username = request.getParameter("a_username");
        String password = request.getParameter("a_password");
        
        boolean result = UpdateAdminDAO.updateAdmin(id, name, nic, phone, email, username, password);
        
        if(result) {
        	
        	List<Admin> adminList = SelectAdminDAO.selectAdminData();
    		request.setAttribute("adminList", adminList);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("/admin/manage_admin.jsp");
    		dis.forward(request, response);
        }
        
    }
}
