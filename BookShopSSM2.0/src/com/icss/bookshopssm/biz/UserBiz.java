/**  
* <p>Title: UserBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月22日  
* @version 1.0  
*/
package com.icss.bookshopssm.biz;

import java.util.ArrayList;

import com.icss.bookshopssm.entity.UserEntity;

/**  
 * @Title: UserBiz
 * @Description:
 * @author 任广伟
 * @createTime 2018年11月22日下午2:25:11
 */
public interface UserBiz {
	ArrayList<UserEntity> findAllUser();

	

	/**  
	 * @Title: login
	 * @Description:
	 * @author 任广伟
	 * @param username
	 * @param pwd
	 * @return  
	 * @date 2018年11月23日上午9:46:16
	 */
	UserEntity login(String username, String pwd);



	/**  
	 * @Title: regist
	 * @Description:注册
	 * @author 任广伟
	 * @param user  
	 * @date 2018年11月23日上午10:55:08
	 */
	void regist(UserEntity user);



	/**  
	 * @Title: checkUserName
	 * @Description:检查用户名是否存在
	 * @author 任广伟
	 * @param username  
	 * @return 
	 * @date 2018年11月23日上午11:03:37
	 */
	int checkUserName(String username);
}
