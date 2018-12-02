package com.icss.dkgy.servlet.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icss.dkgy.biz.UserBiz;
import com.icss.dkgy.entity.AdminEntity;

import redis.clients.jedis.Jedis;

/**
 * Servlet implementation class AdminLoginSvl
 */
public class AdminLoginSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Jedis jedis = new Jedis("127.0.0.1", 6379);  
	public boolean visitCount(String ip){
		String value = jedis.get(ip);
		if (value == null) {  
			//初始化时设置IP访问次数为1  
			jedis.set(ip, "1");  
			//设置IP的生存时间为60秒，60秒内IP的访问次数由程序控制  
			jedis.expire(ip, 60);  
		} else {  
			int parseInt = Integer.parseInt(value);  
			//如果60秒内IP的访问次数超过2，返回false
			if (parseInt > 2) {  
				return false;  
			} else {
				//如果没有3次，可以自增  
				jedis.incr(ip);  
			}  
		}  
		return true;  

		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name	= request.getParameter("name");
	    String pwd = request.getParameter("pwd");
	    
	    if(visitCount(request.getRemoteHost())){
	    UserBiz biz = new UserBiz();    
	    AdminEntity admin = biz.adminLogin(name,pwd);
	    //判断admin是否有数据  没有--返回登录界面并给出提示msg
	    if(admin == null){
	    	request.setAttribute("msg", "用户名或密码错误");
	    	request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
	    }else{
	    	//判断管理员账号状态是否为'0'可登陆
	    	if("0".equals(admin.getStatus())){
	    		HttpSession session = request.getSession();//创建session对象
				session.setAttribute("adminname", admin.getAd_name());
				session.setAttribute("adminid", admin.getAd_id());
				request.getRequestDispatcher("backIndex.jsp").forward(request, response); // 请求转发都login页面
	    	}else{
	    		request.setAttribute("msg", "您的账号已被封");
		    	request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
	    	}
	    }
	    
	    }else{
			request.setAttribute("msg", "操作过于频繁，请稍后再试");
			request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
