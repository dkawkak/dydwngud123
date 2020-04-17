<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			//쿠키삭제,  값을 줬다.
			cookies[i].setMaxAge(0);
			//값을 줬으니 지정한 값을 적용시키기 위해
			response.addCookie(cookies[i]);
		}
		//쿠키정보를 보여주는 다른 jsp로 이동
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>