package com.icss.dkgy.servlet.back;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.biz.RoomBiz;

/**
 * Servlet implementation class DelRoomSvl
 */
public class DelRoomsSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] roomnums = request.getParameterValues("roomnums");
		RoomBiz biz = new RoomBiz();
		for (String string : roomnums) {
			System.out.println(string);
		}
		int flag = biz.delRooms(roomnums);
		response.getWriter().println(flag);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
