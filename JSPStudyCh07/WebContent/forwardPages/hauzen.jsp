<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* <jsp:param> 표준 액션 태그로 전달된 파라미터는 GET 방식으로 전달되기  
	 * 때문에 톰캣 서버의 URIEncoding 속성에 지정된 문자 셋이 적용된다.
	 **/
	//request.setCharacterEncoding("UTF-8");
	System.out.println(request.getMethod());

	String price = request.getParameter("price");
	String manufacturer = request.getParameter("manufacturer");
	String image = request.getParameter("image");	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../css/forwardParam.css" rel="stylesheet"/>
</head>
<body>
	<div>
		<h1>상품 상세보기</h1>
		<table>		
			<tr><th>삼성전자 하우젠 H5632SCM</th><tr>
			<tr><td class="image"><img src="<%= image %>" /></td></tr>
			<tr><td class="info">
				제조사/브랜드 : <%= manufacturer %> / 하우젠<br/>
				가격 : <%= price %><br/>
				14kg, 건조8kg, 파워버블샷/스포츠버블/베이비버블/<br/>
				원스탑버블/나이트버블/에어살균/에어탈취, 건조기능<br/>
				액체세제/유연제자동투입, 무세제통세척, 진동저감시스템
			</td></tr>
		</table>
	</div>	
</body>
</html>