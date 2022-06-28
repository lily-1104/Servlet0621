<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 레이아웃</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<div class="container">
	
		<jsp:include page="header.jsp" />	<%-- 자바 코드는 안되고 html만 합치기 가능 --%>
		
		<jsp:include page="nav.jsp" />
		
		
			<%-- section은 여기의 고유한 부분이라 변경 X --%>
			
		<section>
			<img width="300" src="https://cdn.pixabay.com/photo/2022/03/04/00/47/wine-7046276_960_720.jpg">
			<div class="text-secondary small">사진 설명 블라블라</div>
		</section>
		
		
		<jsp:include page="footer.jsp" />
	
	</div>


		<%--  http://localhost:8080/jspTemplate/ex01/ex02.jsp#  --%>
	
	
</body>
</html>