<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("username"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="./commons/_head.jspf" %>
</head>
<body>
	<%-- <%@ include file="./commons/_body.jspf" %> --%>
	<jsp:include page="./commons/_body.jspf" flush="false"></jsp:include>
	ho
	<!-- "Hello World from Servlet ho" 라고 나옴. -->
	
	<!-- Hello World from Servlet 은 net.heesu.HelloWorldServlet 에서 온 건데. -->
	<!-- net.heesu 안에 HelloWorldServlet / WebServerLauncher 하는 일이 헷갈린다. -->
	
	<!-- +, 파일 내용 바꾸고 cmd+f11 했는데도 변경사항이 바로 반영되지 않는 경우가 있다. -->
	<!-- HelloWorldServlet 내용이 출력되는 것도 그렇고.. 임베디드 톰캣이 사용되지 않고 있는건가? -->
	<!-- 콘솔에도 HelloWorldServlet 의 Request Success!가 나오지,
		WebServerLauncher 의 configuring app with ~ 은 안 나온다. -->
		
	<!-- 특히 콘솔 내용은, jsp include 방식과 관계없이 계속 Request Success! 이었다. -->
</body>
</html>