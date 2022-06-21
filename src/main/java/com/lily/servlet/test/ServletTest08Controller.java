package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class ServletTest08Controller extends HttpServlet {
	
	
	// Test 08 - Get Method 와 form 2 (Servlet)
	
	
	// 검색하기 	=> 검색어를 입력받고 submit 할 수 있는 html 문서를 작성하세요
//				   전달 받은 검색어를 아래 주어진 리스트에서 찾아서 일치하는 경우에 출력하세요
//				   추가 기능) 검색된 단어를 <b> 태그를 통해서 강조하세요
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		
		out.println("<html> <head><title>검색 결과</title></head> <body>");	// 중복되니까 위로 뺌
		
		
		for (String content : list) {
			
				// 주어진 문장에 전달된 키워드 포함되어있는지
			if (content.contains(keyword)) {
				
					// (보너스 문제) "강남역 최고 <b>맛집</b> 소개합니다
					// 맛집 -> <b>맛집</b> 변경 => 입력 키워드가 '맛집'일 때
				content = content.replace(keyword, "<b>" + keyword + "</b>");
				
				out.println("<div>" + content + "</div> <hr>");
			}
			
		}
		
		
		out.println("</body></html>");	// 중복되니까 아래로 뺌
		
		
		
		
		// 주소 : http://localhost:8080/servlet/test08?keyword=맛집
		
		
		
	}

}
