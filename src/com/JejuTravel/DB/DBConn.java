package com.JejuTravel.DB;

import java.sql.Connection;						
import java.sql.DriverManager;						
						
public class DBConn {						
	public static Connection getConnection() throws Exception {					
		// Mysql DB 연결 시				
		String url = "jdbc:mysql://203.250.32.44:3306/kkyjo";   // team0 은 각 조 DB명				
		String driver = "com.mysql.jdbc.Driver";				
		// 오라클 DB 연결 시				
		// String url = "jdbc:oracle:thin:@localhost:1521:xe";				
		// String driver = "oracle.jdbc.driver.OracleDriver";				
						
		String user = "KKYJO"; // java				
		String pw = "KKYJO!"; // java				
						
		// 드라이버 로딩(jar 파일 로드)				
		Class.forName(driver);				
		Connection conn = DriverManager.getConnection(url, user, pw);				
		return conn;				

	}
}