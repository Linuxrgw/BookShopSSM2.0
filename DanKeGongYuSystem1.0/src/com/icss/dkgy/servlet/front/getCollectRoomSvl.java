package com.icss.dkgy.servlet.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.entity.RoomEntity;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class getCollectRoomSvl
 * 获取用户收藏的房源信息
 */
public class getCollectRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public getCollectRoomSvl() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = (String)request.getSession().getAttribute("phone");
		System.out.println("phone"+phone);
		RoomBiz biz = new RoomBiz();
		ArrayList<RoomEntity> rooms = biz.findCollectRoom(phone);
		//把集合转换成json数组--ajax方式请求，返回json数据类型
		JSONArray json = JSONArray.fromObject(rooms);
		PrintWriter out = response.getWriter();
		out.print(json);
		System.out.println("123456"+json);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
