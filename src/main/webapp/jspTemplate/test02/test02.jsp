<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%-- 임포트 --%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 Layout 2</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="style.css" type="text/css">
	
</head>
<body>

	<%--  템플릿 Layout 2 	=> 아래와 같이 아이유 노래 목록을 보여주는 Layout을 나누어서 template 로 구성으로 만드세요
							   아래 주어진 데이터를 활용해서 화면에 표시하세요
							   리스트에서 노래제목을 클릭하면 해당 노래 세부사항을 표시하는 화면으로 이동하세요
							   검색어를 입력하면 해당하는 노래 제목이 있을 경우 해당하는 노래 세부사항 페이지로 이동하세요   --%>
						
	<%@ include file="data.jsp" %>
		<%-- 정적방식을 이럴때 사용 --%>	   
		
	
	<div id="wrap">
		
		<jsp:include page="header.jsp" />
		
		<jsp:include page="menu.jsp" />
		
		
		<section class="contents">
		
			<div class="artist d-flex border border-success p-3 mt-2">	 
								<%-- border : 테두리 만들기 / p-3 : 패딩, 안쪽으로 넣음 --%>
			
				<div class="image">
					<img width="150" src="<%= artistInfo.get("photo") %>">
				</div>
				
				<div class="info ml-3">	   <%-- ml-1 ~ ml-5 까지 있음 --%>
					<h3><%= artistInfo.get("name") %></h3>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debute") %>데뷔</div>
				</div>
			</div>
			
			<div class="music-list mt-3">	<%-- class 안쓰더라도 구분을 위해서 만들어두는게 좋음 --%>
				
				<h3>곡 목록</h3>
				
				<table class="table table-sm text-center">
						<%-- table-sm : 테이블 좀 더 얇게 (sm은 small) --%>
						
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					
					<tbody>
					
					<% for (Map<String, Object> music : musicList) { %>
					
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/jspTemplate/test02/test02_2.jsp?id=<%= music.get("id") %>"> <%= music.get("title") %></a></td>
							<td><%= music.get("album") %></td>
						</tr>
					
					<% } %>		<%-- 닫는 괄호는 tbody 안에!! --%>
					
					</tbody>
				</table>
			</div>
		
		</section>
		
		
		<jsp:include page="footer.jsp" />
		
	</div>
	
	
		<%--  http://localhost:8080/jspTemplate/test02/test02.jsp#  --%>
		
		
</body>
</html>