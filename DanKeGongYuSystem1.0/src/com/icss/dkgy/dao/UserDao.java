/**  
* <p>Title: UserDao.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年10月29日  
* @version 1.0  
*/
package com.icss.dkgy.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.icss.dkgy.entity.AdminEntity;
import com.icss.dkgy.entity.OwnerEntity;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.entity.UserEntity;

/**  
 * @Title: UserDao
 * @Description:
 * @author 任广伟
 * @createTime 2018年10月29日下午4:07:44
 */
public class UserDao extends BaseDao{

	/**
	 * 修改资料
	 * @throws Exception 
	 */
	public boolean updateInfo(String username,String phone,String sex) throws Exception {
		
		// 1.打开连接
		openConnection();
		//2.创建预编译对象
		String sql ="update user set username = ?,sex = ? where phone = ?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, username);
		pst.setString(2, sex);
		pst.setString(3, phone);
		int count = pst.executeUpdate(); // 运行
		boolean flag = false;
		if (count>0){
			flag = true;
		}
		return flag;
	}

	/**
	 * 登录
	 * @throws Exception 
	 */
	public UserEntity login(String phone) throws Exception {
		//1.打开连接
		openConnection();
		//2.创建预编译对象
		String sql = "select * from user where phone = ?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, phone);
		ResultSet rs = pst.executeQuery(); // 运行
		// 3.处理结果集
		UserEntity user = null;
		while (rs.next()) {
			user = new UserEntity();
			user.setUserid(rs.getInt("userid"));
			user.setUsername(rs.getString("username"));
			user.setPhone(rs.getString("phone"));	
			user.setSex(rs.getString("sex"));
			user.setImgpath(rs.getString("imgpath"));
			
						
		}
		

		
		return user;
	}

	/**
	 * 注册
	 * @throws Exception 
	 */
	public void regist(String phone) throws Exception {
		String sql = "INSERT INTO `user` (`phone`) VALUES (?)";
		PreparedStatement pst = this.conn.prepareStatement(sql);
		pst.setString(1, phone);
		// 3、执行操作
		pst.executeUpdate();
		
		
	}

	/**
	 * 管理员登录
	 * @throws Exception 
	 */
	public AdminEntity adminLogin(String name, String pwd) throws Exception {
		//1.打开连接
		openConnection();
		//2.创建预编译对象
		String sql ="select * from admin where ad_name=? and ad_pwd=?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, name);
		pst.setString(2, pwd);
		ResultSet rs = pst.executeQuery(); // 运行

		// 3.处理结果集
		AdminEntity admin = null;
		while (rs.next()) {
			admin = new AdminEntity();
			admin.setAd_id(rs.getInt(1));
			admin.setAd_name(rs.getString(2));
			admin.setAd_pwd(rs.getString(3));
			admin.setAd_phone(rs.getString(4));
			admin.setSex(rs.getString(5));
			admin.setImgpath(rs.getString(6));
			admin.setStatus(rs.getString(7));
		}

		return admin;
	}

	/**
	 * 分页查询所有用户信息
	 * @throws Exception 
	 */
	public ArrayList<UserEntity> getUserInfo(int startPage, int pagesize) throws Exception {
		// 1、打开连接
				openConnection();
				// 2、创建预编译对象
				String sql = "select * from user limit ?,? ";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, startPage);
				pst.setInt(2, pagesize);
				// 3、执行操作,并拿到结果集
				ResultSet rs = pst.executeQuery();
				// 4、处理结果集
				ArrayList<UserEntity> users = new ArrayList<UserEntity>(); // 创建集合对象，用来存储图书信息
				UserEntity user = null;
				while (rs.next()) {
					user = new UserEntity();
					user.setUserid(rs.getInt("userid"));
					user.setUsername(rs.getString("username"));
					user.setUserpwd(rs.getString("userpwd"));
					user.setSex(rs.getString("sex"));
					user.setPhone(rs.getString("phone"));
					user.setImgpath(rs.getString("imgpath"));
					user.setConstellation(rs.getString("constellation"));
					user.setStatus(rs.getString("status"));
					users.add(user);
				}
				return users;
	}

	/**
	 * 查询用户的总数
	 * @throws Exception 
	 */
	public int selectUserCount() throws Exception {
		// 2、创建预编译对象
		String sql = "select count(*) from user ";
		PreparedStatement pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		int totalCount=0;
		while(rs.next()){
			totalCount = rs.getInt(1);
		}
		return totalCount;
	}

	/**
	 * 分页查询所有业主信息
	 * @throws Exception 
	 */
	public ArrayList<OwnerEntity> getOwnerInfo(int startPage, int pagesize) throws Exception {
		// 1、打开连接
		openConnection();
		// 2、创建预编译对象
		String sql = "select * from owner limit ?,? ";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setInt(1, startPage);
		pst.setInt(2, pagesize);
		// 3、执行操作,并拿到结果集
		ResultSet rs = pst.executeQuery();
		// 4、处理结果集
		ArrayList<OwnerEntity> owners = new ArrayList<OwnerEntity>(); // 创建集合对象，用来存储图书信息
		OwnerEntity owner = null;
		while (rs.next()) {
			owner = new OwnerEntity();
			owner.setOwnerid(rs.getInt("ownerid"));
			owner.setOwnername(rs.getString("ownername"));
			owner.setOwnerpwd(rs.getString("ownerpwd"));
            owner.setOwnerphone(rs.getString("ownerphone"));
            owner.setOwnersex(rs.getString("ownersex"));
            owner.setAddress(rs.getString("address"));
            owner.setStatus(rs.getString("status"));
			owners.add(owner);
		}
		return owners;
}

/**
* 查询业主用户的总数
* @throws Exception 
*/
       public int selectCount() throws Exception {
            // 2、创建预编译对象
            String sql = "select count(*) from owner ";
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            int totalCount=0;
            while(rs.next()){
	           totalCount = rs.getInt(1);
            }
            return totalCount;
       }
}
