/**  
* <p>Title: IBookDao.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��27��  
* @version 1.0  
*/
package com.icss.bookshopssm.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.icss.bookshopssm.entity.BookEntity;
import com.icss.bookshopssm.entity.CartShop;
import com.icss.bookshopssm.entity.Recipient;

/**  
 * @Title: IBookDao
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��27������6:31:15
 */
public interface IBookDao {

	/**  
	 * @Title: findAllBook
	 * @Description: �鿴�����ϼ�ͼ��
	 * @author �ι�ΰ
	 * @return  
	 * @date 2018��11��27������7:41:44
	 */
	ArrayList<BookEntity> findAllBook();

	/**  
	 * @Title: bookDetail
	 * @Description:����id��ѯͼ������
	 * @author �ι�ΰ
	 * @param bookid
	 * @return  
	 * @date 2018��11��28������4:18:30
	 */
	BookEntity bookDetail(int bookid);

	/**  
	 * @Title: findCartShop
	 * @Description: ȥ���ﳵ�鿴������û����ӹ�
	 * @author �ι�ΰ
	 * @param bookid
	 * @param userid
	 * @return  
	 * @date 2018��11��28������7:44:06
	 */
	CartShop findCartShop(int bookid, int userid);

	/**  
	 * @Title: insertCarShop
	 * @Description: ����ͼ������
	 * @author �ι�ΰ
	 * @param bookid
	 * @param userid  
	 * @date 2018��11��28������7:44:11
	 */
	void insertCarShop(int bookid, int userid);

	/**  
	 * @Title: updateCartShop
	 * @Description:  ������һ
	 * @author �ι�ΰ
	 * @param bookid
	 * @param userid  
	 * @date 2018��11��28������7:44:19
	 */
	void updateCartShop(int bookid, int userid);

	/**  
	 * @Title: myCarShop
	 * @Description:�鿴�ҵĹ��ﳵ
	 * @author �ι�ΰ
	 * @param userid
	 * @return  
	 * @date 2018��11��29������9:42:46
	 */
	ArrayList<CartShop> myCarShop(Integer userid);

	/**  
	 * @Title: findCheckOut
	 * @Description:�鿴Ҫ�����ͼ����Ϣ
	 * @author �ι�ΰ
	 * @param userid
	 * @param bookids
	 * @return  
	 * @date 2018��11��29������11:16:07
	 */
	ArrayList<CartShop> findCheckOut(@Param("uid")Integer userid, @Param("bids")Integer[] bookids);

	/**  
	 * @Title: findAllRecipent
	 * @Description: �鿴�����ջ���Ϣ
	 * @author �ι�ΰ
	 * @param userid
	 * @return  
	 * @date 2018��11��29������11:16:15
	 */
	ArrayList<Recipient> findAllRecipent(Integer userid);

	/**  
	 * @Title: addBook
	 * @Description:�ϼ�ͼ��
	 * @author �ι�ΰ
	 * @param book  
	 * @date 2018��11��30������4:24:00
	 */
	void addBook(BookEntity book);

	/**  
	 * @Title: insertOrder
	 * @Description:1���������������Ϣ
	 * @author �ι�ΰ
	 * @param orderNum
	 * @param userid
	 * @param recipientid
	 * @param total  
	 * @date 2018��11��30������4:24:24
	 */
	void insertOrder(String orderNum, Integer userid, Integer recipientid, Double total);

	/**  
	 * @Title: insertOrderBook
	 * @Description: ѭ����������в�������
	 * @author �ι�ΰ
	 * @param orderNum
	 * @param integer
	 * @param integer2  
	 * @date 2018��11��30������4:24:41
	 */
	void insertOrderBook(String orderNum, Integer integer, Integer integer2);

	/**  
	 * @Title: delCartShop
	 * @Description: 3ɾ�����ﳵ�������Ϣ
	 * @author �ι�ΰ
	 * @param bookids
	 * @param userid  
	 * @date 2018��11��30������4:24:58
	 */
	void delCartShop(Integer[] bookids, Integer userid);

}
