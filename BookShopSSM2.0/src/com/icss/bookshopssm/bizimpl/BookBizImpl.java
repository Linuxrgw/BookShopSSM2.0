/**  
* <p>Title: BookBizImpl.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月27日  
* @version 1.0  
*/
package com.icss.bookshopssm.bizimpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.icss.bookshopssm.biz.BookBiz;
import com.icss.bookshopssm.biz.UserBiz;
import com.icss.bookshopssm.dao.IBookDao;
import com.icss.bookshopssm.entity.BookEntity;
import com.icss.bookshopssm.entity.CartShop;
import com.icss.bookshopssm.entity.Recipient;

/**  
 * @Title: BookBizImpl
 * @Description:
 * @author 任广伟
 * @createTime 2018年11月27日下午6:23:03
 */
@Service("bookBiz")
@Transactional
public class BookBizImpl implements BookBiz{
	@Autowired
	private IBookDao bookDao;

	/**
	 * @return the bookDao
	 */
	public IBookDao getBookDao() {
		return bookDao;
	}

	/**
	 * @param bookDao the bookDao to set
	 */
	public void setBookDao(IBookDao bookDao) {
		this.bookDao = bookDao;
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#findAllBook()
	 * 查看所有的上架图书
	 */
	public ArrayList<BookEntity> findAllBook() {
			return bookDao.findAllBook();
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#bookDeatil(int)
	 * 根据id查看图书详情
	 */
	public BookEntity bookDeatil(int bookid) {
		
		return bookDao.bookDetail(bookid);
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#addCarShop(int, int)
	 * 添加购物车
	 */
	public boolean addCarShop(int bookid, int userid) {
		//1去购物车的表里面查询此图书有没有添加过
		boolean flag = false;
		CartShop cartShop = bookDao.findCartShop(bookid,userid);
		if(cartShop == null){
			//2没有添加过插入
			bookDao.insertCarShop(bookid,userid);
		}else {
			//3添加过数量加一
			bookDao.updateCartShop(bookid,userid);
			flag = true;
		}
		return flag;
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#myCarShop(java.lang.Integer)
	 * 查看我的购物车
	 */
	public ArrayList<CartShop> myCarShop(Integer userid) {
		
		return bookDao.myCarShop(userid);
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#checkOut(org.springframework.web.servlet.ModelAndView, java.lang.Integer[], java.lang.Integer)
	 * 结算
	 */
	public void checkOut(ModelAndView mView, Integer[] bookids, Integer userid) {
		//1查看要结算的图书信息
		ArrayList<CartShop> cList = bookDao.findCheckOut(userid,bookids);
		mView.addObject("list",cList);
		//2计算总金额
		double totalPrice = 0;
		for (CartShop cartShop : cList) {
			totalPrice +=cartShop.getPrice()*cartShop.getCount();
		}
		mView.addObject("total",totalPrice);
		//3查看所有收货信息
		ArrayList<Recipient> recipients = bookDao.findAllRecipent(userid);
		System.out.println(recipients);
		mView.addObject("recipients",recipients);
		
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#addBook(com.icss.bookshopssm.entity.BookEntity)
	 * 上架图书
	 */
	public void addBook(BookEntity book) {
		bookDao.addBook(book);
		
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#submitOrder(java.lang.Integer, java.lang.Integer[], java.lang.Integer[], java.lang.Double, java.lang.String, java.lang.Integer)
	 *提交订单
	 */
	public void submitOrder(Integer recipientid, Integer[] bookids, Integer[] counts, Double total, String orderNum,Integer userid) {
		//1往订单表里插入信息
		bookDao.insertOrder(orderNum, userid, recipientid, total);
		//2循环向关联表中插入数据
		for(int i = 0;i<bookids.length;i++){
			bookDao.insertOrderBook(orderNum,bookids[i],counts[i]);
		}
		//3删除购物车里面的信息
		bookDao.delCartShop(bookids,userid);
		
	}

}
