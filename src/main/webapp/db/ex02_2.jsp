<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력</title>
</head>
<body>
	
	<form method="post" action="/db/ex02/insert">	
	
			<%-- <form>이 있어야 페이지 이동과 사용자가 입력한 데이터를 
				 우리가 만든 페이지(ServletDBEx02InsertController)로 이동시킬 수 있음
				 
				 action : 이동할 페이지 --%>
	
		<label>이름 : </label> <input type="text" name="name"> <br>
			<%-- name 부분에 ServletDBEx02InsertController에서 설정한 파라미터 입력하기 --%>
		
		<label>생년 월일 : </label> <input type="text" name="yyyymmdd"> <br>
		
		<label>자기 소개 : </label> <br>
		<textarea rows="5" cols="50" name="introduce"></textarea> <br>	
			<%-- 자기소개는 기니까 textarea 사용 --%>
		
		<label>이메일 : </label> <input type="text" name="email">	<br>
		
		<button type="submit">추가</button>
		
	</form>
	
	
		<%--  http://localhost:8080/db/ex02_2.jsp  --%>


</body>
</html>