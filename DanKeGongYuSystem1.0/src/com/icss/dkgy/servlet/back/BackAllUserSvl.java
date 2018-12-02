package com.icss.dkgy.servlet.back;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.biz.UserBiz;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.entity.UserEntity;
import com.icss.dkgy.util.ResultPage;

/**
 * 后台查看所有用户信息
 */
public class BackAllUserSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int current = 1;//当前页
		String curr = request.getParameter("current");//从页面接受到的当前页
		if(curr!=null && !"".equals(curr)){
			current = Integer.parseInt(curr);
		}
		ResultPage<UserEntity> page = new ResultPage<UserEntity>();
		page.setCurrentPage(current);//把当前页存储在工具类中
		UserBiz biz = new UserBiz();
		biz.getPageInfoU(page);
		request.setAttribute("page", page);
		System.out.println(page);
		request.getRequestDispatcher("loupanchart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
