package com.lily.database.ex;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/ex02/delete")
public class ServletDBEx02DeleteController extends HttpServlet {
	
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) {
		
		// delete 하고나서 보여줄 페이지라서 response 코드 필요 X
		
		
		// 삭제할 대상의 id를 파라미터로 전달받기 
		String id = request.getParameter("id");
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query = "DELETE FROM `new_user` WHERE `id` = " + id + ";";
		
		mysqlService.update(query);
		
		try {
			response.sendRedirect("/db/ex02.jsp");
			
		} catch (IOException e) {
			e.printStackTrace();
		}	
		
		// 여기까지하고 http://localhost:8080/db/ex02/delete?id=4  주소 입력하면
		// id가 4인 행이 삭제 됨
		
		
	}

}
