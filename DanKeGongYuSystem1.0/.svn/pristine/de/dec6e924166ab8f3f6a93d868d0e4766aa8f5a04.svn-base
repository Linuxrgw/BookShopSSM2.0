package com.icss.dkgy.servlet.back;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.validation.TypeInfoProvider;

import com.icss.dkgy.biz.RoomBiz;
import com.icss.dkgy.entity.RoomEntity;
import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class UpdateRoomSvl
 */
public class AddRoomSvl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SmartUpload smu = new SmartUpload();//创建对象
        smu.setCharset("utf-8");//设置编码格式，防止文件内容因包含中文出现乱码
        smu.initialize(this.getServletConfig(), request, response);//初始化组件
        try {
			smu.upload();//上传文件
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
        Files files = smu.getFiles(); //获取上传文件列表
        File file = files.getFile(0); //获取第一个文件
        
        String imgpath = "";
        //判断文件是否有内容
        if(files.getSize()>0 && file.getSize()>0){
        	try {
				file.saveAs("upload/"+file.getFileName()); //保存文件（路径）
			} catch (SmartUploadException e) {
				e.printStackTrace();
			}
        	imgpath =file.getFileName();
        }
        String address = smu.getRequest().getParameter("address");
        String comment = smu.getRequest().getParameter("comment");
        String rarea = smu.getRequest().getParameter("area");
        String type = smu.getRequest().getParameter("type");
        String subway = smu.getRequest().getParameter("subway");
        String date = smu.getRequest().getParameter("rentdate");
        String sta = smu.getRequest().getParameter("sta");
        String roomprice = smu.getRequest().getParameter("price");
        String owner = smu.getRequest().getParameter("ownerid");
    	  //时间转换 String -- date
    	  Timestamp rentdate = null;
    	  if(date != null && !"".equals(date)){
    		  //转换格式
    		  SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-DD");
    		  try {
    			  //String -- date  date -- Timestamp
    			  rentdate = new Timestamp(df.parse(date).getTime());
  		} catch (ParseException e) {
  			// TODO Auto-generated catch block
  			e.printStackTrace();
  		}
    	  }
    	  //状态
    	  String status = "";
    	  if("建成待租".equals(sta)){
    		  status = "0";
    	  }else{
    		  status = "1";
    	  }
    	  
    	  //面积、价格转换String -- double
    	  double area = 0;
    	  if(rarea != null && !"".equals(rarea)){
    		  area = Double.parseDouble(rarea);
    	  }
    	  
    	  double price = 0;
    	  if(roomprice != null && !"".equals(roomprice)){
    		  price = Double.parseDouble(roomprice);
    	  }
    	  
    	  //业主id转换String -- int
    	  int ownerid = 0;
    	  if(owner != null && !"".equals(owner)){
    		  ownerid = Integer.parseInt(owner);
    	  }
    	  int typeid = 0;
    	  if("一室一厅一卫".equals(type)){
    		  typeid = 1;
    	  }else if("两室一厅一卫".equals(type)){
    		  typeid = 2;
    	  }else{
    		  typeid = 3;
    	  }
    	  RoomEntity room = new RoomEntity();
    	  room.setAddress(address);
    	  room.setArea(area);
    	  room.setComment(comment);
    	  room.setTypeid(typeid);
    	  room.setSubway(subway);
    	  room.setRentdate(rentdate);
    	  room.setStatus(status);
    	  room.setPrice(price);
    	  room.setImgpath(imgpath);
    	  room.setOwnerid(ownerid);
    	  RoomBiz biz = new RoomBiz();
    	  int c = biz.addRoom(room);
    	  boolean flag = false;
    	  if(c>0){
    		  flag=true;
    	  }
          request.setAttribute("flag", flag);
          request.getRequestDispatcher("house_add.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
