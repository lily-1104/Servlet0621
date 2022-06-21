package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class ServletTest03Controller extends HttpServlet {
	
	
	// Test 03 - URL mapping (annontation) 1 (Servlet)
	
	
	// 뉴스 기사 출력 	 => 기사 문구를 브라우저에 출력하세요.
//						WebServlet 어노테이션을 이용해서 URL을 Mapping 하세요
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String dateString = formatter.format(now);
		
		out.println("<html> <head> <h1> [단독] 고양이가 야옹해 </h1> </head>");
		out.println("<body>기사 입력 시간 : " + dateString + "<hr> 끝 </body> </html>");
		

	}	

}
