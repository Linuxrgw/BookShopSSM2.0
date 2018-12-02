package com.icss.dkgy.servlet.back;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.entity.RoomEntity;
import com.icss.dkgy.util.ResultPage;
import com.icss.dkgy.biz.RoomBiz;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class AllRoomSvl
 */
public class BackAllRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int current = 1;//当前页
		String curr = request.getParameter("current");//从页面接受到的当前页
		if(curr!=null && !"".equals(curr)){
			current = Integer.parseInt(curr);
		}
		ResultPage<RoomEntity> page = new ResultPage<RoomEntity>();
		page.setCurrentPage(current);//把当前页存储在工具类中
		RoomBiz biz = new RoomBiz();
		biz.getPageInfo(page);
		request.setAttribute("page", page);
		System.out.println(page);
		request.getRequestDispatcher("house_list.jsp").forward(request, response);
		

		//把集合转换成json数组--ajax方式请求，返回json数据类型
//		JSONArray json = JSONArray.fromObject(page.getList());
//		JSONObject obj = new JSONObject();
//		obj.accumulate("totalPage", page.getTotalPage());
//		obj.accumulate("totalCount", page.getTotalCount());
//		obj.accumulate("currentPage", page.getCurrentPage());
//		obj.accumulate("books", json);
//		PrintWriter out = response.getWriter();
//		out.print(obj);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
