<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 화면</title>
</head>
<body>

	<form method="get" action="/jsp/test03_1.jsp">
	
		<h2>체격 조건 입력</h2>
		
		<input type="text" placeholder="키" name="height">
		<label>cm </label>
		
		<input type="text" placeholder="몸무게" name="weight">
		<label>kg </label>
		
		
		<button type="submit">계산</button>
	
	
	</form>
	
	
		<%--  http://localhost:8080/jsp/test03_2.jsp  --%>
	

</body>
</html>