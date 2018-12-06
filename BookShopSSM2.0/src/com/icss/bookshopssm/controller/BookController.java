/**  
* <p>Title: BookController.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author �ι�ΰ 
* @date 2018��11��27��  
* @version 1.0  
*/
package com.icss.bookshopssm.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icss.bookshopssm.biz.BookBiz;
import com.icss.bookshopssm.entity.BookEntity;
import com.icss.bookshopssm.entity.CartShop;

/**  
 * @Title: BookController
 * @Description:
 * @author �ι�ΰ
 * @createTime 2018��11��27������6:23:49
 */
@Controller
public class BookController {
	
	@Resource(name="bookBiz")
	private BookBiz bookBiz;

	public BookBiz getBookBiz() {
		return bookBiz;
	}

	public void setBookBiz(BookBiz bookBiz) {
		this.bookBiz = bookBiz;
	}
	
	/**  
	 * @Title: findAllBook
	 * @Description:�鿴�����ϼ�ͼ��
	 * @author �ι�ΰ
	 * @return  
	 * @date 2018��11��29������9:27:56
	 */
	@RequestMapping("/findAllBook")
	public ModelAndView findAllBook(){
		ArrayList<BookEntity> books = bookBiz.findAllBook();
		System.out.println(books);
		ModelAndView mv = new ModelAndView();
		mv.addObject("books",books);
		mv.setViewName("main");
		return mv;
	}
	@RequestMapping("/bookDeatil")
	public ModelAndView bookDeatil(int bookid){
		BookEntity book = bookBiz.bookDeatil(bookid);
		ModelAndView mv  = new ModelAndView();
		mv.addObject("book",book);
		mv.setViewName("book_detail");
		return mv;
	}
	/**  
	 * @Title: addCarShop
	 * @Description: ��ӹ��ﳵ
	 * @author �ι�ΰ
	 * @param bookid
	 * @param userid
	 * @param response
	 * @throws IOException  
	 * @date 2018��11��29������9:29:02
	 */
	@RequestMapping("/addCarShop")
	public void addCarShop(int bookid,int userid,HttpServletResponse response ) throws IOException{
		 boolean flag = bookBiz.addCarShop(bookid,userid);
		 response .getWriter().print(flag);
		
	}
	/**  
	 * @Title: myCarShop
	 * @Description: �鿴�ҵĹ��ﳵ
	 * @author �ι�ΰ
	 * @param session
	 * @return  
	 * @date 2018��11��29������10:50:42
	 */
	@RequestMapping("/myCarShop")
	public ModelAndView myCarShop(HttpSession session){
		//��session������ȡ��userid
		Integer userid = (Integer) session.getAttribute("userid");
		ModelAndView mView = new ModelAndView();
		ArrayList<CartShop>cList = bookBiz.myCarShop(userid);
		mView.addObject("list", cList);//���ݵ�ҳ��Ĳ���
		mView.setViewName("shop_car");//��תҳ��
		return mView;
		
	}
	/**  
	 * @Title: checkOut
	 * @Description:����
	 * @author �ι�ΰ
	 * @param bookids
	 * @param session
	 * @return  
	 * @date 2018��11��29������4:21:22
	 */
	@RequestMapping("/checkOut")
	public ModelAndView checkOut(Integer[] bookids,HttpSession session){
		Integer userid = (Integer) session.getAttribute("userid");
		ModelAndView mView = new ModelAndView();
		bookBiz.checkOut(mView,bookids,userid);
		mView.setViewName("checkout");
		return mView;
	}
	/**  
	 * @Title: submitOrder
	 * @Description:�ύ����
	 * @author �ι�ΰ
	 * @param select
	 * @param bookid
	 * @param count
	 * @param total
	 * @param session
	 * @param request
	 * @return  
	 * @date 2018��11��30������3:47:50
	 */
	@RequestMapping("/submitOrder")
	public String submitOrder(Integer select, Integer[] bookid, Integer[] count, Double total, HttpSession session,
			HttpServletRequest request) {
		int flag = 0;
		String orderNum = getOrderNum(); // ��ȡ���ɵĶ������
		Integer userid = (Integer) session.getAttribute("userid");
		bookBiz.submitOrder(select, bookid, count, total, orderNum, userid); // ���ɶ����Ĳ���
		flag = 1;
		request.setAttribute("flag", flag);
		return "order_success";
	}

	// ���ɶ����Ĺ���
	public String getOrderNum() {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String time = df.format(date); // �ѵ�ǰʱ���ʽ�����ַ���
		Random random = new Random();
		int num = (int) (random.nextDouble() * (99999 - 10000 + 1) + 10000); // ����5λ�������
		return time + num;
	}
	
	/**  
	 * @Title: addBook
	 * @Description: �ϼ�ͼ��
	 * @author �ι�ΰ
	 * @param book
	 * @param file
	 * @param session
	 * @return  
	 * @date 2018��11��30������3:49:15
	 */
	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public ModelAndView addBook(BookEntity book, @RequestParam(value = "imgpath1") MultipartFile file,
			HttpSession session) {
		String path = session.getServletContext().getRealPath("/upload");
		String fileName = file.getOriginalFilename(); // ��ȡ�ϴ��ļ�������
		File targetFile = new File(path, fileName);
		// ����
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		book.setImgpath(fileName);  //set�ļ�·��
		
		System.out.println(book);
		String msg="ʧ��";
		bookBiz.addBook(book);
		msg="�ɹ�";
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg",msg);
		mv.setViewName("back/bookadd");
		return mv;

	}
	
	

}
