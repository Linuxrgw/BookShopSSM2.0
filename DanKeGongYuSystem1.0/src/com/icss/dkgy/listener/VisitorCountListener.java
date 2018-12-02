package com.icss.dkgy.listener;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


/**
 * Application Lifecycle Listener implementation class VisitorCountListener
 *
 */

public class VisitorCountListener implements ServletContextListener {

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		// 1.创建输入流对象（读取记事本内容）
		BufferedReader br = null;
		ServletContext application = sce.getServletContext();// 创建application对象
		Integer visitorCount = 0;
		try {
			String path = application.getRealPath("WEB-INF/classes/");
			File file = new File(path
					+ "/com/icss/flowershop/listener/visitorCount.txt");
			br = new BufferedReader(new FileReader(file));
			// 2.读取内容
			String content = br.readLine();
			visitorCount = new Integer(content);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 3.将读取的访问量存储到域对象
		application.setAttribute("visitorCount", visitorCount);
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		// 1.从域对象中获取访问量
		ServletContext application = sce.getServletContext();// 创建application对象
		Integer visitorCount = (Integer) application
				.getAttribute("visitorCount");

		// 2.将访问量写入记事本
		BufferedWriter bw = null;
		try {
			String path = application.getRealPath("WEB-INF/classes/");
			File file = new File(path
					+ "/com/icss/flowershop/listener/visitorCount.txt");
			bw = new BufferedWriter(new FileWriter(file));

			bw.write(visitorCount.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				bw.flush();
				bw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
