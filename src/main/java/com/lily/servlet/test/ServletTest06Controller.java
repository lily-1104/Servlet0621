package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06Controller extends HttpServlet {
	
	
	// Test 06 - Get Method 와 json (Servlet)
	
	
	// 연산 결과 JSON	  => 두 개의 숫자를 parameter로 넘기는 링크를 가진 html 문서를 만드세요
//						 두 수를 전달받고, 두 수의 더하기, 빼기, 곱하기, 나누기 연산 결과를
//						  아래와 같은 json 데이터 형태로 출력하세요
	
//						 입력 URL 예시) /servlet/quiz06?number1=1500&number2=70
	
//	  					 src -> test06.html 연동 해야함
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		
		// 두개의 수를 전달 받는다
		String numberString1 = request.getParameter("number1");
		String numberString2 = request.getParameter("number2");
		
		
		// 문자열 -> 숫자로 변환
		int number1 = Integer.parseInt(numberString1);
		int number2 = Integer.parseInt(numberString2);
		
		int addtion = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;
		
		
			// {"addtion":1524, "subtraction":141, "multiplication":21511, "division":15}
			// 아래 println 안에 들어갈 내용 위에 미리 적어 두고 밑에 복붙하면 "" 안에 ""는 \로 이클립스가 자동 변환 시켜줌 
		out.println("{\"addtion\":" + addtion + ", \"subtraction\":" + subtraction + ", \"multiplication\":" + multiplication + ", \"division\":" + division + "}");
		
		
		
		
		// 주소 : http://localhost:8080/servlet/test06?number1=120&number2=15
		
		
	}
	
	
}
