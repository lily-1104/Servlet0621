<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 화면</title>
</head>
<body>

	<form method="get" action="/jsp/ex02_1.jsp">
		<input type="text" placeholder="아이디" name="user_id"> <br>
		<input type="text" placeholder="이름" name="name"> <br>
		<input type="text" placeholder="나이" name="age"> <br>
		
		
		<!--  라디오 버튼  -->
		<h3>고양이 OR 강아지</h3>
		<label>고양이 <input type="radio" name="animal" value="cat"> </label>
		<label>강아지 <input type="radio" name="animal" value="dog"> </label>
		
		
		<!--  체크 박스  -->
		<h3>선호하는 것을 고르세요</h3>
		<label>민트초코<input type="checkbox" name="food" value="민초"> </label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="하피"> </label>
		<label>번데기 <input type="checkbox" name="food" value="뻔~"> </label>
		
		
		<br>
		
		
		<!--  Select 박스  -->
		<h3>좋아하는 과일 하나</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="apple">사과</option>		
			<option>복숭아</option>
					<!-- value 속성을 넣으면 value 값으로 전달됨, 필요없으면 안넣어도 상관 X -->
		</select> 
		
		
		
		
		<input type="submit" value="전송">
	
	</form>
	
	
		<%--  http://localhost:8080/jsp/ex02_2.jsp  --%>


</body>
</html>