<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<%-- 임포트 --%>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 1</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%--  장보기 목록 	=> 아래에 주어진 리스트 객체를 통해서 아래 결과 화면과 같은 장보기 목록 테이블을 만드세요  --%>
	
	<% 
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	%>
	
	<h2>장보기 목록</h2>
	
	<table>
		<tr> 
			<th class="col-5"> 번호 </th>
			<th class="col-5"> 품목 </th>
		</tr>
		
	<table>
		<% for (String item : goodsList) { %>
			
			<tr>
				<td></td>
				<td>저지방 우유</td>
			</tr>
			
			
			
			
		<% } %>
			
		
		
		
	
	</table>
	

	
		<%--  http://localhost:8080/jsp/test06.jsp  --%>
	
	

</body>
</html>