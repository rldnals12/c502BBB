<%-- <jap:include>를 이용해 동적으로 JSP페이지 포함하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String book = null;
	
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
<title>Insert title here</title>
</head>
<body style="font-size: 12px;">
	<h2>도서 정보 보기</h2>
	<%-- 
		<jsp:include> 표준 액션 태그를 사용해 다른 JSP 페이지를 실행 타임에
		include 하고 <jsp:param> 표준 액션 태그를 사용해 포함될 JSP 페이지에 
		파라미터를 전달할 수 있다. <jsp:param> 태그는 독립적으로 사용할 수 없고
		<jsp:include> 태그의 자식 태그로 사용할 수 있다. 또한 <jsp:param>
		태그로 전달되는 파라미터는 request 내장객체의 setCharacterEncoding()
		메소드에 지정한 문자 셋을 사용해 파라미터를 인코딩하므로 파라미터에 한글이 
		포함되는 경우 <jsp:param> 태그를 사용하기 이전에 setCharacterEncoding()
		메소드를 사용해 적절한 문자 셋을 지정해야 한글 데이터가 제대로 전달된다.  
		flush 속성은 다른 JSP 페이지를 포함하기 전에 버퍼의 내용을 클라이언트로
		전송할지 여부를 지정하는 속성으로 기본 값은 false 이다.
		<jsp:include> 태그는 부모 페이지에서 포함되는 페이지로 요청 처리가 
		넘어갔다가 그 페이지의 실행이 끝나면 다시 부모 페이지로 돌아온다.
	--%>
	<jsp:include page="jspActionParamInclude.jsp" flush="false">
		<jsp:param name="no" value="<%= no %>" />
		<jsp:param name="book" value="<%= book %>" />
	</jsp:include>
</body>
</html>