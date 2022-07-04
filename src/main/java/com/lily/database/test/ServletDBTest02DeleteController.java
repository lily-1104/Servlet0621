package com.lily.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/test02/delete")
public class ServletDBTest02DeleteController extends HttpServlet {
	
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) {
		
		
		// 페이지에서 값을 전달받는다
		String id = request.getParameter("id");
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query = "DELETE FROM `favorite` WHERE `id` = " + id + ";";
		
		
		mysqlService.update(query);
		
		
		try {
			response.sendRedirect("/db/test02.jsp");
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		// http://localhost:8080/db/test02/delete?id=(아이디 번호)
		
		
	}

}
