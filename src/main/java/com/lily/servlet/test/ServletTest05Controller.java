package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05Controller extends HttpServlet {
	
	
	// Test 05 - Get Method 와 HTML (Servlet)
	 
	
	// 구구단 링크	   => a 태그를 활용해서 number 파라미터로 입력된 단수를 출력하세요.
//					  HTML 문서로 만드세요
	
//					  link URL 예시 : /servlet/quiz05?number=5
		
//					  src -> test05.html 연동 해야함
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String danString = request.getParameter("dan");		// 처음에는 무조건 문자열로 저장
			
			
		// 문자열 -> 숫자로 변환
		int dan = Integer.parseInt(danString);
		
		
		out.println("<html>");
		out.println("<head><title>구구단 링크</title></head>");
		
		out.println("<body>");
		
		out.println("<ul>");
		
		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + dan + " X " + i + " = " + (dan * i) + " </li>");
		}
		
		out.println("</ul>");
		
		out.println("</body>");
		out.println("</html>");
		
		
		
		// 주소 : http://localhost:8080/servlet/test05?dan=6	
//					=> dan의 숫자에 따라서 구구단 바뀜
		
		
	}

}
