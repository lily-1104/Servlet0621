package com.lily.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/test02/insert")
public class ServletDBTest02InsertController extends HttpServlet{
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		// url이 길어질 수 있어서 Post 사용 
		
		
			// 보여주기 위한게 아니라서 response, PrintWriter 코드 필요 X
//		response.setContentType("text/plain");	
			
		
		
		// 사용자가 입력할 내용 변수로 만들기
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		
		// mySQL 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query = "INSERT INTO `favorite` (`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + url + "', now(), now());";
		
		
		mysqlService.update(query);
		
		
		
		// 원하는 페이지로 이동시키는 코드
		try {
			response.sendRedirect("/db/test02.jsp");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

}
