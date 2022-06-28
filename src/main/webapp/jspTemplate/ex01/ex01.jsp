<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정적 템플릿</title>
</head>
<body>

	<%--  현재 시간을 알려주는 jsp 파일을 불러와서 보여준다  --%>
	
	<h1>현재 시간은?</h1>
	
	<%@ include file="date.jsp" %>	<%-- 정적 방식이라 date.jsp 코드가 통채로 붙여지는 효과가 만들어짐 --%>
									<%-- 정적방식보다 동적방식이 더 많이 쓰임 --%>
									
	<%= dateString %>
	
	
	
		<%--  http://localhost:8080/jspTemplate/ex01/ex01.jsp  --%>
	
	
</body>
</html>