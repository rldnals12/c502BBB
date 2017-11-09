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
			<tr><th>LG전자 통돌이 T1207W7</th><tr>
			<tr><td class="image"><img src="<%= image %>" /></td></tr>
			<tr><td class="info">
				제조사/브랜드 : <%= manufacturer %> / 통돌이<br/>
				가격 : <%= price %><br/>
				12Kg, 8가지코스, 다이아몬드글라스도어, 표준/울/<br/>
				섬세/급속/이불/조용조용/속옷/내마음세척, 통세척				
			</td></tr>
		</table>
	</div>	
</body>
</html>