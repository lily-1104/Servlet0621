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
		MysqlService mysqlService = MysqlService.getInstance();		// 임포트 
		mysqlService.connect();
		
		String query = "SELECT * FROM `favorite`;";
		ResultSet resultSet = mysqlService.select(query);	// 임포트 
	%>
	
	<table border="1">
	
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		
		<tbody>
		
		<% while (resultSet.next()) { %>
		
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href="<%= resultSet.getString("url") %></a></td>
			</tr>
			
		<% } %>
				
		</tbody>
				
	</table>
	
	
		<%--  http://localhost:8080/db/test02.jsp  --%>
		

</body>
</html>