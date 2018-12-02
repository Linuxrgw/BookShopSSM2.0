package com.icss.dkgy.servlet.back;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.util.ResultPage;

/**
 * Servlet implementation class SearchRoomSvl
 */
public class SearchRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int current = 1;//当前页
		String curr = request.getParameter("current");//从页面接受到的当前页
		if(curr!=null && !"".equals(curr)){
			current = Integer.parseInt(curr);
		}
		String address = request.getParameter("address");
		System.out.println(address);
		String type = request.getParameter("typeid");
		System.out.println(type);
		int typeid =Integer.parseInt(type);
		
		String status = request.getParameter("status");
		System.out.println(typeid+status+address);
		ResultPage<RoomEntity> page = new ResultPage<RoomEntity>();
		page.setCurrentPage(current);//把当前页存储在工具类中
		RoomBiz biz = new RoomBiz();
		biz.getPageInfo(page,address,typeid,status);
		request.setAttribute("page", page);
		System.out.println(page);
		request.getRequestDispatcher("house_list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
