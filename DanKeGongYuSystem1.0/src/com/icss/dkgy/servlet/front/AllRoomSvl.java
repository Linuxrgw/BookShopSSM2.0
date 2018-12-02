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
 * Servlet implementation class AllRoomSvl
 */
public class AllRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RoomBiz biz = new RoomBiz();
		ArrayList<RoomEntity> rooms = biz.findAllRoom();//����biz�㣬�õ������ϼ�ͼ�����Ϣ
		request.setAttribute("rooms", rooms);
//	    for (RoomEntity roomEntity : rooms) {
//			System.out.println(roomEntity);
//		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}