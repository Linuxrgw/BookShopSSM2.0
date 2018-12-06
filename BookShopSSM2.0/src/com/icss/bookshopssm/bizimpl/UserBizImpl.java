package com.icss.bookshopssm.bizimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icss.bookshopssm.biz.UserBiz;
import com.icss.bookshopssm.dao.IUserDao;
import com.icss.bookshopssm.entity.UserEntity;

/**
*biz�ӿڵ�ʵ����
*@author 
*/
@Service("userBiz")
@Transactional//��������
public class UserBizImpl implements UserBiz{

	@Autowired    //�ӿ��޷����������Զ�ע��
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * �鿴�����û���Ϣ
	 */
	public ArrayList<UserEntity> findAllUser() {
		ArrayList<UserEntity> users = userDao.findAllUser();
		return users;
	}
	/* 
	 * ��¼
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
	 * ע��
	 */
	public void regist(UserEntity user){
		userDao.regist(user);
		
	}
	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.UserBiz#checkUserName(java.lang.String)
	 * ����û����Ƿ����
	 */
	public int checkUserName(String username) {
		UserEntity user = userDao.checkUserName(username);
		return user == null?0:1;
	}
	
	

}
