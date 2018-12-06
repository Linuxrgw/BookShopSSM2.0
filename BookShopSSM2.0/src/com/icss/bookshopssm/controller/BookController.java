/**  
* <p>Title: BookController.java</p>  
* <p>Description: </p>   
* <p>Company: icss.205.class</p>  
* @author 任广伟 
* @date 2018年11月27日  
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
 * @author 任广伟
 * @createTime 2018年11月27日下午6:23:49
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
	 * @Description:查看所有上架图书
	 * @author 任广伟
	 * @return  
	 * @date 2018年11月29日上午9:27:56
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
	 * @Description: 添加购物车
	 * @author 任广伟
	 * @param bookid
	 * @param userid
	 * @param response
	 * @throws IOException  
	 * @date 2018年11月29日上午9:29:02
	 */
	@RequestMapping("/addCarShop")
	public void addCarShop(int bookid,int userid,HttpServletResponse response ) throws IOException{
		 boolean flag = bookBiz.addCarShop(bookid,userid);
		 response .getWriter().print(flag);
		
	}
	/**  
	 * @Title: myCarShop
	 * @Description: 查看我的购物车
	 * @author 任广伟
	 * @param session
	 * @return  
	 * @date 2018年11月29日上午10:50:42
	 */
	@RequestMapping("/myCarShop")
	public ModelAndView myCarShop(HttpSession session){
		//从session域里面取出userid
		Integer userid = (Integer) session.getAttribute("userid");
		ModelAndView mView = new ModelAndView();
		ArrayList<CartShop>cList = bookBiz.myCarShop(userid);
		mView.addObject("list", cList);//传递到页面的参数
		mView.setViewName("shop_car");//跳转页面
		return mView;
		
	}
	/**  
	 * @Title: checkOut
	 * @Description:结算
	 * @author 任广伟
	 * @param bookids
	 * @param session
	 * @return  
	 * @date 2018年11月29日下午4:21:22
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
	 * @Description:提交订单
	 * @author 任广伟
	 * @param select
	 * @param bookid
	 * @param count
	 * @param total
	 * @param session
	 * @param request
	 * @return  
	 * @date 2018年11月30日下午3:47:50
	 */
	@RequestMapping("/submitOrder")
	public String submitOrder(Integer select, Integer[] bookid, Integer[] count, Double total, HttpSession session,
			HttpServletRequest request) {
		int flag = 0;
		String orderNum = getOrderNum(); // 获取生成的订单编号
		Integer userid = (Integer) session.getAttribute("userid");
		bookBiz.submitOrder(select, bookid, count, total, orderNum, userid); // 生成订单的操作
		flag = 1;
		request.setAttribute("flag", flag);
		return "order_success";
	}

	// 生成订单的规则
	public String getOrderNum() {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String time = df.format(date); // 把当前时间格式化成字符串
		Random random = new Random();
		int num = (int) (random.nextDouble() * (99999 - 10000 + 1) + 10000); // 生成5位的随机数
		return time + num;
	}
	
	/**  
	 * @Title: addBook
	 * @Description: 上架图书
	 * @author 任广伟
	 * @param book
	 * @param file
	 * @param session
	 * @return  
	 * @date 2018年11月30日下午3:49:15
	 */
	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public ModelAndView addBook(BookEntity book, @RequestParam(value = "imgpath1") MultipartFile file,
			HttpSession session) {
		String path = session.getServletContext().getRealPath("/upload");
		String fileName = file.getOriginalFilename(); // 获取上传文件的名字
		File targetFile = new File(path, fileName);
		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
        
		book.setImgpath(fileName);  //set文件路径
		
		System.out.println(book);
		String msg="失败";
		bookBiz.addBook(book);
		msg="成功";
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg",msg);
		mv.setViewName("back/bookadd");
		return mv;

	}
	
	

}
