<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%-- 임포트 --%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>

	<%--  Calendar는 날짜 관련해서 사용하기 편리 (날짜를 기반으로 계산)  --%>
	
	<%
		Calendar today = Calendar.getInstance();
		out.println(today);
		
		
		
		// SimpleDateFormat 활용해서 Calendar 현재 날짜 출력
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");	// 임포트
		String dateString = formatter.format(today.getTime());	// 캘린더 안에 세팅되어있는 현재 날짜
		
		out.println(dateString + "<br>");
		
		
		
		// 오늘 기준으로 10일 후 날짜 확인
		
		today.add(Calendar.DATE, 10);	// 첫번째 파라미터는 어떤 기준 (월, 년), 두번째 파라미터는 add 할 날짜 개수 
			// 위의 코드는 값이 리턴되는게 아니라 출력되는 해당하는 날짜 자체가 변함
		
		today.add(Calendar.DATE, -57);	// 57일 전
		today.add(Calendar.MONTH, 25);	// 25개월 이후
		today.add(Calendar.YEAR, 5);	// 5년 후
		
		
		dateString = formatter.format(today.getTime());
		out.println(dateString);
		
		
		
		// 두 날짜 비교
		
		Calendar newCal = Calendar.getInstance();
		
			// 크다 작다 같다 
			// 왼쪽의 객체가 오른쪽 객체보다 크면 1을 리턴
			// 왼쪽의 객체가 오른쪽 객체보다 작으면 -1을 리턴
			// 같으면 0
			// today - newCal
				// 10 - 5
				// 10 - 15
				// 10 - 10
		int result = today.compareTo(newCal);	// newCal는 비교할 대상 객체
												// compareTo : 비교할 때 많이 쓰는 메소드
		
												
		if (result > 0) {	// 0이랑 비교하는게 가장 쉬움
			out.println("today가 더 크다");
		} else if (result < 0) {
			out.println("newCal이 더 크다");
		} else {
			out.println("같다");
		}
		
		
	%>
	
	
	
	<%--  http://localhost:8080/jsp/ex04.jsp  --%>
	
	
	
</body>
</html>