<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%-- 임포트 --%>
<%@ page import="com.lily.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DATA BASE 조회</title>
</head>
<body>

	<%-- new_user --%>
	
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();		// 임포트
		mysqlService.connect();
		
		String query = "SELECT * FROM `new_user`;";
		ResultSet resultSet = mysqlService.select(query);	// 임포트
		
		// resultset : iterator처럼 select한 결과를 한행 한행 순서대로 가르쳐 줌
		// 			   iterator처럼 처음 가상공간을 가르키고있다가 next 메소드 호출하면 다음거를 가르키면서 
		// 			   있으면 true, 없으면 false를 리턴해줌
		// 			   while 반복문을 활용해서 한행 한행 데이터를 꺼내올 수 있고, 
		//			   반복문을 통해서 테이블을 구성해가러면 <tr> 태그를 기반으로 반복하면서 
		//			   한행에 들어있는 데이터를 <td>의 순서대로 꽂아넣으면서 원하는 데이터를 
		// 			   데이터베이스를 통해서 얻어서 화면에 보여줌  
		
		
		// 사용자가 데이터를 사용할 수 있게 만들려면 insert 과정을 진행할 페이지를 새로 만들어줘야 함
		// jsp는 select한 결과를 보여주기 위해 활용, 정확하게 화면에 보여주기위한 기능을 할 때에는 jsp 사용
		// insert, delete는 클래스로 구성해야함
	%>
	
	
	<table border="1">
	
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
		
		<% while (resultSet.next()) { %>
		
			<tr>
				<td><%= resultSet.getString("name") %></td>	 <%-- name은 컬럼 이름 --%>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><a href="/db/ex02/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
					<%-- 해당하는 행에 대응되는 id 값이 링크로 완성시켜 주고, 
						 링크는 id 뒤에 붙은 숫자에 대응되는 행을 삭제 해줌
						 페이지 소스보기 들어가보면 각 행의 삭제 버튼에 id값 부여됨!! --%>
			</tr>
			
			
		<% } %>
		
		</tbody>
	
	</table>
	

		<%--  http://localhost:8080/db/ex02.jsp  --%>
		
		
</body>
</html>