/**  
* <p>Title: BookBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��27��  
* @version 1.0  
*/
package com.icss.bookshopssm.biz;

import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;

import com.icss.bookshopssm.entity.BookEntity;
import com.icss.bookshopssm.entity.CartShop;

/**  
 * @Title: BookBiz
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��27������6:21:13
 */
public interface BookBiz {

	/**  
	 * @Title: findAllBook
	 * @Description: �鿴���е��ϼ�ͼ��
	 * @author �ι�ΰ
	 * @return  
	 * @date 2018��11��27������7:25:36
	 */
	ArrayList<BookEntity> findAllBook();

	/**  
	 * @Title: bookDeatil
	 * @Description: ����id�鿴ͼ������
	 * @author �ι�ΰ
	 * @param bookid
	 * @return  
	 * @date 2018��11��28������4:14:26
	 */
	BookEntity bookDeatil(int bookid);

	/**  
	 * @Title: addCarShop
	 * @Description:��ӹ��ﳵ
	 * @author �ι�ΰ
	 * @param bookid
	 * @param userid
	 * @return  
	 * @date 2018��11��28������7:33:12
	 */
	boolean addCarShop(int bookid, int userid);

	/**  
	 * @Title: myCarShop
	 * @Description:
	 * @author �ι�ΰ
	 * @param userid
	 * @return  
	 * @date 2018��11��29������9:40:27
	 */
	ArrayList<CartShop> myCarShop(Integer userid);

	/**  
	 * @Title: checkOut
	 * @Description:���� 
	 * @author �ι�ΰ
	 * @param mView
	 * @param bookids
	 * @param userid  
	 * @date 2018��11��29������10:58:37
	 */
	void checkOut(ModelAndView mView, Integer[] bookids, Integer userid);

	/**  
	 * @Title: addBook
	 * @Description:�ϼ�ͼ��
	 * @author �ι�ΰ
	 * @param book  
	 * @date 2018��11��30������3:49:52
	 */
	void addBook(BookEntity book);

	/**  
	 * @Title: submitOrder
	 * @Description: �ύ����
	 * @author �ι�ΰ
	 * @param select
	 * @param bookid
	 * @param count
	 * @param total
	 * @param orderNum
	 * @param userid  
	 * @date 2018��11��30������3:50:01
	 */
	void submitOrder(Integer select, Integer[] bookid, Integer[] count, Double total, String orderNum, Integer userid);

}
