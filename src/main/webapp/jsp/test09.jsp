<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%-- 임포트 --%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 1</title>
</head>
<body>

	<%
		Calendar today = Calendar.getInstance();
		out.println(today);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");	// 임포트
		String dateString = formatter.format(today.getTime());
		
		out.println("<h3>오늘부터 1일</h3>");
		
		
		// for (int i = 1; i < )
		
		out.print("<h2>100일 : ");
		today.add(Calendar.DATE, 100 - 1);		
		
		dateString = formatter.format(today.getTime());
		out.print(dateString);
		
		out.print("</h2>");
		
		
		
		
		
		
		
		
		
	%>

</body>
</html>