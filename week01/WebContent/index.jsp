<%@page import="java.util.Iterator"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="week01.Database" %>
<%@ page import="week01.User" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="form.jsp">signup</a><br>
	
	
	
	<% HashMap<String, User> users = Database.getUserList(); %>
	<% Iterator<String> keys = users.keySet().iterator(); %>
	<% while(keys.hasNext()) {
		String key = keys.next();
		User user = users.get(key);
		out.print(String.format("<a href='updateForm.jsp?email=%s'>", user.getEmail()));
		out.print(user.getEmail()+", "+user.getName());
		out.print("</a>"+"<br>");
	} %>
	
</body>
</html>