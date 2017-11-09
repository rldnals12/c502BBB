<%--<jsp:include>를 이용해 JSP 페이지 모듈화 하기 content01 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<article>
	<div class="category_main">
		<%-- request 영역의 속성 requestCategory의 값을 EL을 이용해 가져온다.	--%>
		<h2>${ requestCategory }</h2>
		jspActionContent02.jsp
	</div>
	<div class="category_best">
		<h2>${ requestCategory } 베스트 셀러</h2>		
	</div>
	<div class="category_list">
		<h2>${ requestCategory } 도서 목록</h2>
	</div>
</article>
