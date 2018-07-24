package com.JejuTravel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("*.JejuTravel")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String url = request.getRequestURL().toString();
		String url2 = request.getRequestURI();
//		System.out.println(url);
		System.out.println(url2);
		
		String [] sub = url.split("/");
		String [] sub2 = url2.split("/");
		int idx = 0;
		for (String s : sub2) {
			System.out.println(idx++ + s);
		}
		String subUrl = sub[4];
		String subUrl2 = sub2[sub2.length - 1];
		
		System.out.println(subUrl);
		System.out.println(subUrl2);
		String site = null;
		switch (subUrl2) {
		case "login.JejuTravel":
			//response.getWriter().append("login page");
//			System.out.println(subUrl);
			site = "login/login.jsp";
			System.out.println(" 여기는 오는건지 마는건지?");
			break;
		case "login_proc.JejuTravel":
			site = "LoginProc";	 // 모델 (model)
			break;	
		case "index.JejuTravel":
			site = "start.jsp";	 // 처음으로 
			break;	
		case "joinus.JejuTravel":
			site = "signup/signup.jsp";   // 뷰 (view)
			break;
		case "joinus_proc.JejuTravel":
			System.out.println("joinus_proc 확인용!");
			site = "JoinUsProc";	 // 모델 (model) 회원가입 폼을 받아서 JoinUsProc 으로 넘긴다.
			break;
		case "main.JejuTravel":
//			response.getWriter().append("login success");
//			if (site == null) {
//				return;
//			}
			site = "MainServlet";   // 뷰 (view)
			break;
		case "admin.JejuTravel":
//			response.getWriter().append("only admin page");
			site = "AdminServlet";
			break;
		case "logout.JejuTravel": 
//			System.out.println("나오냐이거?");
			site = "LogoutServlet";   // 로그아웃
			break;
		case "emailcheck.JejuTravel": 
			System.out.println("나와라");
			site = "EmailCheckServlet";   // 이메일 체크
			break;
			
		case "userNameCheck.JejuTravel": 
			site = "UserNameCheckServlet";   // ID 체크
			break;
			
		case "delinfo.JejuTravel": 
			site = "DelInfoServlet";   // ID 체크
			break;
			
		case "getuserinfo.JejuTravel": 
			site = "GetInfoServlet";   // 사용자 정보 확인
			break;
			
		case "updateinfo.JejuTravel": 
			site = "UpdateInfoServlet";   // 사용자 정보 확인
			break;
		case "beachupdate.JejuTravel": 
			site = "BeachServlet";   // 사용자 정보 확인
			break;
		case "beachupdate2.JejuTravel": 
			site = "BeachServlet2";   // 사용자 정보 확인
			break;
		case "beachupdate3.JejuTravel": 
			site = "BeachServlet3";   // 사용자 정보 확인
			break;
		case "dbin.JejuTravel": 
			site = "dbin.jsp";   // 사용자 정보 확인
			break;
		
		default:
			response.getWriter().append("error page");
			System.out.println("잘못된 URL");
			break;
		}
		// 서버내에서 페이지 이동
		RequestDispatcher dis = request.getRequestDispatcher(site);
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
