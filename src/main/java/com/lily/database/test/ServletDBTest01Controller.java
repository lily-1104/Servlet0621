 package com.lily.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/test01")
public class ServletDBTest01Controller extends HttpServlet {
	
	
	// Test 01 - Databse 연동 및 쿼리 실행 (Databse 연동)
	
	// 매물 리스트 		=> 부동산 매물 테이블(real_estate)을 통해서 아래 문제를 풀어보세요
//					   servlet에서 DB 연동을 통해 아래 항목을 insert 하고 전체 매물 리스트를 text/plain Type으로 출력하세요  
//						* 출력 컬럼은 매물 주소, 면적, 타입 입니다
//						* id 기준 내림차순으로 10개만 출력하세요
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		
		
		int count = mysqlService.update(insertQuery);		// 임포트?
		
		out.println("행 삽입 개수 : " + count);
		
		
		String selectQuery = "SELECT `address`, `area`, `type` FROM `rear_estate`\r\n"
				+ "ORDER BY `id` DESC LIMIT 10;";
		
		
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		
		try {
			while(resultSet.next()) {
				
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
		
			//  http://localhost:8080/db/test01
		
		
	}

}
