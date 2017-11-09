<%-- <jsp:forward>를 이용한 페이지 이동하기 - 결과 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String pName = request.getParameter("pName");
	String price = request.getParameter("price");
	String manufacturer = request.getParameter("manufacturer");
	
	if(pName.equals("trom")) {
%>
	<%-- 
		<jsp:forward> 표준 액션 태그는 요청 처리를 다른 JSP 페이지로 넘길 때 
		사용하는 태그로 <jsp:param> 표준 액션 태그를 사용해 요청 처리가 넘어갈
		때 파라미터를 전달할 수 있다. <jsp:param> 태그는 독립적으로 사용할 수 없고
		<jsp:forward> 태그의 자식 태그로 사용할 수 있다. 또한 <jsp:param>
		태그로 전달되는 파라미터는 request 내장객체의 setCharacterEncoding()
		메소드에 지정한 문자 셋을 사용해 파라미터를 인코딩하므로 파라미터에 한글이 
		포함되는 경우 <jsp:param> 태그를 사용하기 이전에 setCharacterEncoding()
		메소드를 사용해 적절한 문자 셋을 지정해야 한글 데이터가 제대로 전달된다.
	--%>
	<jsp:forward page="../forwardPages/trom.jsp">
		<jsp:param name="price" value="<%= price %>" />
		<jsp:param name="manufacturer" value="<%= manufacturer %>" />
		<jsp:param name="image" value='<%= "../images/" + pName + ".jpg" %>' />
	</jsp:forward>
	
<% } else if(pName.equals("hauzen")) { %>

	<jsp:forward page="../forwardPages/hauzen.jsp">
		<jsp:param name="price" value="<%= price %>" />
		<jsp:param name="manufacturer" value="<%= manufacturer %>" />
		<jsp:param name="image" value='<%= "../images/" + pName + ".jpg" %>' />
	</jsp:forward>
	
<%  } else if(pName.equals("klasse")) { %>

	<jsp:forward page="../forwardPages/klasse.jsp">
		<jsp:param name="price" value="<%= price %>" />
		<jsp:param name="manufacturer" value="<%= manufacturer %>" />
		<jsp:param name="image" value='<%= "../images/" + pName + ".jpg" %>' />
	</jsp:forward>
	
<%  } else if(pName.equals("kkomangs")) { %>

	<jsp:forward page="../forwardPages/kkomangs.jsp">
		<jsp:param name="price" value="<%= price %>" />
		<jsp:param name="manufacturer" value="<%= manufacturer %>" />
		<jsp:param name="image" value='<%= "../images/" + pName + ".jpg" %>' />
	</jsp:forward>
	
<%  } else if(pName.equals("tongdory")) { %>

	<jsp:forward page="../forwardPages/tongdory.jsp">
		<jsp:param name="price" value="<%= price %>" />
		<jsp:param name="manufacturer" value="<%= manufacturer %>" />
		<jsp:param name="image" value='<%= "../images/" + pName + ".jpg" %>' />
	</jsp:forward>
	
<%  } %>