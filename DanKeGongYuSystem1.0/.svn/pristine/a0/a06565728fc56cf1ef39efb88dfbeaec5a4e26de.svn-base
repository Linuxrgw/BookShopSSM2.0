package com.icss.dkgy.servlet.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.dkgy.biz.UserBiz;
import com.icss.dkgy.entity.UserEntity;
import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

/**
 * 修改资料
 */
public class UpdateSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String sex = request.getParameter("gender");
//		String phone =(String)session.getAttribute("phone");
		String phone = request.getParameter("phone");
		UserBiz biz = new UserBiz();
		boolean flag = biz.updateInfo(username, phone, sex);
		if(flag){
			request.setAttribute("username", username);
			request.setAttribute("phone", phone);
			request.setAttribute("sex", sex);
			request.getRequestDispatcher("user_index.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "保存失败");
			request.getRequestDispatcher("msg").forward(request, response);
		}
		System.out.println(username+sex+phone);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
