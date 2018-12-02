package com.icss.dkgy.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class CharacterFilter
 */
public class CharacterFilter implements Filter {

    public CharacterFilter() {
        
    }
    //该方法在容器销毁过滤器对象前被调用
	public void destroy() {
	
	}
    
	//过滤器拦截的业务处理方法
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 ((HttpServletRequest)request).setCharacterEncoding("utf-8");  //请求参数编码转换
		 ((HttpServletResponse)response).setContentType("text/html;charset=utf-8");  //响应参数的编码转换
		
		//该方法可以将当前的请求和响应传递到过滤链上的下一个资源，可能是下一个过滤器，也可能是目标资源。
		chain.doFilter(request, response);
	}
     
	//初始化方法，在服务器启动时候执行
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
