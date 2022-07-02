package com.lily.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// Mysql 접속 과정을 간결하게 해준다
public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	
	// 접속 정보, url, userId, password
	
		// 수정되면 안되니까 final 적어줌 (고정된 값, 수정 불가능)
	private final String url = "jdbc:mysql://localhost:3306/qq_0530";
	private final String userId = "root";
	private final String password = "qlalf22";
	
	
	// 멤버 변수 만들기
	Connection connection;
	Statement statement;
	
	
	
	// 객체를 전달하는 기능
	// 객체 생성 없이 호출 가능한 메소드 : static
	
	public static MysqlService getInstance() {		// 객체를 얻는다
		
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			this.connection = DriverManager.getConnection(url, userId, password);
			this.statement = connection.createStatement();  	// 임포트 -> java.sql.statement 클릭
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	// 쿼리 수행 기능 
		// insert, update, delete
	
	public int update(String query) {
		
		try {
			int count = this.statement.executeUpdate(query);
			return count;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	// select 쿼리 수행 기능
	
	public ResultSet select(String query) {
		ResultSet resultSet;
		
		try {
			resultSet = this.statement.executeQuery(query);
			return resultSet;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
	}
	
	
}
