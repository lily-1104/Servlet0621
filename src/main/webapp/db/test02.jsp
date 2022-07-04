<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 임포트 --%>
<%@ page import="com.lily.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 와 Database 연동</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

	<%--  즐겨찾기 목록		
	
		1. 테이블 생성, 2. 데이터 저장 (MySQL에 있음)
						   
		3. 목록 출력하기	=> jsp를 이용해서 즐겨찾기 table 태그로 출력하세요
						   id 를 기준으로 내림차순으로 출력하세요
						   출력 컬럼은 name, url 입니다
						   url 내용을 a 태그를 이용해서 연결이 되도록하세요
						   
		4. 입력하기 	=> 새로운 jsp에서 input 태그로 데이터를 입력받고, form 태그와 servlet을 이용해서 insert 하세요  
					   insert 후 위에서 만든 목록 출력 페이지로 리다이렉트 하세요

		5. 삭제하기 	=> 출력하기 페이지에서 각 행에 삭제 링크를 추가하세요
					   삭제 링크 선택시 해당 행을 삭제하고, 출력 페이지로 리다이렉트 하세요  --%>
				
					   
	<%
		// mySQL 연결
		MysqlService mysqlService = MysqlService.getInstance();		// 임포트 
		mysqlService.connect();
		
		String query = "SELECT * FROM `favorite` ORDER BY `id` DESC;";
		ResultSet resultSet = mysqlService.select(query);	// 임포트 
			// select 한 결과물을 ResultSet 형태로 전달함
	%>
	
	
	<div class="container">
	
		<table class="table text-center">
	
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			
			<% while (resultSet.next()) { 	// resultSet은 한 행씩 가리킴 %>
			
				<tr>
					<td><%= resultSet.getString("name") %></td>
					<td><a target="_blank" href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
					<td><a href="/db/test02/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
				</tr>
				
			<% } %>
					
			</tbody>
				
		</table>
		
		
		<a href="/db/test02_2.jsp" class="btn btn-success">추가하기</a>
			<%-- 추가하기 누르면 test02_2.jsp 화면으로 넘어감 --%>
	
	</div>
	
	
		<%--  http://localhost:8080/db/test02.jsp  --%>
		

</body>
</html>