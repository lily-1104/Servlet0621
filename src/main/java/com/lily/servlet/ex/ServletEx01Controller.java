package com.lily.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx01Controller extends HttpServlet {	
								// extends HttpServlet 적고 임포트
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
							// 임포트 하기
		
		response.setContentType("text/plain");
			// text/plain 이나 text/css 같은 것 : MIME라고하는 문서의 규격을 알려주는 문자열의 표준
		
		// 캐릭터셋, 인코딩 : 내가 만든 캐릭터는 이런 형태로 만들어졌다
		response.setCharacterEncoding("utf-8");
		
			// 위의 response~(""); 두개 코드는 정해진거니까 이대로 쓰기!!
		
		
		
		// 현재 날짜와 시간을 보여주는 페이지
		
		Date now = new Date();	// 임포트 -> java.util.date 클릭
				// Date로 현재시간 쉽게 알 수 있음
		
		
		PrintWriter out = response.getWriter();		// 임포트 하고 Add~ 클릭
		out.println(now);
			// 위에 코드 적고 web.xml에서  
		    // <!-- 예제 1번 url mapping --> 아래에 있는 코드 입력 후 Servers의 Tomcat Restart 하고
			// http://localhost:8080/Servlet0614/servlet/ex01 주소 입력하면 현재 시간 뜸
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
												// 월은 MM (대문자), 분은 mm (소문자)
												// hh는 12시간 기준, HH는 24시간 기준
			// 'yyyy-MM-dd HH:mm:ss' 대신 'yyyy년 M월 d일 HH시 mm분 ss초'로 원하면 이렇게 형태 바꿔도 됨
		
		
			// 데이트 객체의 시간을 문자열로 변환
		String dateString = formatter.format(now);	
		out.println(dateString);
		
		
		
		
		
		
	}

}
