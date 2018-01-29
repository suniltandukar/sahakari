package com.sahakari.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.sahakari.user.dao.UserDao;
import com.sahakari.user.daoImpl.UserDaoImpl;

@WebFilter("/UserFilter")
public class UserFilter implements Filter {

    public UserFilter() {
    }
	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		String uri=req.getRequestURI();
			UserDao user=new UserDaoImpl();
			boolean status=user.checkUserGroup(request.getParameter("groupname"));
			if(status){
				request.setAttribute("msg", "User group already exists!");
				request.getRequestDispatcher("addusergroup.user").forward(request, response);
			}
			else{
			chain.doFilter(request, response);
			}
		
		
		
	}
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
