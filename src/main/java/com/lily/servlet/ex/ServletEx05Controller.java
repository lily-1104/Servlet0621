package com.lily.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class ServletEx05Controller extends HttpServlet {
	
		
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
			// Post method 쓸거라서 Get 에서 Post로 바뀜!!
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// ServletEx03Controller 예제 3번 코드 복붙함
		// 이름 & 생년월일 전달 받고, 이름과 나이 출력
		
			// name, birthday
		
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		
			// 생년월일 : 19990423 기준으로 태어난 년도 4자리수 자르기
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		

		out.println("<html><head><title>post method</title></head> <body>");
		out.println("이름 : " + name);
		out.println("나이 : " + age);
		
		out.println("</body></html>");
		
	}
	
	

}
