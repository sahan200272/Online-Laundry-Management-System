package admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.model.Admin;
import admin.model.DeleteAdminDAO;
import admin.model.SelectAdminDAO;

@WebServlet("/DeleteAdminServlet")
public class DeleteAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        int adminId = Integer.parseInt(request.getParameter("a_id"));

        boolean result = DeleteAdminDAO.deleteAdminData(adminId);
        
        if(result) {
        	
        	List<Admin> adminList = SelectAdminDAO.selectAdminData();
    		request.setAttribute("adminList", adminList);
    		
    		RequestDispatcher dis = request.getRequestDispatcher("/admin/manage_admin.jsp");
    		dis.forward(request, response);
        }
    }
}
