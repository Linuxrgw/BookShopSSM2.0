/**  
* <p>Title: BookBiz.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月27日  
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
 * @author 任广伟
 * @createTime 2018年11月27日下午6:21:13
 */
public interface BookBiz {

	/**  
	 * @Title: findAllBook
	 * @Description: 查看所有的上架图书
	 * @author 任广伟
	 * @return  
	 * @date 2018年11月27日下午7:25:36
	 */
	ArrayList<BookEntity> findAllBook();

	/**  
	 * @Title: bookDeatil
	 * @Description: 根据id查看图书详情
	 * @author 任广伟
	 * @param bookid
	 * @return  
	 * @date 2018年11月28日下午4:14:26
	 */
	BookEntity bookDeatil(int bookid);

	/**  
	 * @Title: addCarShop
	 * @Description:添加购物车
	 * @author 任广伟
	 * @param bookid
	 * @param userid
	 * @return  
	 * @date 2018年11月28日下午7:33:12
	 */
	boolean addCarShop(int bookid, int userid);

	/**  
	 * @Title: myCarShop
	 * @Description:
	 * @author 任广伟
	 * @param userid
	 * @return  
	 * @date 2018年11月29日上午9:40:27
	 */
	ArrayList<CartShop> myCarShop(Integer userid);

	/**  
	 * @Title: checkOut
	 * @Description:结算 
	 * @author 任广伟
	 * @param mView
	 * @param bookids
	 * @param userid  
	 * @date 2018年11月29日上午10:58:37
	 */
	void checkOut(ModelAndView mView, Integer[] bookids, Integer userid);

	/**  
	 * @Title: addBook
	 * @Description:上架图书
	 * @author 任广伟
	 * @param book  
	 * @date 2018年11月30日下午3:49:52
	 */
	void addBook(BookEntity book);

	/**  
	 * @Title: submitOrder
	 * @Description: 提交订单
	 * @author 任广伟
	 * @param select
	 * @param bookid
	 * @param count
	 * @param total
	 * @param orderNum
	 * @param userid  
	 * @date 2018年11月30日下午3:50:01
	 */
	void submitOrder(Integer select, Integer[] bookid, Integer[] count, Double total, String orderNum, Integer userid);

}
