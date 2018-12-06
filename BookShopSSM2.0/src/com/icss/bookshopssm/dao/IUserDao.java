/**  
* <p>Title: IUserDao.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月22日  
* @version 1.0  
*/
package com.icss.bookshopssm.dao;

import java.util.ArrayList;

import com.icss.bookshopssm.entity.UserEntity;

/**  
 * @Title: IUserDao
 * @Description:查看所有用户的方法 
 * @author 任广伟
 * @createTime 2018年11月22日下午2:33:41
 */
public interface IUserDao {
	ArrayList<UserEntity> findAllUser();

	/**  
	 * @Title: loginuser
	 * @Description:
	 * @author 任广伟
	 * @return  
	 * @date 2018年11月22日下午7:43:37
	 */
	ArrayList<UserEntity> loginuser();

	/**  
	 * @Title: login
	 * @Description:
	 * @author 任广伟
	 * @param username
	 * @param pwd
	 * @return  
	 * @date 2018年11月23日上午9:49:39
	 */
	UserEntity login(String username, String pwd);

	/**  
	 * @Title: checkUserName
	 * @Description:检查用户名是否存在
	 * @author 任广伟
	 * @param username
	 * @return  
	 * @date 2018年11月27日下午2:40:26
	 */
	UserEntity checkUserName(String username);

	/**  
	 * @Title: regist
	 * @Description:注册
	 * @author 任广伟
	 * @param user  
	 * @date 2018年11月27日下午3:19:11
	 */
	void regist(UserEntity user);
}
