<%-- forward()와 sendRedirect()을 차이점 - 처리 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>    
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");	
	String strInternal = request.getParameter("isInternal");
	String strForward = request.getParameter("isForward");
	
	if(name == null ||  address == null 
		|| strInternal == null || strForward == null) { %>	
		
		<script type="text/javascript">
				alert("정상적인 접근이 아닙니다.");
				location.href = "jspForwardSendRedirect.jsp";
		</script>
<%	
	} else {
	
		boolean isInternal = Boolean.valueOf(strInternal);
		boolean isForward = Boolean.valueOf(strForward);
		String url = "";
		
		// 웹 어플리케이션 내부에 있는 자원 요청이면
		if(isInternal) {
			
			/* forward 처리면 URLEncoding이 필요없고 Redirect 처리면 URLEncoder
			 * 클래스의 encode() 메소드를 이용해 한글 데이터를 URLEncoding 한다.
			 **/
			url = "jspForwardSendRedirectResult.jsp?name="		
					+ (isForward ? name : URLEncoder.encode(name, "utf-8")) 
					+ "&address=" + (isForward ? address : 
						URLEncoder.encode(address, "utf-8")) 
					+ "&isForward=" + isForward;
		
		// 웹 어플리케이션 외부에 있는 자원 요청이면
		} else{ 
	
			/* forward 처리면 URLEncoding이 필요없고 Redirect 처리면 URLEncoder
			 * 클래스의 encode() 메소드를 이용해 한글 데이터를 URLEncoding 한다.
			 **/
			url = "/JSPStudyCh05/forward/jspForwardSendRedirectResult.jsp?name="				
					+ (isForward ? name : URLEncoder.encode(name, "utf-8")) 
					+ "&address=" + (isForward ? address :
						URLEncoder.encode(address, "utf-8")) 
					+ "&isForward=" + isForward;
		}
		
		if(isForward) {		
			pageContext.forward(url);
			
			// 아래와 같이 RequestDispatcher 객체를 이용해 포워딩 할 수 있다.
			//RequestDispatcher rd = request.getRequestDispatcher(url);	
			//rd.forward(request, response);
			
			// forward() 메소드가 호출되면 흐름제어가 넘어가므로 아래는 실행되지 못한다.
			out.println("이름 : " + name + "<br/>");
			out.println("주소 : " + address + "<br/>");
			
		} else {		
			response.sendRedirect(url);
		}
	}
%>