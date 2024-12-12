package feedback.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import feedback.model.*;

@WebServlet("/SubmitFeedbackServlet")
public class SubmitFeedbackServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		String userName = (String) session.getAttribute("username");
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedbackText = request.getParameter("feedback");

        Feedback feedback = new Feedback(name, email, feedbackText, userName);
        
        boolean result = DBUtil.insertFeedback(feedback);

        if(result) {
        	
        	List<Feedback> feedbackList = DBUtil.getAllFeedback();
			request.setAttribute("feedbackList", feedbackList);
				 
			RequestDispatcher dis = request.getRequestDispatcher("loginSuccess.jsp");
            dis.forward(request, response); 
        }
        else {
        	
        	RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
            dis.forward(request, response); 
        }
	}

}
