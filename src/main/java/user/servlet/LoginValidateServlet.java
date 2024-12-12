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

import feedback.model.DBUtil;
import feedback.model.Feedback;
import user.model.LoginDAO;

@WebServlet("/LoginValidateServlet")
public class LoginValidateServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
        String password = request.getParameter("password");
        
        
        boolean result = LoginDAO.validate(userName, password);
        
        if(result) {

            HttpSession session = request.getSession();
            session.setAttribute("username", userName);
            
            List<Feedback> feedbackList = DBUtil.getAllFeedback();
			request.setAttribute("feedbackList", feedbackList);
            
            RequestDispatcher dis = request.getRequestDispatcher("loginSuccess.jsp");
            dis.forward(request, response);
            
        } else {
        	
        	response.getWriter().write("Login credentials are Invalid");
        }
	}

}
