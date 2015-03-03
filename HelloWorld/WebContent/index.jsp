<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("username"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="./commons/_head.jspf" %>
</head>
<body>
	<%@ include file="./commons/_body.jspf" %>
	<%-- <jsp:include page="./commons/_body.jspf" flush="false"></jsp:include> --%>
	how
	<!-- Database.java 의 내용을 바꿨더니, cmd+f11을 하면 '서버를 재시작하겠냐'고 물어온다.
		index.jsp 내용은 바꿔도 안 물어오는데. 그래서 내심 기대를 했는데, -->
	<!-- 그래도 그 전에 입력한 양식 내용이 메모리에 남아있다. -->
</body>
</html>