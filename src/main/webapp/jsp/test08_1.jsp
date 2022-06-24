<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 임포트 --%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 3</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%--  책 목록		
				=> List에 Map 형태로 책 정보들이 들어있습니다
				   위와 같은 형태로 책목록 데이터가 있을떄 이를 이용해서 아래와 같은 책목록 페이지를 만드세요
				   위 책 목록에서 책 제목을 선택했을 때 아래와 같이 책의 자세한 정보를 표시하는 페이지로 이동하도록 만드세요
				   책 세부 페이지에도 위에 있는 데이터를 포함해서 사용하세요  --%>
	
	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {
	        { 
	            put("id", 1000);
	            put("title", "아몬드"); 
	            put("author", "손원평"); 
	            put("publisher", "창비");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1001);
	            put("title", "사피엔스"); 
	            put("author", "유발 하라리"); 
	            put("publisher", "김영사");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1002);
	            put("title", "코스모스"); 
	            put("author", "칼 세이건"); 
	            put("publisher", "사이언스북");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1003);
	            put("title", "나미야 잡화점의 기적"); 
	            put("author", "히가시노 게이고"); 
	            put("publisher", "현대문학");
	            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
	        } 
	    };
	    list.add(map);
	%>
	
	
	<div class="container">
	
		<h2 class="text-center">책 목록</h2>
		
		<table class="table text-center">
			
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>제목</th>
				</tr>
			</thead>
				
			<tbody>
				
				<% for (Map<String, Object> book : list) %>
				
				
				
				
				
				<tr>
					<td>1000</td>
					<td> 아몬드 사진 </td>
					<td>아몬드</td>
				</tr>
				
			</tbody>
				
		</table>
				
	</div>
		
		
		
		<%--  http://localhost:8080/jsp/test08_2.jsp  --%>
		
		
		
</body>
</html>