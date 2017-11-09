<%-- include 지시자를 이용한 JSP 페이지 포함시키기 부모 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String book = null;
	
	// no 파라미터 이름이 없거나 파라미터 값이 1이면 
	if(no == null || no.equals("1")) {
		no = "1";
		book = "안드로이드 앱 프로그래밍";
	} else if(no.equals("2")) {
		book = "자바스크립트 완벽 가이드";
	} else if(no.equals("3")) {
		book = "HTML5 + CSS3 웹표준의 정석";
	} else if(no.equals("4")) {
		book = "자바의 神";
	} else if(no.equals("5")) {
		book = "jQuery를 활용한 인터랙티브 웹 컨텐츠 제작";
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시자 사용하기</title>
</head>
<body style="font-size: 12px;">
	<h2>도서 정보 보기</h2>
	
	<%-- 
		include 지시자를 사용하여 이 위치에 다른 JSP 페이지를 포함 할 수 있다.
	--%>	
	<%@ include file="jspIncludeSub.jsp" %>	
</body>
</html>