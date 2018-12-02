package com.icss.dkgy.servlet.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.dkgy.biz.UserBiz;
import com.icss.dkgy.entity.UserEntity;

/**
 * Servlet implementation class LogInSvl
 */
public class LoginSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginSvl() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String phone = request.getParameter("phone");
//		    System.out.println(phone+"phone");
		    UserEntity user = new UserEntity();
		    HttpSession session = request.getSession();
//			session.setAttribute("username", user.getUsername());
            session.setAttribute("phone", phone);
            //调用biz层登录方法
            UserBiz biz = new UserBiz();
            boolean flag = biz.login(phone);
            if (flag){
//            	request.setAttribute("user", user.getUsername());
            	request.getRequestDispatcher("user_center.jsp").forward(request, response);
            }else{
//            	request.getRequestDispatcher("user_center.jsp");
            	response.sendRedirect("user_center.jsp");
            }
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
