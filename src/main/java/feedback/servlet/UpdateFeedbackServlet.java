package feedback.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import feedback.model.*;


@WebServlet("/UpdateFeedbackServlet")
public class UpdateFeedbackServlet extends HttpServlet {
	
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
    	
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedbackText = request.getParameter("feedbackText");
        String userName = request.getParameter("uname");

        // Create Feedback object with updated details
        Feedback feedback = new Feedback(id, name, email, feedbackText, userName);

        // Update feedback in the database
        boolean isUpdated = DBUtil.updateFeedback(feedback);

        if (isUpdated) {
            
        	List<Feedback> feedbackList = DBUtil.getFeedbackByUname(userName);
			request.setAttribute("feedbackList", feedbackList);
				 
			RequestDispatcher dis = request.getRequestDispatcher("/feedbacks/feedbackView.jsp");
            dis.forward(request, response); 
        	
        }
        else {
        	
        	RequestDispatcher dis = request.getRequestDispatcher("../feedbacks/unsuccess.jsp");
            dis.forward(request, response); 
        }
    }
}
