/**  
* <p>Title: IBookDao.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月27日  
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
 * @author 任广伟
 * @createTime 2018年11月27日下午6:31:15
 */
public interface IBookDao {

	/**  
	 * @Title: findAllBook
	 * @Description: 查看所有上架图书
	 * @author 任广伟
	 * @return  
	 * @date 2018年11月27日下午7:41:44
	 */
	ArrayList<BookEntity> findAllBook();

	/**  
	 * @Title: bookDetail
	 * @Description:根据id查询图书详情
	 * @author 任广伟
	 * @param bookid
	 * @return  
	 * @date 2018年11月28日下午4:18:30
	 */
	BookEntity bookDetail(int bookid);

	/**  
	 * @Title: findCartShop
	 * @Description: 去购物车查看该书有没有添加过
	 * @author 任广伟
	 * @param bookid
	 * @param userid
	 * @return  
	 * @date 2018年11月28日下午7:44:06
	 */
	CartShop findCartShop(int bookid, int userid);

	/**  
	 * @Title: insertCarShop
	 * @Description: 插入图书数据
	 * @author 任广伟
	 * @param bookid
	 * @param userid  
	 * @date 2018年11月28日下午7:44:11
	 */
	void insertCarShop(int bookid, int userid);

	/**  
	 * @Title: updateCartShop
	 * @Description:  数量加一
	 * @author 任广伟
	 * @param bookid
	 * @param userid  
	 * @date 2018年11月28日下午7:44:19
	 */
	void updateCartShop(int bookid, int userid);

	/**  
	 * @Title: myCarShop
	 * @Description:查看我的购物车
	 * @author 任广伟
	 * @param userid
	 * @return  
	 * @date 2018年11月29日上午9:42:46
	 */
	ArrayList<CartShop> myCarShop(Integer userid);

	/**  
	 * @Title: findCheckOut
	 * @Description:查看要结算的图书信息
	 * @author 任广伟
	 * @param userid
	 * @param bookids
	 * @return  
	 * @date 2018年11月29日上午11:16:07
	 */
	ArrayList<CartShop> findCheckOut(@Param("uid")Integer userid, @Param("bids")Integer[] bookids);

	/**  
	 * @Title: findAllRecipent
	 * @Description: 查看所有收货信息
	 * @author 任广伟
	 * @param userid
	 * @return  
	 * @date 2018年11月29日上午11:16:15
	 */
	ArrayList<Recipient> findAllRecipent(Integer userid);

	/**  
	 * @Title: addBook
	 * @Description:上架图书
	 * @author 任广伟
	 * @param book  
	 * @date 2018年11月30日下午4:24:00
	 */
	void addBook(BookEntity book);

	/**  
	 * @Title: insertOrder
	 * @Description:1往订单表里插入信息
	 * @author 任广伟
	 * @param orderNum
	 * @param userid
	 * @param recipientid
	 * @param total  
	 * @date 2018年11月30日下午4:24:24
	 */
	void insertOrder(String orderNum, Integer userid, Integer recipientid, Double total);

	/**  
	 * @Title: insertOrderBook
	 * @Description: 循环向关联表中插入数据
	 * @author 任广伟
	 * @param orderNum
	 * @param integer
	 * @param integer2  
	 * @date 2018年11月30日下午4:24:41
	 */
	void insertOrderBook(String orderNum, Integer integer, Integer integer2);

	/**  
	 * @Title: delCartShop
	 * @Description: 3删除购物车里面的信息
	 * @author 任广伟
	 * @param bookids
	 * @param userid  
	 * @date 2018年11月30日下午4:24:58
	 */
	void delCartShop(Integer[] bookids, Integer userid);

}
