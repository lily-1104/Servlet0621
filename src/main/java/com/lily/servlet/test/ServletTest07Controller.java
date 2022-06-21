package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07Controller extends HttpServlet {
	
	
	// Test 07 - Get Method 와 form 1 (Servlet)
	
	
	// 주문하기 	=> 아래와 같이 입력을 받는 input을 만들고,
//				      form을 통해 값을 submit 할 수 있는 html 문서를 만드세요
//				   출력 화면도 HTML 문서로 만드세요
//				   
//				      - 전달받은 주소에 '서울시' 가 포함되어 있지 않으면, '배달 불가 지역입니다' 를 출력하세요
//				      - 전달 받은 결제 카드가 '신한카드'인 경우 '결제 불가 카드 입니다' 를 출력하세요
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// 주소, 카드, 가격 전달 받기
		
		String address = request.getParameter("address");
		
		String card = request.getParameter("card");
		
		String priceString = request.getParameter("price");
		
		
		
		out.println("<html> <head><title>배탈의 민족</title></head> <body>");	// 중복되니까 위로 뺌
		
		
		// 서울시가 포함되어있지 않으면 배달 불가
		
		if (!address.contains("서울시")) {	// 서울시가 아니면 배달 불가라서 address 앞에 ! 붙음 (부정의 의미)
			out.println("<h2>배달불가 지역입니다 </h2>");
			
				// 신한카드가 결제 불가 카드
		} else if (card.equals("신한카드")) {		// 문자열 비교니까 equals 사용
			out.println("<h2>결제 불가 카드입니다 </h2>");
			
		} else {
			out.println("<h3>" + address + "로 배달 중 </h3> <hr>");
			out.println("결제 금액 : " + priceString + "원");
		}
		
		
		out.println("</body></html>");	// 중복되니까 아래로 뺌
			
		
		
		
		
			// startsWith도 가능하지만 위의 contains가 더 적합
		
//		if (!address.startsWith("서울시")) {	// 서울시가 아니면 배달 불가라서 address 앞에 ! 붙음 (부정의 의미)
//			System.out.println("배달 불가 지역");
//		} else {
//			System.out.println("배달 준비중");
//		}
		
		
		
		
		// 주소 : http://localhost:8080/servlet/test07?address=서울시송파구&card=신한카드&price=1000
		
		
	}

}
