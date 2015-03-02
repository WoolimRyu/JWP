<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String username = request.getParameter("username");
	String usermail = request.getParameter("usermail");
	String usercard = request.getParameter("usercard");
	String cardnumber = request.getParameter("cardnumber");
	String expiration = request.getParameter("expiration");
	
	String[] values = {title, username, usermail, usercard, cardnumber, expiration};
	for(int i=0; i<values.length; i++) {
		out.println(values[i] +"<br />");
	}
%>