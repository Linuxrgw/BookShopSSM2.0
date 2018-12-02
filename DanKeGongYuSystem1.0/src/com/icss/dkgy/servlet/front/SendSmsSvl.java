package com.icss.dkgy.servlet.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icss.dkgy.util.GetMessageCode;

/**
 * ·¢ËÍÑéÖ¤Âë
 */
public class SendSmsSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SendSmsSvl() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phone=request.getParameter("phone");
		String code=GetMessageCode.getCode(phone); 
		System.out.println(code);
		response.getWriter().print(code);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
