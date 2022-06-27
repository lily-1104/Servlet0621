<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%-- 임포트 --%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 세부 페이지</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>
	
	<%		// 결과 화면 보이게 하려면 여기에도 리스트 문법 필요함!!
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
	    
	    
	    
	    // 책을 특정할 수 있는 파라미터 (id 값으로 특정한 책을 지칭 => 책의 id를 전달한다)
	    	// 현재 id 값이 문자열이라서 문자열 => 숫자 변환
	    	
		int bookId = Integer.parseInt(request.getParameter("book_id"));	     
	%>
	
	
	<div class="container">
	
			<%--  <form> 태그는 이 페이지에서 다른 페이지로 무언가를 전달할게 있을 때 사용
			 	   (보통 input 태그 있을 때 많이 사용)
		 		   이 문제는 input 태그가 없으니까 form 태그 사용 X  --%>
		
		 		   
		<%-- 리스트 안에 있는 책 정보 중 필요한 하나만 출력 --%>   
		
		<% for (Map<String, Object> book : list) {
				
		   			// 일치하는 책 찾기 
		   		int id = (Integer)book.get("id");	// (Integer)는 다운캐스팅
		   		if (bookId == id) {
		%>
		
			
		<div class="d-flex">
			
			<div>
				<img width="300" src="<%= book.get("image") %>">
			</div>
			
			<div>
				<div class="display-1 font-weight-bold"><%= book.get("title") %></div>
				<div class="display-3 text-info"><%= book.get("author") %></div>
				<div class="display-4 text-secondary"><%= book.get("publisher") %></div>
			</div>
			
		</div>
		
		
		<%		} 
			} 
		%>
		
	</div>
	
	
		<%--  http://localhost:8080/jsp/test08_2.jsp?book_id=1000  (아몬드일 때)  --%>
		
		
</body>
</html>