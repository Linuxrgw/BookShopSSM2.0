/**  
* <p>Title: UserController.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月22日  
* @version 1.0  
*/
package com.icss.bookshopssm.controller;

import java.awt.Dialog.ModalExclusionType;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icss.bookshopssm.biz.UserBiz;
import com.icss.bookshopssm.entity.UserEntity;

/**  
 * @Title: UserController
 * @Description:
 * @author 任广伟
 * @createTime 
 */
/**  
 * @Title: UserController
 * @Description:
 * @author 任广伟
 * @createTime 2018年11月27日下午2:29:28
 */
/**  
 * @Title: UserController
 * @Description:
 * @author 任广伟
 * @createTime 2018年11月27日下午2:29:29
 */
@Controller
public class UserController {
	   //注解的方式引入  name的值和实现类里的service的值一致
	
	@Resource(name="userBiz")
	private UserBiz userBiz;

	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	@RequestMapping("findAllUser")
	public ModelAndView findAllUser(){
		ArrayList<UserEntity> list = userBiz.findAllUser();
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("users",list);
		mView.setViewName("alluser");
		return mView;
	}
	@RequestMapping("/login")
	public String login(String username, String pwd,HttpSession session,HttpServletRequest request) {
		UserEntity user = userBiz.login(username, pwd);
		if (user == null) {
			request.setAttribute("msg", "用户名或者密码错误");
			return "forward:/login.jsp";
		} else {
			// 账户状态 0-正常 1-封号
			if ("0".equals(user.getStatus())) {
				session.setAttribute("userid", user.getUserid());
				session.setAttribute("username", user.getUsername());
				// 1-普通用户 2-管理员
				if ("1".equals(user.getRole())) {
					return "forward:/findAllBook.action";
				} else {
					return "forward:/WEB-INF/jsp/bookadd.jsp";
				}
			} else {
				request.setAttribute("msg", "您的账号已经被封");
				return "forward:/login.jsp";
			}
		}
	}
	
	/**  
	 * @Title: checkUserName
	 * @Description:检查用户名是否存在
	 * @author 任广伟
	 * @param username  
	 * @throws IOException 
	 * @date 2018年11月27日下午2:29:43
	 */
	@RequestMapping("/checkUserName")
	public void checkUserName(String username,HttpServletResponse response) throws IOException{
		int flag = userBiz.checkUserName(username);
		response.getWriter().print(flag);
		
		
	}
	//注册 
	@RequestMapping("/regist")
	public String regist(UserEntity user,HttpServletRequest request){
		userBiz.regist(user);
		if(user.getUserid()>0){
			request.setAttribute("msg", "注册成功，请重新登录");
			return "forward:/login.jsp";
		}else{
			return "forward:/regist.jsp";
		}
		
		
	}


}
