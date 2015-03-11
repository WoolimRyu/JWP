package net.heesu.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String usermail = request.getParameter("usermail");
		String username = request.getParameter("username");
		
		try {
			User.login(usermail, username);
			HttpSession session = request.getSession();
			session.setAttribute("usermail", usermail);
			/* session scope 에 담으면 다른 jsp 에서도 접근 가능, 
			but 메모리 차지하므로 최대한 자제. */

			response.sendRedirect("/");
		} catch (UserNotFoundException e) {
			request.setAttribute("errorMessage", "존재하지 않는 사용자입니다.");	
			/* request 에 담으면, session 과 달리, 접근 못 함. */
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		} catch (UsernameMismatchException e) {
			request.setAttribute("errorMessage", "이름과 메일이 맞지 않습니다.");	
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
	}
}
