package com.icss.bookshopssm.bizimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.bookshopssm.biz.UserBiz;
import com.icss.bookshopssm.dao.IUserDao;
import com.icss.bookshopssm.entity.UserEntity;

/**
*biz接口的实现类
*@author 
*/
@Service("userBiz")
@Transactional//控制事务
public class UserBizImpl implements UserBiz{

	@Autowired    //接口无法创建对象，自动注入
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * 查看所有用户信息
	 */
	public ArrayList<UserEntity> findAllUser() {
		ArrayList<UserEntity> users = userDao.findAllUser();
		return users;
	}
	/* 
	 * 登录
	 */
	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.UserBiz#login(java.lang.String, java.lang.String)
	 */
	public UserEntity login(String username, String pwd) {
		UserEntity user = userDao.login(username,pwd);
		return user;
	}
	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.UserBiz#regist(com.icss.bookshopssm.entity.UserEntity)
	 * 注册
	 */
	public void regist(UserEntity user){
		userDao.regist(user);
		
	}
	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.UserBiz#checkUserName(java.lang.String)
	 * 检查用户名是否存在
	 */
	public int checkUserName(String username) {
		UserEntity user = userDao.checkUserName(username);
		return user == null?0:1;
	}
	
	

}
