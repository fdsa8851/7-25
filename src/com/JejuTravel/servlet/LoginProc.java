package com.JejuTravel.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JejuTravel.dao.UserDAO;
import com.JejuTravel.vo.UserVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginProc")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginProc() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// userid 와 userpw를 전달 받아서
		// UserVO 를 전달 해도 되고                          선택 1
		//		System.out.println("여기 들어오는건가?");
		String path = request.getContextPath();
		String email = request.getParameter("email");
		String pw = request.getParameter("password");
//		String grade = request.getParameter("grade");
//		System.out.println("grade =" + grade);
		//		response.getWriter().append(email);
		//		response.getWriter().append(pw);
		System.out.println("eamil : " + email);
		UserVO vo = new UserVO();
		vo.setEmail(email);
		vo.setPw(pw);
//		vo.setGrade(Integer.parseInt(grade));
		
		
		
		// TODO: handle exception
		// email, pw 만 전달 해도 되고
		response.setContentType("text/html; charset=UTF-8");            //어떻게 하면 관리자 페이지 로 넘길수 있을까?
		PrintWriter out = response.getWriter();
		System.out.println("여기까지는 나와.?");
		System.out.println(vo.getGrade());
		try {
			UserVO uvo = UserDAO.getUser(email, pw);
			
			if(uvo != null) {       //vo를 담아서 전달.
				if(	uvo.getGrade() == 2 || uvo.getGrade() == 3) {
					HttpSession session = request.getSession();
					session.setAttribute("email", uvo.getEmail()); //값을 저장
					RequestDispatcher dis = request.getRequestDispatcher("admin.JejuTravel");
					dis.forward(request, response);
				}
				else {
				HttpSession session = request.getSession();
				session.setAttribute("email", uvo.getEmail()); //값을 저장
				session.setAttribute("name", uvo.getName()); //값을 저장
				response.sendRedirect(path + "/start.JejuTravel");
				}
			}else {
				response.sendRedirect(path + "/login/loginCheck.jsp");


			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception

		}


		// userid, userpw 만 전달 해도 되고       선택 2
		// UserDAO 쪽으로 보내서 DB 에서 select 문으로 id(이메일)과 pw를 검색
		// UserDAO 클래스 안에 InsertUsert 메소드 밑에
		// GetUser 라는 메소드를 만들어서 그 메소드에서 DB 에서 select 쿼리 문으로 이메일 과 패스워드를 검색
		// ID가 있는 사용자 정보를 바다아 와서  
		// 검색 결과를 비교 해서 ID / PW 체크 후 
		// 맞으면 TRUE 라고 하고 페이지 이동 
		// 틀리면 FALSE 라고 하고 다시 로그인 페이지

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
