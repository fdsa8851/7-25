package com.JejuTravel;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JejuTravel.dao.CafeDAO;
import com.JejuTravel.dao.FoodDAO;
import com.JejuTravel.dao.HotelDAO;
import com.JejuTravel.vo.CafeVO;
import com.JejuTravel.vo.FoodVO;
import com.JejuTravel.vo.HotelVO;


/**
 * Servlet implementation class JoinUsProc
 */
@WebServlet("/BeachServlet3")
public class dbProc3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dbProc3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		//name,phone,email, pw
		String address = request.getParameter("address");
		String name = request.getParameter("name");
		String bHours = request.getParameter("bHours");
		String food = request.getParameter("food");
		String holiday = request.getParameter("holiday");
		String groupf = request.getParameter("groupf");
		
		//확인용
//		System.out.println("이름 : " + name);
		HotelVO uvo = new HotelVO();
		uvo.setAddress(address);
		uvo.setName(name);
		uvo.setbHours(bHours);
		uvo.setFood(food);
		uvo.setHoliday(holiday);
		uvo.setGroupf(groupf);
		
		
		
		// static 으로 만들어서 바로 사용 가능
		// 원래는 객체 생성 후 만듬.
		//response.setContentType("text/html; charset=UTF-8");
		 PrintWriter out = response.getWriter();
		try {
			HotelDAO.InsertUser(uvo);
			response.sendRedirect("dbin.JejuTravel");
//			out.println("OK");
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
