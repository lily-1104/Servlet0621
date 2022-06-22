<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - form 태그</title>
</head>
<body>

	<%-- BMI 수치		
			 => 키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요
				키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요     
				전달된 키와 몸무게 정보로 BMI 수치를 계산하여 출력하고 비만도 여부를 출력하세요  --%>
	
	<%
		String person = request.getParameter("person");
	%>
	
	
	<% 
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.parseInt(request.getParameter("height"));
		
		double BMI = (double) weight / (height / 100.0) * (height / 100.0);
		
		
	
		if (BMI <= 20) {
			String result = "저체중";
			
		} else if (BMI >=21 && BMI <= 25) {
			String result = "정상";
			
		} else if (BMI >= 26 && BMI <= 30) {
			String result = "과체중";
			
		} else if (BMI >= 31) {
			String result = "비만";
		}
	
	%>
	
	
		<h2>BMI 측정 결과</h2> <br>
		<h1>당신은 <%= request.getParameter("result")%> 입니다 </h1> <br>
		BMI 수치 : <%= BMI %>
		
	
	
</body>
</html>