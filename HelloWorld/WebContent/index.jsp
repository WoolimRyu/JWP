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
	ho
	<!-- 내용 바꾸고 서버를 재시작해도, 그 전에 post로 보낸 값들이 여전히 메모리에 남아있다? (_body.jspf에서 for로 출력하는데 나옴.) -->
</body>
</html>