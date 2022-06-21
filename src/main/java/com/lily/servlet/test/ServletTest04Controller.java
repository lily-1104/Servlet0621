package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test04")
public class ServletTest04Controller extends HttpServlet {
	
	
	// Test 04 - URL mapping (annontation) 2 (Servlet)
	
	
	// 리스트 출력		=> 반복문을 이용해서 30개의 리스트를 아래와 같이 출력하세요
//					   WebServlet 어노테이션을 이용해서 URL을 Mapping 하세요
//					   HTML 페이지로 만드세요
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		

		out.println("<html>");
		out.println("<head> <title>리스트</title></head>");
		out.println("<body>");	
		out.println("<ul>");
		
		
		for (int i = 1; i <= 30; i++) {

			out.println("<li>" + i + " 번째 리스트");
			out.println("</li>");
		}
		
		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
