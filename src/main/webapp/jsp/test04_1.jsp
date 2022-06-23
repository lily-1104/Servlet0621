<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 1 - JSP</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%--  사칙연산		=> 두 수와 연산자를 입력 받아서 계산해주는 기능을 만드세요
					   두 수와 연산자를 선택할 수 있는 input 과 selectbox form을 만드세요
						   - 연산자는 +, -, X, / 사칙연산 중에 하나를 선택하도록 하세요
					   Post method 를 사용해서 submit 하세요
					   전달된 수와 연산자를 통해서 결과를 출력하는 화면을 만드세요  --%>
	
	<% 
		// 문자 -> 숫자 변환
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		
		// +. -, x, /
		String operatorString = request.getParameter("operator");
		
		
		double result = 0;
		String operator = "";
		
		if (operatorString.equals("plus")) {
			result = number1 + number2;
			operator = "+";
			
		} else if (operatorString.equals("minus")) {
			result = number1 - number2;
			operator = "-";
			
		} else if (operatorString.equals("multiple")) {
			result = number1 * number2;
			operator = "X";
		
		} else if (operatorString.equals("divide")) {
			result = number1 / (double) number2;
			operator = "/";
		}
	%>
	
	
	<div class="container">
	
		<h3>계산 결과</h3>
		<div class="display-4">
			<%= number1 %> <%=operator %> <%=number2 %> = <span class="text-primary"> <%= result %> </span>
		</div>
	
	</div>
	


</body>
</html>