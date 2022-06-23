<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%-- 임포트 --%>
<%@ page import="java.util.*" %>	<%--  java.util.* : 자바 안에 있는 모든 것을 임포트하겠다 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 활용</title>
</head>
<body>

	<%
		// 과일 이름 리스트
		List<String> fruits = new ArrayList<>();
		fruits.add("사과");
		fruits.add("바나나");
		fruits.add("딸기");
	
		
//		for (String item : fruits) {
//			out.println("<h2>" + item + "</h2>");
//		}
	%>
	
	
	<% 
		for (String item : fruits) {
	%>
	
		<h2> <%= item %></h2>		<%-- for문 안에 h2 태그가 반복됨 --%>
	
	<% } %>		<%-- 반복문이 중간에서 실행될 수 있도록 중괄호 따로 닫아줘야함!! --%>
	
	
	
	<table border="1">
	
	<% for (String item : fruits) { %>
	
		<tr>
			<td> <%= item %></td>
		</tr>	
		
	<% } %>

	</table>
	
	
	
		<%--  http://localhost:8080/jsp/ex03.jsp  --%>
	

</body>
</html>