package question.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import question.model.Questions;
import question.model.SelectQuestionDAO;

@WebServlet("/SelectQuestionServlet")
public class SelectQuestionServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); 
		
		if (session != null) {
			
            String userName = (String) session.getAttribute("username"); 
				
            List<Questions> qu = SelectQuestionDAO.getQuestions(userName);
			request.setAttribute("question", qu);
				 
			RequestDispatcher dis = request.getRequestDispatcher("/ask_questions/showQuestions.jsp");
            dis.forward(request, response); 	
            	
        }
	}

}
