package com.JejuTravel.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import com.JejuTravel.dao.UserDAO;
import com.JejuTravel.vo.UserVO;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String site = "admin/admin.jsp";

		HttpSession session = request.getSession();
		
		String idCheck = (String)session.getAttribute("email");
		//만약에 idCheck의 값이 있으면 admin.jsp 로 보내고
		// 없으면 login.jsp 로 보내고 (login.tm0)
//		if(idCheck == null) {
//			site = "login/login.jsp";
//			response.sendRedirect(site); 	// login 페이지로 redirect
//			return;   	//if 문 아래의 코드 진행을 막는다. login 페이지로 
//		} else {
//			response.sendRedirect(site); 	
//			return;
//		}
		//로그인이 되었는지 체크(session)
		//여기에 DB 정보를 불러워 와서
		//UserDAO 에서 회원 정보 리스트를 받아 오는거 만들기
		try {
		ArrayList<UserVO> getList = UserDAO.getUser();
		//getList를 브라우저(jsp)에서 전달을 해줘야 하는데
		// 전달 할 수 있는 방법이
		request.setAttribute("userlist", getList); //(1 String 타입,2 객체 를 넣는다.) //서버내에userlist라는 곳에 getList를 담아 놓는다.
		RequestDispatcher dis = request.getRequestDispatcher(site);
		dis.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
