package com.lily.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet {	 
						//  extends HttpServlet 쓰고 HttpServlet 임포트하기
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
						// 임포트 하기
		
		
		PrintWriter out = response.getWriter();		// 임포트하고 마우스 갖다대면 뜨는 Add throws declaration 누르기
		out.println("Hello World");
	}

}
