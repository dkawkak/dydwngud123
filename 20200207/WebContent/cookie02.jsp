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
		//쿠키의 정보를 가져오자. cookies(변수)
		//request=클라이언트 입장에서 봐야한다.
		//-클라이언트에 있는 쿠키정보를 가져온다.-
		Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 =>" + cookies.length +"<br>");
		out.println("==============<br>");
		for (int i = 0; i <cookies.length; i++){
			//cookies[i].getname()=쿠키 정보가 나온다.
			out.println("쿠키이름:"+cookies[i].getName()+"<br>");
			//cookies[i].getValue()=쿠키값이 나온다.
			out.println("쿠키값:"+cookies[i].getValue()+"<br>");
			out.println("============<br>");
		}
		
	%>
	
</body>
</html>