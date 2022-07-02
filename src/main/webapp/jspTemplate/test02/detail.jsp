<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 임포트 --%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 세부사항</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="srtle.css" type="text/css">
</head>
<body>

<%@ include file="data.jsp" %>
    
<%
    // title이 전달되면 id는 없다
    // id가 있으면 title이 없다
    String title = request.getParameter("title");
    
    int targetId = 0;
    
    if (title == null) {
	    targetId = Integer.parseInt(request.getParameter("id"));	
    }
%>

	<div class="wrap">
		
		<jsp:include page="header.jsp" />
		
		<jsp:include page="menu.jsp" />
	
	
		<section class="mb-4">
			
			<% for (Map<String, Object> music : musicList) { 
				
				int time = (Integer) music.get("time");
				
				int min = time / 60;
				int second = time % 60;
				
				int musicId = (Integer) music.get("id");	// object 형태로 저장돼서 캐스팅?
				
				// title이 없으면 id를 통한 검색
				// title이 있으면 title을 통한 검색 
				if (title != null && title.equals(music.get("title"))
					|| (title == null && targetId == musicId)) {
			%>
			
			
			<div class="detail">
			
				<h3>곡 정보</h3>
			
				<div class="artist d-flex border border-success p-3 mt-2">
				
					<div class="image">
						<img width="200" src="<%= music.get("thumbnail") %>">
					</div>
					
					<div class="info ml-3">
						<div class="display-4"><%= music.get("title") %></div>
						<div class="text-success font-weight-bold"><%= music.get("singer") %></div>
						<div>앨범 <%= music.get("album") %></div>
						<div>재생시간 <%= min %>:<%= second %></div>
						<div>작곡가 <%= music.get("composer") %></div>
						<div>작사가 <%= music.get("lyricist") %></div>
					</div>
					
				</div>
				
				<h3 class="mt-3"> 가사</h3>
				<hr>
				<div>가사 정보 없음</div>
				
			</div>
			
			<%
				}
			} %>
			
			
		</section>
		
		
		<jsp:include page="footer.jsp" />
	
	</div>
	
	
		<%--  http://localhost:8080/jspTemplate/test02/test02_2.jsp?id=4  --%>
		
		
</body>
</html>