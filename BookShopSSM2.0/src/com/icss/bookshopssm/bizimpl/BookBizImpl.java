/**  
* <p>Title: BookBizImpl.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��27��  
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
 * @author �ι�ΰ
 * @createTime 2018��11��27������6:23:03
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
	 * �鿴���е��ϼ�ͼ��
	 */
	public ArrayList<BookEntity> findAllBook() {
			return bookDao.findAllBook();
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#bookDeatil(int)
	 * ����id�鿴ͼ������
	 */
	public BookEntity bookDeatil(int bookid) {
		
		return bookDao.bookDetail(bookid);
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#addCarShop(int, int)
	 * ��ӹ��ﳵ
	 */
	public boolean addCarShop(int bookid, int userid) {
		//1ȥ���ﳵ�ı������ѯ��ͼ����û����ӹ�
		boolean flag = false;
		CartShop cartShop = bookDao.findCartShop(bookid,userid);
		if(cartShop == null){
			//2û����ӹ�����
			bookDao.insertCarShop(bookid,userid);
		}else {
			//3��ӹ�������һ
			bookDao.updateCartShop(bookid,userid);
			flag = true;
		}
		return flag;
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#myCarShop(java.lang.Integer)
	 * �鿴�ҵĹ��ﳵ
	 */
	public ArrayList<CartShop> myCarShop(Integer userid) {
		
		return bookDao.myCarShop(userid);
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#checkOut(org.springframework.web.servlet.ModelAndView, java.lang.Integer[], java.lang.Integer)
	 * ����
	 */
	public void checkOut(ModelAndView mView, Integer[] bookids, Integer userid) {
		//1�鿴Ҫ�����ͼ����Ϣ
		ArrayList<CartShop> cList = bookDao.findCheckOut(userid,bookids);
		mView.addObject("list",cList);
		//2�����ܽ��
		double totalPrice = 0;
		for (CartShop cartShop : cList) {
			totalPrice +=cartShop.getPrice()*cartShop.getCount();
		}
		mView.addObject("total",totalPrice);
		//3�鿴�����ջ���Ϣ
		ArrayList<Recipient> recipients = bookDao.findAllRecipent(userid);
		System.out.println(recipients);
		mView.addObject("recipients",recipients);
		
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#addBook(com.icss.bookshopssm.entity.BookEntity)
	 * �ϼ�ͼ��
	 */
	public void addBook(BookEntity book) {
		bookDao.addBook(book);
		
	}

	/* (non-Javadoc)
	 * @see com.icss.bookshopssm.biz.BookBiz#submitOrder(java.lang.Integer, java.lang.Integer[], java.lang.Integer[], java.lang.Double, java.lang.String, java.lang.Integer)
	 *�ύ����
	 */
	public void submitOrder(Integer recipientid, Integer[] bookids, Integer[] counts, Double total, String orderNum,Integer userid) {
		//1���������������Ϣ
		bookDao.insertOrder(orderNum, userid, recipientid, total);
		//2ѭ����������в�������
		for(int i = 0;i<bookids.length;i++){
			bookDao.insertOrderBook(orderNum,bookids[i],counts[i]);
		}
		//3ɾ�����ﳵ�������Ϣ
		bookDao.delCartShop(bookids,userid);
		
	}

}
