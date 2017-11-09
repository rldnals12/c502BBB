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
			<tr><th>대우전자 클라쎄 DWD-900WNB</th><tr>
			<tr><td class="image"><img src="<%= image %>" /></td></tr>
			<tr><td class="info">
				제조사/브랜드 : <%= manufacturer %> / 클라쎄<br/>
				가격 : <%= price %><br/>
				9kg, 빌트인, 9가지세탁코스, ABS도어, 디지털제어모터<br/>
				삶는세탁, 나노실버, 애벌세탁, 구김방지, 예약기능, 화이트
			</td></tr>
		</table>
	</div>	
</body>
</html>