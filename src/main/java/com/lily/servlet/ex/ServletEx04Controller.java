package com.lily.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")	// 여기에서 ex04는 ex04.html이랑 전혀 관계 없음
public class ServletEx04Controller extends HttpServlet {
	
	// src -> ex04.html 연동 해야함
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// 이름과 생년월일 입력 받고 적당히 이쁘게 html로 결과 만들기 
		
		String name = request.getParameter("name");
			//20020311
		String birthday = request.getParameter("birthday");
			// 파라미터 이름을 "name", "birthday"로 정함 
		
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		
		// 테이블에 출력 
		out.println("<html><head><title>정보</title></head>");
		out.println("<body>");
		out.println("<table border=1>");
		out.println("<tr> <td>이름</td> <td>" + name + "</td> </tr>");
		out.println("<tr> <td>나이</td> <td>" + age + "</td> </tr>");
		out.println("</table>");
		out.println("</body></html>");
		
		
		
		
		// 주소 : http://localhost:8080/servlet/ex04?name=김지현&birthday=20001010
		
		
		
		
	}

}
