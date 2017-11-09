<%-- forward()와 sendRedirect()을 차이점 - 결과 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPStudyCh05Forward</title>
</head>
<body>
<%-- 이전 프로젝트인 JSPStudyCh05의 WebContent 아래에
	forward 폴더를 만들고 이 JSP 페이지를 작성 할 것 --%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String address = request.getParameter("address");	
	
	boolean isForward = Boolean.valueOf(request.getParameter("isForward"));
	
	if(isForward) {
%>
		<h2>JSPStudyCh05 - forward()로 호출</h2>
		
<% } else { %>

		<h2>JSPStudyCh05 - sendRedirect()로 호출</h2>
		
<% } %>

		이 름 : <%= name %><br/>
		주 소 : <%= address %><br/> 
</body>
</html>