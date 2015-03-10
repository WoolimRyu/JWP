<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="net.heesu.user.UsernameMismatchException"%>
<%@page import="net.heesu.user.UserNotFoundException"%>
<%@page import="net.heesu.user.User"%>
<%@page import="net.heesu.db.Database"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String usermail = request.getParameter("usermail");
	String username = request.getParameter("username");
	
	try {
		User.login(usermail, username);
		session.setAttribute("usermail", usermail);
		/* session scope 에 담으면 다른 jsp 에서도 접근 가능, 
		but 메모리 차지하므로 최대한 자제. */

		response.sendRedirect("/");
	} catch (UserNotFoundException e) {
		request.setAttribute("errorMessage", "존재하지 않는 사용자입니다.");	
		/* request 에 담으면, session 과 달리, 접근 못 함. */
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	} catch (UsernameMismatchException e) {
		request.setAttribute("errorMessage", "이름과 메일이 맞지 않습니다.");	
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	%>
</body>
</html>