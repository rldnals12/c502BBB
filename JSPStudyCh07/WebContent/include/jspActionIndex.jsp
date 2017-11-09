<%--<jsp:include>를 이용해 JSP 페이지 모듈화 하기 index --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String requestPage = request.getParameter("requestPage");
	String requestCategory = request.getParameter("requestCategory");
	String file = null;	
	
	// requestPage 파라미터가 없거나 파라미터 값이 1이면
	if(requestPage == null || requestCategory == null ||
			requestPage.equals("1")) {
		
		// jspActionContent01.jsp를 컨텐츠 페이지로 지정한다.
		file = "../pages/jspActionContent01.jsp";
		requestCategory = "가정과 생활";
		
	} else if(requestPage.equals("2")){
		
		// jspActionContent02.jsp를 컨텐츠 페이지로 지정한다.
		file = "../pages/jspActionContent02.jsp";
		
	} else if(requestPage.equals("3")) {
		
		// jspActionContent03.jsp를 컨텐츠 페이지로 지정한다.
		file = "../pages/jspActionContent03.jsp";
	}
	
	// request 영역의 속성에 컨텐츠 페이지 정보를 저장한다.
	request.setAttribute("requestPage", requestPage);
	request.setAttribute("requestCategory", requestCategory);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>JSP 페이지 모듈화 하기</title>
<link type="text/css" href="../css/jspActionIndex.css" rel="stylesheet" />
</head>
<body>
	<div id="wrap">	
		<%-- 표준액션 태그를 이용해 Header, 메뉴, Footer include 하기 --%>		
		<jsp:include page="../pages/jspActionHeader.jsp" />		
		<div class="clear"></div>
		<jsp:include page="../pages/jspActionNav.jsp" />
		<%-- 
			<jsp:param> 태그를 이용해 요청 페이지와 카테고리 정보를
			이 페이지에 포함되는 JSP 페이지로 파라미터를 전달할 수 있다. 
		--%>
		<jsp:include page="<%= file %>">			
			<jsp:param name="requestPage" value="<%= requestPage %>"/>
			<jsp:param name="requestCategory" value="<%= requestCategory %>"/>
		</jsp:include>
		<div class="clear"></div>		
		<jsp:include page="../pages/jspActionFooter.jsp" />
	</div>
</body>
</html>