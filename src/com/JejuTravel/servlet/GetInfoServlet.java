package com.JejuTravel.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JejuTravel.dao.UserDAO;
import com.JejuTravel.vo.UserVO;

/**
 * Servlet implementation class GetInfoServlet
 */
@WebServlet("/GetInfoServlet")
public class GetInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		// u_idx 값을 받아 와서 UserDAO 에서 사용자 정보를 가져오기
		String u_idx = request.getParameter("u_idx");
		System.out.println(u_idx);
		try {
			UserVO vo = UserDAO.getUserInfo(u_idx);
			//int uIdx = vo.getU_idx();
			String name = "/" + vo.getName();
			String email = "/" + vo.getEmail();
			String username = "/" + vo.getUsername();
			String pw = "/" + vo.getPw();
			System.out.println(name);
			System.out.println(email);
			System.out.println(username);
			System.out.println(pw);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/plain; charset=UTF-8");
			response.getWriter().println("OK/" + u_idx + name + email + username + pw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
