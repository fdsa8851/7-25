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
 * Servlet implementation class UpdateInfoServlet
 */
@WebServlet("/UpdateInfoServlet")
public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//admin.jsp 에 있는 모달에 있는 수정 버튼을 누르면
		// ajax 가 있는 함수가 실행 되어서 여기 서블릿으로 들어온다.
		System.out.println("UPdateInfoServlet 이 나온다.!");
		String grade = request.getParameter("grade");
		String u_idx = request.getParameter("u_idx");
		System.out.println(grade);
		System.out.println(u_idx);
		// 전달 되는 값은? u_idx, name, email, username, pw ,grade
		// 전달 되는 값을 받아서 각각의 정보를 업데이트 쿼리를 날려서 수정
		UserVO vo = new UserVO();
		vo.setGrade(Integer.parseInt(grade));
		vo.setU_idx(Integer.parseInt(u_idx));
		
		try {
			UserDAO.updateInfo(vo);
			response.getWriter().println("OK");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 성공 하면 다시 admin.jsp 에서 ajax로 다시 가서 success 쪽으로
		// 성공 메시지를 보내어서 성공 했다라고 하고 다시 페이지 로드  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
