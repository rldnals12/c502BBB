<%--<jsp:include>를 이용해 JSP 페이지 모듈화 하기 footer --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
	<ul>
    	<li><a href="#">회사소개</a></li>
        <li><a href="#">이용약관</a></li>
        <li><a href="#">개인정보취급방침</a></li>
        <li><a href="#">광고/이벤트 문의</a></li>
        <li><a href="#">고객만족센터</a></li>
        <li class="no_line"><a href="#">찾아오시는길</a></li>
    </ul>
    <div class="clear"></div>
   	<%-- getContextPath()는 현재 어플리케이션의 컨텍스트 루트를 리턴 --%>
   	<a href="<%= application.getContextPath() %>/include/jspActionIndex.jsp">
   		<img src="http://placehold.it/147x62" width="147" height="62" 
   			alt="footer_log"></a>    	
	<div id="foot_info">
      고객상담 전화주문 : 1234-5678 사업자등록번호 : 111-11-123456  
      대표이사 : 홍길동  통신판매업 서울 제 000000호<br/>
      개인정보 관리책임자 : 임꺽정, 
      	분쟁조정기관 표시 : 소비자보호원, 전자거래분쟁중재위원회<br/>
      이메일 주소 무단수집 거부 servlet@book2u.com<br>
      Copyright (c) 2013 Book2U Corp. All right Reserved.
	</div>
</footer>