package com.icss.dkgy.servlet.back;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;

/**
 * 单条删除房源信息
 */
public class DelRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomnum = request.getParameter("roomnum");
		RoomBiz biz = new RoomBiz();
		biz.delRooms(roomnum);
		request.getRequestDispatcher("BackAllRoomSvl").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
