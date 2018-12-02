package com.icss.dkgy.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 访问权限的过滤器
 */
public class LoginFilter implements Filter {

    public LoginFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();
		String username = (String)session.getAttribute("username");
		if (username==null||"".equals(username)) {
			req.setAttribute("msg", "请先登入");
			req.getRequestDispatcher("../login.jsp").forward(request, response);
		}
		//该方法可以将当前的请求和响应传递到过滤链上的下一个资源，可能是下一个过滤器，也可能是目标资源。
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
