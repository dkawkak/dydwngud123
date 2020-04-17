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
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		//정상 로그인 인증을 하면
		if (user_id.equals("admin") && user_pw.equals("1234")){
			//쿠키발생    생성자를 만들자 new cookie , 매개변수가 2개다 ("userID",user_id)
			Cookie cookie_id = new Cookie("userID",user_id);
			Cookie cookie_pw = new Cookie("userPW",user_pw);
			//서버에서 클라이언트쪽에 내려보낸다. 응답한다. 쿠키에 값을 설정하자.
			response.addCookie(cookie_id);
			//response=응답한다.
			response.addCookie(cookie_pw);
			out.println("쿠키 생성성공"+"<br>");
			out.println(user_id+"님 환영합니다.");
		}else{
			out.println("쿠키생성실패");
		}
	%>
</body>
</html>