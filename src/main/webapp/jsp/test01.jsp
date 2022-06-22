<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 임포트 하기 --%> 
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	
	<%-- 1. 점수들의 평균 구하기	
			     => 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요 --%>
	
	<% int[] scores = {80, 90, 100, 95, 80};
	
	    int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		
		double average = sum / (double) scores.length;	// (double) 이라고 적는건 캐스팅!!
	%>
	
	<h2> 점수 평균은 <%= average %> 입니다</h2>
	
	
	
	<%-- 2. 채점 결과	  => 아래 채점표로 시험 점수가 몇 점인지 구하세요 --%>
	
	<% List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); %>
				<%-- 임포트 하기!! --%>
	
	<% // 향상된 for문
	   int score = 0;   
	   for (String answer : scoreList) {
		   
		  if(answer.equals("O")) {
			  score += 10;
		  }
	   }
	%>
	
	<h2>채점 결과는 <%= score %>점 입니다</h2>
	
	
	
	<%-- 3. 1부터 n까지의 합계를 구하는 함수		
				   => jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요
					  만든 함수를 이용해서 50까지의 합의 결과를 출력하세요  --%>
	
	<%!
		public int sum(int number) {
			
			int sum = 0;
			for (int i = 1; i <= number; i++) {
				sum += i;
			}
			
			return sum;
	}
	%>
	
	<%
		// int result = sum(50);
	%>
	
	<h2>1부터 50까지의 합은 <%= sum(50) %> 입니다</h2>
	
	
	
	<%-- 4. 나이 구하기		=> 주어진 생년월일을 가진 사람의 나이를 구하세요  --%>
	
	<%
		String birthDay = "20010820";
	
		String yearString = birthDay.substring(0, 4);
		
		int year = Integer.parseInt(yearString);
		int age = 2022 - year + 1;
		
	%>
	
	<h2> <%=birthDay %>의 나이는 <%= age %>입니다</h2>
	
		<%--  http://localhost:8080/jsp/test01.jsp  --%>

</body>
</html>