/**  
* <p>Title: UserController.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��22��  
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
 * @author �ι�ΰ
 * @createTime 
 */
/**  
 * @Title: UserController
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��27������2:29:28
 */
/**  
 * @Title: UserController
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��27������2:29:29
 */
@Controller
public class UserController {
	   //ע��ķ�ʽ����  name��ֵ��ʵ�������service��ֵһ��
	
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
			request.setAttribute("msg", "�û��������������");
			return "forward:/login.jsp";
		} else {
			// �˻�״̬ 0-���� 1-���
			if ("0".equals(user.getStatus())) {
				session.setAttribute("userid", user.getUserid());
				session.setAttribute("username", user.getUsername());
				// 1-��ͨ�û� 2-����Ա
				if ("1".equals(user.getRole())) {
					return "forward:/findAllBook.action";
				} else {
					return "forward:/WEB-INF/jsp/bookadd.jsp";
				}
			} else {
				request.setAttribute("msg", "�����˺��Ѿ�����");
				return "forward:/login.jsp";
			}
		}
	}
	
	/**  
	 * @Title: checkUserName
	 * @Description:����û����Ƿ����
	 * @author �ι�ΰ
	 * @param username  
	 * @throws IOException 
	 * @date 2018��11��27������2:29:43
	 */
	@RequestMapping("/checkUserName")
	public void checkUserName(String username,HttpServletResponse response) throws IOException{
		int flag = userBiz.checkUserName(username);
		response.getWriter().print(flag);
		
		
	}
	//ע�� 
	@RequestMapping("/regist")
	public String regist(UserEntity user,HttpServletRequest request){
		userBiz.regist(user);
		if(user.getUserid()>0){
			request.setAttribute("msg", "ע��ɹ��������µ�¼");
			return "forward:/login.jsp";
		}else{
			return "forward:/regist.jsp";
		}
		
		
	}


}
