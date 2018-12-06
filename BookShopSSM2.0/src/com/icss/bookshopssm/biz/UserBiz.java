/**  
* <p>Title: UserBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��22��  
* @version 1.0  
*/
package com.icss.bookshopssm.biz;

import java.util.ArrayList;

import com.icss.bookshopssm.entity.UserEntity;

/**  
 * @Title: UserBiz
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��22������2:25:11
 */
public interface UserBiz {
	ArrayList<UserEntity> findAllUser();

	

	/**  
	 * @Title: login
	 * @Description:
	 * @author �ι�ΰ
	 * @param username
	 * @param pwd
	 * @return  
	 * @date 2018��11��23������9:46:16
	 */
	UserEntity login(String username, String pwd);



	/**  
	 * @Title: regist
	 * @Description:ע��
	 * @author �ι�ΰ
	 * @param user  
	 * @date 2018��11��23������10:55:08
	 */
	void regist(UserEntity user);



	/**  
	 * @Title: checkUserName
	 * @Description:����û����Ƿ����
	 * @author �ι�ΰ
	 * @param username  
	 * @return 
	 * @date 2018��11��23������11:03:37
	 */
	int checkUserName(String username);
}
