package question.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import question.model.*;

@WebServlet("/InsertQuestionServlet")
public class InsertQuestionServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false); 
        
        if (session != null) {
        	
        	String userName = (String) session.getAttribute("username"); 
        	String cusName = request.getParameter("name");
        	String cusPhone = request.getParameter("contact");
        	String cusEmail = request.getParameter("email");
            String question = request.getParameter("question");
            
            // Insert question into the database
            boolean result = InsertQuestionDAO.insertQuestion(cusName, cusPhone, cusEmail, question, userName);
            
            if (result) {
				
				  request.setAttribute("successMessage", "Question added successfully!");

				  RequestDispatcher dis = request.getRequestDispatcher("loginSuccess.jsp");
				  dis.forward(request, response);
          } 
            
        }
            
	}

}
