package net.heesu.user;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.heesu.db.Database;

@WebServlet("/users/save")
public class SaveUserServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException ,java.io.IOException {
		String title = request.getParameter("title");
		String username = request.getParameter("username");
		String usermail = request.getParameter("usermail");
		String usercard = request.getParameter("usercard");
		String cardnumber = request.getParameter("cardnumber");
		String expiration = request.getParameter("expiration");
		
		User user = new User(title, username, usermail, usercard, cardnumber, expiration);
		Database.addUser(user);
		
		response.sendRedirect("/");
	};
}
