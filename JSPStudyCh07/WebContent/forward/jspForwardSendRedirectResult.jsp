<%-- forward()와 sendRedirect()을 차이점 - 결과 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward와 sendRedirect의 차이점</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String strForward = request.getParameter("isForward");
	
	if(name == null || address == null || strForward == null) { %>

		<script type="text/javascript">
				alert("정상적인 접근이 아닙니다. - result");
				location.href = "jspForwardSendRedirect.jsp";
		</script>		
<%
	} else {
		
		boolean isForward = Boolean.valueOf(strForward);
	
		if(isForward) {
%>
			<h2>JSPStudyCh06 - forward()로 호출</h2>		
<%
		} else { %>

			<h2>JSPStudyCh06 - sendRedirect()로 호출</h2>		
<%	}
	} %>
	
		이 름 : <%= name %><br/>
		주 소 : <%= address %><br/> 
</body>
</html>