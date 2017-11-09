<%-- <jsp:useBean>으로 생성한 객체 forward하기 결과 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean의 scope</title>
</head>
<body>
	<h2>회원정보</h2>
	<%-- 
		<jsp:useBean> 태그를 사용하게 되면 이 JSP 페이지가 서블릿 클래스
		소스로 변경될 때 _jspService() 메소드 안에서 class 속성에 지정한
		타입으로 id 속성에 지정한 변수가 선언되고 scope 속성에 지정한 영역에 
		속성으로 저장된다. 속성의 이름으로 id 속성에 지정한 변수가 사용된다.
		
		이 id에 지정한 이름을 <jsp:getProperty>의 name 속성에 지정해야 한다. 
		property 속성에 각 데이터를 저장할 Member 클래스의 필드명을 지정하면
		getter 메소드를 이용해 값을 읽어오는 것과 동일하게 필드의 값을 읽어 올 수 있다.
	--%>
	<jsp:useBean id="member" class="com.jspstudy.ch07.Member" scope="request"/>
		이 름 : <jsp:getProperty name="member" property="name" /><br/>
		아이디 : <jsp:getProperty name="member" property="id" /><br/>
		비밀번호 : <jsp:getProperty name="member" property="pass" /><br/>
		나 이 : <jsp:getProperty name="member" property="age" /><br/>
		전화번호 : <jsp:getProperty name="member" property="phone" /><br/>
</body>
</html>