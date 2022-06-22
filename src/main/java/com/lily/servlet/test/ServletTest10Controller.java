package com.lily.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class ServletTest10Controller extends HttpServlet {
	
	
	// Test 10 - Post Method 2 (Servlet)
	
	
	// 사용자 정보 확인  	=> id 와 password 를 입력 받고, submit 할 수 있는 html 문서를 작성하세요
//						   전달 받은 id와 password가 아래에 주어진 사용자 정보와 일치하는지 확인하세요
//						   id가 일치하지 않는 경우 'id가 일치하지 않습니다' 를 출력하세요
//						   password가 일치하지 않는 경우 'password가 일치하지 않습니다' 를 출력하세요

	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");	// key는 id
	        put("password", "asdf");	// key는 password
	        put("name", "김인규");	// key는 name
	    }
	};
	
	
	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
			// 로그인 페이지라서 패스워드 입력받아야하니까 Post 메소드 사용
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		// id와 password 전달 받기
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		
		// map에 있는 id, password와 파라미터로 전달 받은 id, password를 비교해서 안내문구 출력
		
		out.println("<html><head><title>로그인</title></head> <body>");	// 중복되니까 위로 뺌
		
			// id가 일치하지 않을 때
		if (!id.equals(userMap.get("id"))) {	// 일치하지 않으니까 id 앞에 ! 적음
			out.println("<h1>아이디가 일치하지 않습니다 </h1>");
			
			// password가 일치하지 않을 때
		} else if(password.equals(userMap.get("password"))) {
			out.println("<h1>비밀번호가 일치하지 않습니다 </h1>");
			
		} else {
			
			// 로그인 성공
			out.println("<h1>" + userMap.get("name") + "환영합니다 </h2>");
		}
		
		
		
		out.println("</body></html>");
		
		
		
	}
	
}
