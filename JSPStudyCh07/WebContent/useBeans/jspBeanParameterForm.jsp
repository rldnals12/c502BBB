<%-- <jsp:useBean>의 파라미터 처리하기 폼 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 폼</title>
</head>
<body style="font-size: 12px;">
	<h2>학생 등록하기</h2>
	<form action="jspBeanParameterProcess.jsp">
		<p>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : 
			<input type="text" name="name" /></p>
		<p>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 : 
			<input type="radio" name="gender" value="male"/>남&nbsp;&nbsp;&nbsp;
			<input type="radio" name="gender" value="female"/>여</p>
		<p>나&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이 : 
			<input type="text" name="age" size="3"/></p>		
		<p>연&nbsp;&nbsp;락&nbsp;&nbsp;처 : 	
			<select name="phone1">
				<option>010</option>
				<option>011</option>
				<option>016</option>
				<option>017</option>
				<option>018</option>
				<option>019</option>
			</select>-<input type="text" name="phone2" size="2" maxlength="4"/>
			-<input type="text" name="phone3" size="2" maxlength="4"/></p>
		<p>전공여부 : <input type="checkbox" name="major" />
				관련학과 전공자&nbsp;&nbsp;&nbsp;		
		<p>수강횟수 :
			<input type="text" name="coursesNum" size="3"/></p>	
		<p><input type="reset" value="다시쓰기" />
		<input type="submit" value="등록하기" /></p>
	</form>
</body>
</html>