package question.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import question.model.*;

@WebServlet("/UpdateQuestionServlet")
public class UpdateQuestionServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int id = Integer.parseInt(request.getParameter("id"));
		String customerName = request.getParameter("cname");
		String customerPhone = request.getParameter("phone");
	    String customerEmail = request.getParameter("email");
		String question = request.getParameter("question");
		String uname = request.getParameter("uname");
		
		boolean result = UpdateQuesionDAO.updateQuestion(customerName, customerPhone, customerEmail, question, id);
		
		if(result) {
			
			List<Questions> qu = SelectQuestionDAO.getQuestions(uname);
			request.setAttribute("question", qu);
			
			RequestDispatcher dis = request.getRequestDispatcher("/ask_questions/showQuestions.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
