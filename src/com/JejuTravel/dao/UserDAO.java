package com.JejuTravel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.JejuTravel.DB.DBConn;
import com.JejuTravel.vo.UserVO;
import com.sun.org.apache.xpath.internal.operations.Bool;

/*
 * 수정 쿼리
 * update user set name = '일' where u_idx = 3;
 * 
 * 삭제 쿼리
 * delete from user where u_idx = 16
 * 
 * 추가 쿼리
 * insert into user(name, phone, email, pw)
	values ('빅데이터', '010-1111-1111', 'aa@aa.com', '123')
 */

public class UserDAO {
	public static void InsertUser(UserVO vo) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 삽입
		// insert into user (name, phone, email, pw) values ('이름', '010-1234-1234', 'a@a.com', '1234')
		String sql  = "insert into jejuuser (name, email, username, pw) values (?, ?, ?, ?)";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		pstmt.setString(3, vo.getUsername());
		pstmt.setString(4, vo.getPw());
		
		// 쿼리 실행
		pstmt.executeUpdate();
		db.close();
	}
	
	// 사용자 정보 삭제
	public static void delInfo(String u_idx) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		
		String sql  = "delete from jejuuser where u_idx = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, u_idx);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		db.close();
	}
	
	// 메일 중복 체크
	// 리턴 타입  Boolean
	// 사용법: if (getUser('aaa')) { 있다} else {없다}
	
	public static boolean emailCheck(String email) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		String sql  = "select * from jejuuser where email= ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, email);
		
		ResultSet rs = pstmt.executeQuery(); //???  요건 뭐하는 거지?
		Boolean ret = rs.next();  // 있으면 true 없으면 false
		System.out.println(ret);
		db.close();
		return ret; 
	}
	
	public static Boolean userNameCheck(String username) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		// select * from user where email = ?
		String sql  = "select * from jejuuser where username = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, username);
//		Boolean isID = false;   // 검색된 값이 없으면 false(디폴트 값)
		ResultSet rs = pstmt.executeQuery();
//		if (rs.next() == true) {
//			isID = true;
//		}	
		Boolean isUsername  = rs.next();
		db.close(); 
		return isUsername;
	}
	public static void adminCheck(String grade,String u_idx) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		// select * from user where email = ?
		String sql  = "update jejuuser set grade = ? where u_idx = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
//		Boolean isID = false;   // 검색된 값이 없으면 false(디폴트 값)
		pstmt.setString(1, grade);
		pstmt.setString(2, u_idx);
		pstmt.executeUpdate();
//		if (rs.next() == true) {
//			isID = true;
//		}	
		db.close(); 
		
	}

	public static UserVO getUserInfo(String u_idx) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		String sql  = "select * from jejuuser where u_idx = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, u_idx);
		
		UserVO vo = null;   // 사용자 정보를 담는 객체
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			vo = new UserVO();
			vo.setU_idx(rs.getInt("u_idx"));
			vo.setName(rs.getString("name"));
			vo.setUsername(rs.getString("username"));
			vo.setEmail(rs.getString("email"));
			vo.setPw(rs.getString("pw"));
		}	
		db.close();
		return vo;
	}
	
	// String email, pw 를 매개변수로 넣어서 UserVO 값을 반환
	// 들어가는 매개 변수 String email, String pw
	// 리턴 받는 형은 UserVO
	public static UserVO getUser(String email, String pw) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		// select * from user where email = ?
//		String sql  = "select * from user where email = ?";
		String sql  = "select * from jejuuser where email = ? and pw = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, pw);
		
		UserVO vo = null;
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			vo = new UserVO();
			vo.setName(rs.getString("name"));
			vo.setEmail(rs.getString("email"));
			vo.setUsername(rs.getString("username"));
			vo.setGrade(rs.getInt("grade"));
		}	
		db.close();
		return vo;
	}
	
	// vo 객체를 넣어서 email pw 정보 확인
	public static Boolean getUser(UserVO vo) throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		// select * from user where email = ?
		String sql  = "select * from jejuuser where email = ?";
//		String sql  = "select * from user where email = ? and pw = ?";
		PreparedStatement pstmt = db.prepareStatement(sql);
		pstmt.setString(1, vo.getEmail());
		// DB에서 email과 같이 검색 해서 넣어 줘도 됨.
		// 검색된 데이터가 있으면 로그인, 없으면 로그인 실패
//		pstmt.setString(4, vo.getPw());   
		// email만으로 검색해서 데이터가 있으면
		// pw DB데이터와 vo.getPW() 데이터와 비교
		// 쿼리 실행해서 결과값 반환 받음
		Boolean isLogin = false;
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			// 패스워드 체크 후 로그인 성공 여부
			String dbPw = rs.getString("pw");
			if (dbPw.equals(vo.getPw())) {
				// 패스워드가 맞음
				isLogin = true;
			} else {
				//패스워드 틀림
			}
		} else {
			// email 정보가 없음
		}
		db.close();
		return isLogin;
	}
	
	// 사용자 정보 리스트를 가져 오는 메소드
	// UserVO는 사용자 하나의 정보
	// 리스트에 UserVO를 담으면 여러개의 사용자 정보를 받아 올수 있겠네?
	/*
	 * getUser를 호출 하면 리스트를 받을 수 있다.
	 * 사용법: ArrayList<UserVO> getList = UserDAO.getUser();
	 */
	public static void testMethod() {
		System.out.println("여기는 반환값(return 값)이 없는");
		System.out.println("메소드 이름 앞에 void 를 쓰고");
	}
	public static int testMethod2() {
		System.out.println("숫자를 외부로 전달 하기 위해서는 ");
		System.out.println("메소드 이름 앞에 int 를 쓰고");
		// 아래에 return int 변수나 숫자를 써서 전달.
		return 1;
	}
	public static String testMethod3() {
		System.out.println("숫자를 외부로 전달 하기 위해서는 ");
		System.out.println("메소드 이름 앞에 int 를 쓰고");
		// 아래에 return int 변수나 숫자를 써서 전달.
		return "문자열 전달";
	}
	
	public static ArrayList<String> testMethod4() {
		// 문자열 리스트를 전달 하기 위해 메소드 이름 앞에
		// 문자열 리스트를 담는 ArrayList를 쓴다.
		
		ArrayList<String> strList = new ArrayList<>();
		strList.add("문자열1");
		strList.add("문자열2");
		strList.add("문자열3");
		
		// ArrayList의 참조 변수를 return(전달)
		return strList;
	}
	
	// UserVO는 사용자 하나의 정보 
	// 리스트에 UserVO를 담으면 여러 개의 사용자 정보를 받아 올 수 있을듯
	/*
	 * getUser를 호출하면 리스트를 받을 수 있다.
	 * 사용법: ArrayList<UserVO> getLIst = UserDAO.getUser();
	 */
	public static ArrayList<UserVO> getUser() throws Exception {
		// DB 접속
		Connection db = DBConn.getConnection();
		// 쿼리 날려서 유저 정보를 검색
		String sql  = "select * from jejuuser";   // 사용자 정보 전체 검색 쿼리
		PreparedStatement pstmt = db.prepareStatement(sql);  // sql 관리 객체
		ResultSet rs = pstmt.executeQuery();   // 쿼리를 DB에 날려서 rs에 값을 받음
		
		// 사용자 정보를 담을 리스트
		ArrayList<UserVO> userList = new ArrayList<>();

		// 사용자 정보가 한줄씩 읽어서 user 테이블 정보의 마지막 까지
		// 읽어서 더이상 읽어올 정보가 없으면 while 문 종료
		while (rs.next()) {
			UserVO vo = new UserVO();    // 사용자 정보를 담은 객체
			vo.setU_idx(rs.getInt("u_idx"));    // 사용자의 키값(PK)
			vo.setName(rs.getString("name"));   // 사용자의 이름
			vo.setEmail(rs.getString("email")); // 사용자의 이메일
			vo.setUsername(rs.getString("username")); // 사용자의 전화 번호
			vo.setPw(rs.getString("pw"));;		// 사용자의 비밀번호
			vo.setGrade(rs.getInt("grade"));		// 사용자의 등급
			userList.add(vo);   // 사용자 정보 객체를 리스트에 담기
		}	
		db.close();  // db 연결 정보 닫기
		return userList;   // 사용자 정보 리스트를 메소드 외부로 보내기
	}
	
	/*
	 * 사용법: 리턴 타입은 Boolean
	 * ID 가 있으면 true 없으면 false
	 * Boolean isID = idCheck(id);
	 * isID 값을 비교
	 */

	public static void updateInfo(UserVO vo) throws Exception {
				Connection db = DBConn.getConnection();
				// 쿼리 날려서 유저 정보를 삽입
				// insert into user (name, email, username, pw) values ()
				String sql  = "update jejuuser set grade =? where u_idx = ?";
				PreparedStatement pstmt = db.prepareStatement(sql);
				pstmt.setInt(1, vo.getGrade());
				pstmt.setInt(2, vo.getU_idx());
				// 쿼리 실행
				pstmt.executeUpdate();
				db.close();
	}

	
}
