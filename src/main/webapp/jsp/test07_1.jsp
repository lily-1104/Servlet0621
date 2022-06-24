<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 임포트 --%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 제어문 사용하기 2</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<%-- 배탈의 민족 검색 	
				=> 가맹점 리스트를 기반으로 메뉴 명을 입력 받고 해당하는 가게 리스트를 보여주는 기능을 만드세요
			   	   input을 통해서 검색할 메뉴를 입력 받고, 
			   	   			별점 4점 이하인 곳을 제외할지 여부를 선택할 수 있는 checkbox를 만드세요
				   전달 받은 메뉴 명에 맞는 가맹점의 리스트를 아래와 같이 보여주세요
				   4점 이하 제외 checkbox가 설정된 경우 별점 4점 이하의 가맹점은 제외하고 보여주세요  --%>
	
	<%
		List<Map<String, Object>> list = new ArrayList<>();
			// Map<String, Object> : List의 이름
			// list : list 이름
	
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    
	    String searchMenu = request.getParameter("menu");
	    
	    
	    // 4점 이하 제외 체크 여부 전달 (true 라고 전달 받을 예정)
	    String filter = request.getParameter("filter");
	    
	%>
	
	<div class="container">
	
		<h2 class="text-center">검색 결과</h2>
		
		<table class="table text-center">
		
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			
			<tbody>
			
				<% for (Map<String, Object> store : list) { 	
						// 리스트에 있는 것을 꺼내기 쉬운건 향상된 for문
						// Map<String, Object> 은 위 List의 이름
						// list는 위 List 의 리스트 이름 
						
					// List랑 변수 타입 달라서 다운 캐스팅
					String name = (String) store.get("name");	
					String menu = (String) store.get("menu");
					Double point = (Double) store.get("point");
					
					
					// 전달 받은 메뉴 이름과 현재 출력을 하려고 하는 메뉴 이름이 일치하면 출력
					if (searchMenu.equals(menu)) {	// 문자열이니까 equals 사용
						
							// 4.0 이하 체크 되어 있고, 별점이 4.0일 때만 출력
//						if (filter == null || point >= 4.0) {
							  // filter == null 때문에 체크박스 체크 안하면 검색어 전부 보여짐 (체크 박스 조건 적용 X)
							
								// filter가 true 이면서 4.0 미만이면 출력하지 말아라
							if (filter != null && point < 4.0) {
								continue;	// 체크 안되어있으면 필터 적용 x
							}	// continue 문은 닫는 중괄호가 꼭 같은 섹션에 있어야함!! 아래로 내리면 에러남
				%>
				
				
				<tr> 
					<td><%= name %> </td>
					<td><%= menu %> </td>
					<td><%= point %> </td>
				</tr>
				
				
				<% 		// }
					} 
				
				} %>
				
			</tbody>
				
		</table>
	
	</div>
	
	
		<%--  http://localhost:8080/jsp/test07_1.jsp  --%>
	
	
</body>
</html>