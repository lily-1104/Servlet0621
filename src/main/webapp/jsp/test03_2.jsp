<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 화면</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>
	
	<div class="container">
	
		<h2>체격 조건 입력</h2>
		
		
		<form method="get" action="/jsp/test03_1.jsp">
		
			<div class="d-flex">
		
				<input type="text" class="form-control col-2" placeholder="키를 입력하세요" name="height"> cm
	
					<%--  form-control : 페이지 폭 만큼 입력창 폭 넓어져서 col-2로 간격 조정  --%>
				
				<input type="text" class="form-control col-2" placeholder="몸무게를 입력하세요" name="weight"> kg
	
				
				<button class="btn btn-info" type="submit">계산</button>
			
			</div>
			
		</form>
	
	</div>
	
	
	
		<%--  http://localhost:8080/jsp/test03_2.jsp  --%>
	

</body>
</html>