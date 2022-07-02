package com.lily.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lily.common.MysqlService;

@WebServlet("/db/ex01")		// 임포트 하기
public class ServletDBEx01Controller extends HttpServlet {	 // extends HttpServlet 적고 임포트 
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
	
		PrintWriter out = response.getWriter();
		
		
		// DB 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				// 서버 접속을 위한 기본 세팅, 빨간줄 뜨면 마우스대고 Surround with try/catch 클릭
			
			
			// mySql 서버 접속 주소, 아이디, 비번 필요
//			String url = "jdbc:mysql://localhost:3306/qq_0530";
//			String userId = "root";
//			String password = "qlalf22";
			
				// 임포트
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement = connection.createStatement();  	// 임포트 -> java.sql.statement 클릭
			
			
			
			// MySQL에 있는 데이터 복붙함 ('String query =' 만 적어줌)
			String query = "INSERT INTO `used_goods`\r\n"
					+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
					+ "VALUE\r\n"
					+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까다로워서 안먹어요', NULL, now(), now()); ";
			
			
			
			// insert, update, delete
			// 실행된 행의 개수
//			int count = statement.executeUpdate(query);
			
			
			// singletone - 디자인 패턴 (무분별한 사용을 막기 위해 사용)
			MysqlService mysqlService = MysqlService.getInstance(); 
			mysqlService.connect();
			
			String selectQuery = "SELECT * FROM `used_goods`";
			
			ResultSet resultSet = mysqlService.select(selectQuery);
			
			
			try {
				while(resultSet.next()) {
					String title = resultSet.getString("title");
					int price = resultSet.getInt("price");
					
					out.println("제품명 : " + title + " 가격 : " + price);
				}
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			
			
//			int count = mysqlService.update(query);
			
//			out.println("삽입 행의 개수 : " + count);
			
			
			
			
//		} catch (SQLException e) {	 // remove catch ~ 클릭, 안되면 주석처리
//			
//			e.printStackTrace();
//		}	
		
		
			
		
			//  http://localhost:8080/db/ex01
	
			
	}

}
