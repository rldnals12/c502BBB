<%--<jsp:include>를 이용해 JSP 페이지 모듈화 하기 navigation --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<aside>
	<nav>
		<ul>
			<li><h3>국내도서</h3>
				<ul>
					<li><a href="?requestPage=1&requestCategory=가정과 생활">
						가정과 생활</a></li>
					<li><a href="?requestPage=2&requestCategory=건강/취미/실용">
						건강/취미/실용</a></li>
					<li><a href="?requestPage=3&requestCategory=대학교재">
						대학교재</a></li>
					<li><a href="#">비즈니스와 경제</a></li>
					<li><a href="#">수험서/자격증</a></li>
					<li><a href="#">컴퓨터와 인터넷</a></li>
					<li><a href="#">역사와 문화</a></li>
					<li><a href="#">자연과 과학</a></li>
					<li><a href="#">문학</a></li>
					<li><a href="#">자기관리</a></li>
					<li><a href="#">초등참고서</a></li>
					<li><a href="#">중고등참고서</a></li>
					<li><a href="#">잡지</a></li>
					<li><a href="#">eBook</a></li>					
				</ul>
			</li>
			<li><h3>국외도서</h3>
				<ul>
					<li><a href="#">경영</a></li>
					<li><a href="#">문학</a></li>
					<li><a href="#">잡지</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</aside>