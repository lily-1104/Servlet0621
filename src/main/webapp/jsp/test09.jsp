<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%-- 임포트 --%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 1</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>
	
	<%
		Calendar today = Calendar.getInstance();
		today.add(Calendar.DATE, -1);
			
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");	// 임포트
		
	%>
	
	
	<div class="container">
	
		<h1>오늘부터 1일</h1>
		
		<% for (int i = 1; i < 10; i++) { 
			today.add(Calendar.DATE, 100);
			String dateString = formatter.format(today.getTime());
		%>
	
			<div class="display-4"><%= 100 * i %>일 : <span class="text-danger"><%= dateString %></span></div>
	
		<% } %>
	
	</div>
	
	
		<%--  http://localhost:8080/jsp/test09.jsp  --%>
	
	
</body>
</html>