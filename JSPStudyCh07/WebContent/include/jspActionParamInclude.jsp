<%-- <jap:include>를 이용해 동적으로 JSP페이지 포함하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* <jsp:param> 표준 액션 태그로 전달된 파라미터는 GET 방식으로 전달되기  
	 * 때문에 톰캣 서버의 URIEncoding 속성에 지정된 문자 셋이 적용된다.
	 **/
	//request.setCharacterEncoding("UTF-8");
	System.out.println(request.getMethod());
	
	String no = request.getParameter("no");
	String book = request.getParameter("book");
	
	String[] images = {
			"images/doitAndroid.jpg", "images/javascriptguide.jpg",
			"images/doitHtml5.jpg", "images/javashin.jpg",
			"images/jQueryInteractive.jpg"
	};
	
	// EL을 이용해 출력하기 위해 pageContext 영역의 속성에 저장한다.
	pageContext.setAttribute("images", images);
	pageContext.setAttribute("no", no);
	pageContext.setAttribute("book", book);	
%>

<%-- 다른 JSP 페이지에 포함되므로 전체 HTML 태그는 필요 없다. --%>
<table>	
<% if(no.equals("1")) { %>
	<tr>
		<td rowspan="3">
			<img src="../<%= images[Integer.parseInt(no) - 1] %>"/></td>
		<td>&nbsp;</td>
		<td><h3><%= book %></h3></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>정가 40,000원 | 판매가 30,000원(25% 할인)</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>출간일 2013년 06월 26일 | 824쪽 | 판매지수 - 30744</td>		
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
	<tr><td colspan="3">책소개</td></tr>
	<tr><td colspan="3">
		안드로이드 앱 프로그래밍의 젤리빈 4.2.2 전면 개정판. 국내외에서<br/>
		안드로이드 앱 개발을 해 온 전문가의 노하우를 담아 안드로이드 프로그래밍<br/>
		전문가 과정의 커리큘럼을 소개한다.</td>
	</tr>
<% } else if(no.equals("2")) { %>
	<tr>
		<td rowspan="3">
			<img src="../<%= images[Integer.parseInt(no) - 1] %>"/></td>
		<td>&nbsp;</td>
		<td><h3><%= book %></h3></td>
	</tr>	
	<tr>
		<td>&nbsp;</td>
		<td>정가 54,000원 | 판매가 45,900원(15% 할인)</td>
	</tr>	
	<tr>
		<td>&nbsp;</td>
		<td>출간일 2013년 01월 22일 | 1352쪽 | 판매지수 - 8448</td>		
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
	<tr><td colspan="3">책소개</td></tr>
	<tr><td colspan="3">
		이번 개정판은 HTML5와 ECMAScript 5를 다루고 있으며<br/> 
		최신의 웹 개발 관례에 맞춰 대다수의 내용이 새롭게 작성되었다.</td>
	</tr>
<% } else if(no.equals("3")) { %>
	<tr>
		<td rowspan="3">
			<img src="../<%= images[Integer.parseInt(no) - 1] %>"/></td>
		<td>&nbsp;</td>
		<td><h3><%= book %></h3></td>
	</tr>	
	<tr>
		<td>&nbsp;</td>
		<td>정가 32,000원 | 판매가 28,800원(10% 할인)</td>
	</tr>	
	<tr>
		<td>&nbsp;</td>
		<td>출간일 2013년 09월 27일 | 704쪽 | 판매지수 - 9573</td>		
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
	<tr><td colspan="3">책소개</td></tr>
	<tr><td colspan="3">
		HTML 기본서. HTML에 대한 사전 지식이 없는 사람들도 예제를 통해<br/> 
		기본 이론을 익히고, 실무를 진행하기 위한 태그를 쉽게 배울 수 있다.</td>
	</tr>
<% } else if(no.equals("4")) { %>
	<tr>
		<td rowspan="3">
			<img src="../<%= images[Integer.parseInt(no) - 1] %>"/></td>
		<td>&nbsp;</td>
		<td><h3><%= book %></h3></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>정가 23,000원 | 판매가 20,700원(10% 할인)</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>출간일 2013년 02월 28일 | 560쪽 | 판매지수 - 9282</td>		
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
	<tr><td colspan="3">책소개</td></tr>
	<tr><td colspan="3">
		성능 전문가로 널리 알려진 저자의 자바 개발 경력을 바탕으로 현장에서<br/>
		꼭 필요한 기초가 무엇인지를 정리한 책이다.</td>
	</tr>
<% } else if(no.equals("5")) { %>
	<%-- 
		pageContext 영역의 속성에 저장된 데이터를 EL을 이용해 출력하고 있다.
	--%>	
	<tr>
		<td rowspan="3">			
			<img src="../${ images[no - 1] }" /></td>
		<td>&nbsp;</td>
		<td><h3>${ book }</h3></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>정가 30,000원 | 판매가 27,000원(10% 할인)</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>출간일 2012년 02월 29일 | 652쪽 | 판매지수 - 6222</td>		
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
	<tr><td colspan="3">책소개</td></tr>
	<tr><td colspan="3">
		인터랙티브한 웹 콘텐츠 제작 방법과 실전에서 바로 활용할 있는 다양한<br/>
		실전 예제도 실려 있다</td>
	</tr>
<% } %>
</table>
