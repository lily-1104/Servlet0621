<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - form 태그</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%-- BMI 수치		
			 => 키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요
				키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요     
				전달된 키와 몸무게 정보로 BMI 수치를 계산하여 출력하고 비만도 여부를 출력하세요  --%>
	
	
	<% 
		// 키 몸무게 (문자 -> 숫자 변환)
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.parseInt(request.getParameter("height"));
		
		
		// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		double BMI = (double) weight / ((height / 100.0) * (height / 100.0));
		
		
		String result = "";
		
		if (BMI <= 20) {
			result = "저체중";
			
				// 위에서 20 이상인 BMI가 아래로 넘어왔기 때문에 21이상 조건 굳이 쓸 필요 없음
		} else if (BMI <= 25) {	
			result = "정상";
			
		} else if (BMI <= 30) {
			result = "과체중";
			
		} else if (BMI >= 31) {
			result = "비만";
		}
	
	%>
	
	
	<div class="container">
	
		<h2>BMI 측정 결과</h2> <br>
		<div class="display-4">당신은 <span class="text-info"> <%= result %> </span> 입니다 </div>
		<div>BMI 수치 : <%= BMI %> </div>
		
	</div>
	
	
	
		<%--  http://localhost:8080/jsp/test03_1.jsp?weight=174&height=69  --%>
	
	
</body>
</html>