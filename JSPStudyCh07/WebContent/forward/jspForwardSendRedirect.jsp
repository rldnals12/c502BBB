<%-- forward()와 sendRedirect()을 차이점 - 폼 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward와 sendRedirect의 차이점</title>
<script type="text/javascript">	
	function requestForm(isInternal, isForward) {
		
		if(form1.name.value == "" || form1.address.value == "") {
			alert("이름 또는 주소가 입력되지 않았습니다.");
			return false;			
		}		
		
		// 내부 Forward 버튼이 클릭 되었으면
		if(isInternal && isForward) {
			
			form1.isInternal.value = true;
			form1.isForward.value = true;
			form1.submit();
		
		// 내부 Redirect 버튼이 클릭 되었으면
		} else if(isInternal && ! isForward){
			
			form1.isInternal.value = true;
			form1.isForward.value = false;		
		
		// 외부 Forward 버튼이 클릭 되었으면
		} else if(! isInternal && isForward) {
			
			form1.isInternal.value = false;
			form1.isForward.value = true;
			form1.submit();
		
		// 외부 Redirect 또는 확인 이미지 버튼이 클릭 되었으면
		} else {
			
			form1.isInternal.value = false;
			form1.isForward.value = false;
		}		
	}	
</script>
</head>
<body>
	<form name="form1" action="jspForwardSendRedirectProcess.jsp" method="post">
		<p>이 름 : <input type="text" name="name" /></p>
		<p>주 소 : <input type="text" name="address" size="40"/></p>	
		<input type="hidden" name="isInternal"/>
		<input type="hidden" name="isForward"/>
		<p><input type="submit" value="외부 Redirect" 
			onclick="return requestForm(false, false);" />&nbsp;&nbsp;&nbsp;
			<input type="image" src="../images/btn_confirm.gif" 
			onclick="return requestForm(false, false);" />&nbsp;&nbsp;&nbsp;
			<button type="submit"
			onclick="return requestForm(true, false)">내부 Redirect</button></p>
		<p><input type="button" value="외부 Forward" 
				onclick="requestForm(false, true);"/>&nbsp;&nbsp;&nbsp;
		<button type="button" name="button" 
			onclick="requestForm(true, true);">내부 Forward</button></p>
	</form>
</body>
</html>