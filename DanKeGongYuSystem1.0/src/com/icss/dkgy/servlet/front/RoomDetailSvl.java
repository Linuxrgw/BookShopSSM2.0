package com.icss.dkgy.servlet.front;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.entity.RoomEntity;

/**
 * Servlet implementation class RoomDetailSvl
 * 房屋详情
 */
public class RoomDetailSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RoomDetailSvl() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomid = request.getParameter("roomid");//根据页面roomid查询
		System.out.println(roomid+"roomid");
		RoomBiz biz = new RoomBiz(); //创建biz对象
		ArrayList<RoomEntity> rooms = biz.findRoomDetail(Integer.parseInt(roomid));
		System.out.println(rooms+"roomDetails");
		request.setAttribute("rooms", rooms);
		request.getRequestDispatcher("roomdetail.jsp").forward(request, response);;
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
