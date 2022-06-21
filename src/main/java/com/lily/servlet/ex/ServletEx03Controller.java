package com.lily.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class ServletEx03Controller extends HttpServlet {
	
	// src -> ex03.html 연동 해야함
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름 & 생년월일 전달 받고, 이름과 나이 출력
		
			// name, birthday
		
		String name = request.getParameter("name");
		String birthDay = request.getParameter("birthday");
		
			// 생년월일 : 19990423 기준으로 태어난 년도 4자리수 자르기
		String yearString = birthDay.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		// {"name":"kim", "age":22}
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
		
		
		
//		out.println("<html><head><title>get method</title></head> <body>");
//		out.println("<h1>이름 : " + name + "</h1>");
//		out.println("<h3> 나이 : " + age + "</h3>");
//		out.println("</body></html>");
		
		
		
		// http://localhost:8080/servlet/ex03?name=kim&birthday=20010513
//		   이 주소 검색해야 결과값 나옴!! 
//		   위의 name은 변수 아닌 문자열 "name"
//		       birthday는 문자열 "birthday"임

		
		
	}

}
