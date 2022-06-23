<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method 2 - JSP</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%--  길이 변환 	=> cm 단위의 길이를 입력 받고, 인치, 야드, 피트 미터 단위로 변환하는 기능을 만드세요
				 	   길이를 입력 받는 input 과 원하는 단위를 선택할 수 있는 checkbox 들을 만드세요
					   Post Method를 통해서 submit 하세요
					   전달 받은 길이를 선택된 단위 모두로 변환해서 출력하세요  --%>

	
	<%
		
		// cm 단위의 길이
		// 변환할 단위 (체크박스 기반의 여러 개)
		
		int length = Integer.parseInt(request.getParameter("length"));
		
		// 변환할 단위 여러 개
		String[] units = request.getParameterValues("units");
	
		// {inch, yard};	반복문으로 결과값 꺼내기, 반복문이라 여러개 값이 나와야 함...?
	
	
	
	%>
	
	
	
	
	
	
	
	
</body>
</html>