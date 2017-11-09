<%--<jsp:include>를 이용해 JSP 페이지 모듈화 하기 header --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<header>
	<div id="logo">
	    <%-- getContextPath()는 현재 어플리케이션의 컨텍스트 루트를 리턴 한다. --%>
		<a href="<%= application.getContextPath() %>/include/jspActionIndex.jsp">
		<img src="http://placehold.it/176x67" alt="Books2U" width="176" 
			height="67" /></a>
	</div>
	<div id="header_link">
		<ul>
			<li><a href="#">로그인</a></li>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">장바구니</a></li>
			<li><a href="#">주문/배송조회</a></li>
			<li class="no_line"><a href="#">고객센터</a></li>
		</ul>
	</div><br/>	
	<div id="search">
		<form action="#" method="post">
			<select name="search_option">
				<option>전체검색</option>
				<option>국내도서</option>
				<option>국외도서</option>
				<option>중고샵</option>
				<option>eBook</option>
			</select>
				<input type="text" name="main_keyword" class="main_keyword"/>
				<input type="button" name="search_btn" 
					value="검색" class="search_btn"/>
		</form>
	</div>
</header>