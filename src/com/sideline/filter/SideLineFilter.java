package com.sideline.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SideLineFilter implements Filter {
	private FilterConfig Config;
    public SideLineFilter() {

    }

    public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest requestNew = (HttpServletRequest) request;
		HttpServletResponse responseNew = (HttpServletResponse) response;
		requestNew.setCharacterEncoding("utf-8");			//编码方式过滤
	    responseNew.setCharacterEncoding("utf-8");
		String username = (String) requestNew.getSession().getAttribute("username");
		String noPath =  Config.getInitParameter("noPath");		//获得不过滤的url
		System.out.println("28"+requestNew.getRequestURI());
		if(noPath!=null){
			
			String []str = noPath.split(";");
			for (int i = 0; i < str.length; i++) {
				if(str[i]==null||str[i]==""){
					continue;
				}
				if(requestNew.getRequestURI().indexOf(str[i])!=-1){
					
					chain.doFilter(requestNew, responseNew);
					return;						//若此时页面为不过滤页面则过滤器放行，不执行下面代码
				}
			}
		}
		if(username!=null){
			chain.doFilter(request, response);
		} else {
			System.out.println("被过滤的页面"+requestNew.getRequestURI());
			responseNew.sendRedirect("index.jsp");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		Config = fConfig;
	}

}
