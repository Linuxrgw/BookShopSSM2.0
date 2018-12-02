/**  
* <p>Title: UserBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年10月28日  
* @version 1.0  
*/
package com.icss.dkgy.biz;

import java.util.ArrayList;

import com.icss.dkgy.dao.UserDao;
import com.icss.dkgy.entity.AdminEntity;
import com.icss.dkgy.entity.OwnerEntity;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.entity.UserEntity;
import com.icss.dkgy.util.ResultPage;

/**  
 * @Title: UserBiz
 * @Description:
 * @author 任广伟
 * @createTime 2018年10月28日下午3:07:51
 */
public class UserBiz {
    UserDao dao = new UserDao();
	

	/**
	 * @param username
	 * @return
	 */
	//修改资料
	public boolean updateInfo(String username,String phone,String sex) {
		boolean flag = false;
		try {
			flag = dao.updateInfo(username,phone,sex);		
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}

		
		return flag;
	}

	/**
	 * 登录
	 */
	public boolean login(String phone) {
		UserEntity userEntity = null;
		boolean flag = false;
		try {
			userEntity = dao.login(phone);
			if(userEntity == null){
				 dao.regist(phone);			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		return flag;
	}

	/**
	 * 管理员登录
	 */
	public AdminEntity adminLogin(String name, String pwd) {
		AdminEntity admin = null;
		try {
			admin = dao.adminLogin(name,pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			dao.closeConnection();
		}
		
		return admin;
	}

	/**
	 *分页后台查询所有用户信息
	 */
	public void getPageInfoU(ResultPage<UserEntity> page) {
		try {
			 //1.获取每页展示的数据：每页展示的条数   起始条数   1-10    2  11-20
			int pagesize = 3; //每页显示的条数
			int startPage = (page.getCurrentPage()-1)*pagesize;   //起始条数的规律  （当前页-1）*每页显示条数
			//查询分页数据,并且把数据set到page对象中
			ArrayList<UserEntity> users = dao.getUserInfo(startPage,pagesize);
			page.setList(users);
			
			//2.总条数，并且把数据set到page对象中
			int totalCount = dao.selectUserCount(); 
			page.setTotalCount(totalCount);
			
			//3.计算总页数：计算规律：总条数%每页显示条数==0？总条数/每页显示条数:总条数/每页显示条数+1
			int totalPage =  totalCount%pagesize==0?totalCount/pagesize:totalCount/pagesize+1;
			page.setTotalPage(totalPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dao.closeConnection();
		}
		
	}

	/**
	 * @param page
	 */
	public void getPageInfoO(ResultPage<OwnerEntity> page) {
		try {
			 //1.获取每页展示的数据：每页展示的条数   起始条数   1-10    2  11-20
			int pagesize = 3; //每页显示的条数
			int startPage = (page.getCurrentPage()-1)*pagesize;   //起始条数的规律  （当前页-1）*每页显示条数
			//查询分页数据,并且把数据set到page对象中
			ArrayList<OwnerEntity> users = dao.getOwnerInfo(startPage,pagesize);
			page.setList(users);
			
			//2.总条数，并且把数据set到page对象中
			int totalCount = dao.selectCount(); 
			page.setTotalCount(totalCount);
			
			//3.计算总页数：计算规律：总条数%每页显示条数==0？总条数/每页显示条数:总条数/每页显示条数+1
			int totalPage =  totalCount%pagesize==0?totalCount/pagesize:totalCount/pagesize+1;
			page.setTotalPage(totalPage);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dao.closeConnection();
		}
		
	}

}
