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
	
	if (User.login(usermail, username)) {
		session.setAttribute("usermail", usermail);
	}
	
	response.sendRedirect("/");
	%>
</body>
</html>