<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="net.heesu.user.User" %>
<%@ page import="net.heesu.db.Database" %>

<%
	String title = request.getParameter("title");
	String username = request.getParameter("username");
	String usermail = request.getParameter("usermail");
	String usercard = request.getParameter("usercard");
	String cardnumber = request.getParameter("cardnumber");
	String expiration = request.getParameter("expiration");
	
	User user = new User(title, username, usermail, usercard, cardnumber, expiration);
	Database.addUser(user);
	
	response.sendRedirect("/");
%>