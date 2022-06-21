package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09Controller extends HttpServlet {
	
	
	// Test 09 - Post Method 1 (Servlet)
	
	
	// 입사지원 	=> 이름과 자기소개서를 입력 받아서 submit 할 수 있는 html 문서를 작성하세요
//				   자기소개서 입력은 textarea 태그를 이용하세요
	
	
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// 지원자 이름, 자기소개
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		
		
		out.println("<html><head><title>입사 지원</title></head> <body>");
		
		out.println("<h2>" + name + "님 지원이 완료되었습니다 </h2> <hr>");
		
		out.println("지원내용 <br>" + introduce);
		
		out.println("</body> </html>");
		
		
	}
	
}
