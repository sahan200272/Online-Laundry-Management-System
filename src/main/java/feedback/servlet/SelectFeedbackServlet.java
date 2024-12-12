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

import feedback.model.DBUtil;
import feedback.model.Feedback;

@WebServlet("/SelectFeedbackServlet")
public class SelectFeedbackServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		String userName = (String) session.getAttribute("username");
		
		List<Feedback> feedbackList = DBUtil.getFeedbackByUname(userName);
		request.setAttribute("feedbackList", feedbackList);
		
		RequestDispatcher dis = request.getRequestDispatcher("/feedbacks/feedbackView.jsp");
        dis.forward(request, response);
	}

}
