<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%-- 임포트 --%>    
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - 링크</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</head>
<body>

	<!--  날짜 시간 출력	=> 현재 시간이나 현재 날짜를 확인 할 수있는 기능을 만드세요
						   a 태그를 이용해서 현재시간과 현재 날짜를 확인하는 링크를 만드세요
							   - 같은 jsp 파일로 연결
							   - parameter를 통해서 구분 하도록 구성
						   연결된 jsp 페이지에서 현재 시간 또는 현재 날짜를 출력하세요  -->
						   
	<%
		Date now = new Date();
	
		// 현재 날짜
		SimpleDateFormat formatter =  new SimpleDateFormat("yyyy년 M월 d일");
		String dateString = formatter.format(now);
		
		
		// 현재 시간
		formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String timeString = formatter.format(now);
		
		
		// 오늘 날짜를 보여줄지, 현재 시간을 보여줄지 구분할 파라미터 추가 
			// what 'time' 시간, 'date' 날짜
			// what = time
			// what = date
		
		String what = request.getParameter("what");
		
		String result = "";
		
		if (what.equals("time")) {
			result = "현재 시간 " + timeString;
		} else {
			result = "오늘 날짜 " + dateString;
		}
	
	%>
	
	<div class="display-4"> <%= result %> </div>
	
	

	
		<%--  http://localhost:8080/jsp/test02_1.jsp?what=time  --%>
		<%--  http://localhost:8080/jsp/test02_1.jsp?what=date  --%>
	
	
</body>
</html>