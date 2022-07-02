package com.lily.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/ex02/insert")
public class ServletDBEx02InsertController extends HttpServlet {
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
			// introduce는 굉장히 길어질 수 있어서 get 보다는 post가 더 적합
		
		response.setContentType("text/plain");
		
//		PrintWriter out = response.getWriter();
		
		
		// `name`, `yyyymmdd`, `introduce`, `email` 값을 변수로 바꿔치기 (파라미터로 변경) 
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		
			// mysql에 INSERT 값 입력 후 여기에 복붙한 후에 아래 값만 파라미터로 변경하기 
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `introduce`, `email`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE \r\n"
				+ "('" + name + "', '" +  yyyymmdd + "', '" + introduce + "', '" + email + "', now(), now());";
		
		
		int count = mysqlService.update(query);
		
		
//		out.println("실행된 행 개수 : " + count);
			// 이거 뜨면 mysql에 자동으로 행 추가됨 (db 추가)
		
		
		
		// 특정 페이지로 이동
		response.sendRedirect("/db/ex02.jsp");   // ex02의 기존 데이터 표에 자동으로 한줄 추가됨
		
		
	}

}
