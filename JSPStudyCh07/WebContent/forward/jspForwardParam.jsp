<%-- <jsp:forward>를 이용한 페이지 이동하기 - 요청 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border: 1px solid blue;
		border-collapse: collapse;
	}
	th, td {
		border: 1px solid #7777AA;
		width: 100px;
		text-align: center;
		padding: 5px 0;
	}
	img {
		width: 50px;
		height: 50px;
		border: none;
	}	
</style>
</head>
<body style="font-size: 0.8em">
	<h3>세탁기 리스트</h3>
	<table>
		<tr>
			<th>이미지</th><th>제조사</th><th>브랜드명</th><th>가격</th>
		<tr>
		<tr>
			<td><a href="jspForwardParamProcess.jsp?pName=tongdory&
				price=658,000원&manufacturer=LG전자">
				<img src="../images/tongdory.jpg"></a></td>
			<td>LG전자</td>
			<td>통돌이</td>
			<td>658,000원</td>
		</tr>
		<tr>
			<td><a href="jspForwardParamProcess.jsp?pName=hauzen&
				price=675,000원&manufacturer=삼성전자">
				<img src="../images/hauzen.jpg"></a></td>
			<td>삼성전자</td>
			<td>하우젠</td>
			<td>675,000원</td>			
		</tr>
		<tr>
			<td><a href="jspForwardParamProcess.jsp?pName=trom&
				price=698,000원&manufacturer=LG전자">
			<img src="../images/trom.jpg"></a></td>
			<td>LG전자</td>
			<td>트롬</td>
			<td>698,000원</td>			
		</tr>
		<tr>
			<td><a href="jspForwardParamProcess.jsp?pName=klasse&
				price=639,000원&manufacturer=대우전자">
				<img src="../images/klasse.jpg"></a></td>
			<td>대우전자</td>
			<td>클라쎄</td>
			<td>639,000원</td>			
		</tr>
		<tr>
			<td><a href="jspForwardParamProcess.jsp?pName=kkomangs&
				price=589,000원&manufacturer=LG전자">
				<img src="../images/kkomangs.jpg"></a></td>
			<td>LG전자</td>
			<td>꼬망스</td>
			<td>589,000원</td>			
		</tr>
	</table>
</body>
</html>