<%-- <jsp:useBean>의 파라미터 처리하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//request.setCharacterEncoding("utf-8"); 
	//int coursesNum = Integer.parseInt(request.getParameter("coursesNum")); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 완료</title>
<style type="text/css">
	table {
		border: 1px solid blue;
		border-collapse: collapse; 
	}
	td { border: 1px solid blue; height: 30px; }
	.title {
		width: 100px;
		padding-left: 5px;
	}
	.content {
		width: 200px;
		padding-left: 5px;
	}
</style>	
</head>
<body style="font-size: 0.8em">
	
	<%-- 
		property 속성 값을 "*"로 지정하면 폼으로 부터 전송된 파라미터 이름과
		같은 이름을 가진 자바빈 프로퍼티에 파라미터 값을 자동으로 설정 할 수 있다.
		같은 이름을 가진 파라미터가 없으면 에러는 발생하지 않고 자바빈 프로퍼티는
		기본 값으로 설정된다. 만약 파라미터의 이름과 자바빈의 프로퍼티가 다를
		경우 property의 속성 값으로 자바빈의 프로퍼티를 지정하고 param 속성에
		파라미터 이름을 추가로 지정하면 된다. 또한 EL(Expression Language)의
		param 내장 객체를 이용하여 아래와 같이 파라미터를 읽어 올 수도 있다.
		
		<jsp:useBean> 태그를 사용하게 되면 이 JSP 페이지가 서블릿 클래스
		소스로 변경될 때 _jspService() 메소드 안에서 <jsp:useBean> 태그의
		class에 지정한 타입으로 id에 지정한 변수가 선언되고 scope에 지정한 영역에 
		속성으로 저장된다. 속성의 이름으로 id에 지정한 변수가 사용된다. 
	--%>		
	<jsp:useBean id="student" class="com.jspstudy.ch07.Student" >
		<jsp:setProperty name="student" property="*" />
		<jsp:setProperty name="student" property="age" param="age" />		
		<jsp:setProperty name="student" property="phone" 
			value="${ param.phone1 }-${ param.phone2 }-${ param.phone3 }"/>
		<jsp:setProperty name="student" property="major"
			value="${ param.major == null ? false : true }"/>
		<%-- <jsp:setProperty name="student" 
			property="coursesNum" value="<%= coursesNum %>" /> --%>
		<jsp:setProperty name="student" property="coursesNum"
			value="${ param.coursesNum }" />	
	</jsp:useBean>
	<table>
		<tr>
			<td colspan="2" style="text-align: center; 
				height: 30px; line-height: 30px">
				<h3>학생 등록 완료</h3></td>
		</tr>
		<tr>
			<td  class="title">이 름</td>
			<td class="content">
				<jsp:getProperty name="student" property="name" /></td>
		</tr>
		<tr>
			<td class="title">성 별</td>
			<td class="content">${ student.gender == null ? "선택않됨" : 
				student.gender == "male" ? "남자" : "여자" }</td>
		</tr>
		<tr>
			<td class="title">나 이</td>
			<%-- 
				<jsp:useBean> 태그의 id 속성에 지정한 값은 이 JSP 페이지가
				서블릿 클래스 소스로 변경될 때 _jspService() 메소드 안에서 지역 변수로
				선언되고 이 변수가 사용되기 때문에 같은 _jspService() 메소드 안에 
				자바 코드로 변경되는 스크립틀릿이나 표현식에서도 <jsp:useBean>
				태그의 id 속성에 지정한 값을 변수로 하여 객체에 접근할 수 있다.
			--%>
			<td class="content"><%= student.getAge() %></td>
		</tr>
		<tr>
			<td class="title">연락처</td>
			<td class="content">
				<jsp:getProperty name="student" property="phone" /></td>
		</tr>
		<tr>
			<td class="title">전공여부</td>
			<td class="content">
				<%= student.isMajor() == true ? "전공자" : "비전공자" %></td>
		</tr>
		<tr>
			<td class="title">수강횟수</td>
			<td class="content">${ student.coursesNum } 회 수강</td>
		</tr>
	</table>	
</body>
</html>