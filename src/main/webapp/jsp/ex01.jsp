<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 임포트 하기 --%> 
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 기초</title>
</head>
<body>

	<h2>jsp 기초</h2>
	
	<!-- html 주석  =>  이거는 크롬 페이지 소스 보기에서 주석이 보임 -->
	<%-- jsp 주석   =>  이거는 크롬 페이지 소스 보기에서 주석이 안보임 --%>
	
	
	<%-- 1부터 100까지의 합 구하고 결과 보여주기 --%>
	
	<%-- jsp 안에 자바 코드 입력하려면 스크립틀릿(scriptlet, <% %>) 꼭 적어야함 ★★  --%>
	
	
	<%
	
		int sum = 0;
		for (int i = 1; i <= 100; i++) {
			sum += i;
		}
		
		
		// 자바 코드로 출력하기
//		out.println("<h3>" + sum + "</h3>");
		
	 %>
	 
	 <h3> 합계 : <%= sum %> </h3>
	 
	 
	 
	 <%-- 리스트 사용하기 --%>
	 
	 <%
	 	// 동물 이름 리스트 
	 	List<String> animalList = new ArrayList<>();	
	 		// 임포트 하기 (위에 직접 수기로 적어야함...) 
	 		// 임포트 문법 까먹으면 위 리스트 코드 다른 페이지가서 임포트해서 뜨는 코드 긁어오기
	 		
	 	animalList.add("dog");
	 	animalList.add("cat");
	 	animalList.add("tiger");
	 
	 %>
	 
	 <h4><%= animalList.get(0) %></h4>
	 
	 <input type="text" value="<%= animalList.get(2) %>">
	 		<%-- animalList.get(2)가 tiger 라서 텍스트 창에 tiger 자동 입력됨 --%>
	 		
	 <<%= animalList.get(1) %>></<%= animalList.get(1) %>>
	 
	 
	 
	 <%-- 선언문 (지시어) --%>
	 
	 <%!
	 	public String getHelloWorld() {
		 	return "Hello World";
	 	}
	 	
	 %>
	 
	 <%= getHelloWorld() %>
	 
	 <%= sum + 10000 %>
	
	
	
	
		<%--  http://localhost:8080/jsp/ex01.jsp
		 위 주소에서 /jsp/ 안에 jsp는 폴더 이름임!! 폴더 이름이 jsp가 아니면 다른 이름으로 적어야함  
		 jsp 폴더는 src -> webapp 안에 있음  --%>


</body>
</html>