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
import javax.servlet.http.HttpSession;

import com.sahakari.dao.LoginDao;
import com.sahakari.daoimpl.LoginDaoImpl;
import com.sahakari.model.UserModel;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/LoginFilter")
public class LoginFilter implements Filter {

    public LoginFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		/*HttpServletRequest req=(HttpServletRequest)request;
		HttpSession session=req.getSession();
		
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		if(userDetail==null){*/
		
		UserModel u=new UserModel();
		u.setStaffCode(request.getParameter("staffCode"));
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		LoginDao l=new LoginDaoImpl();
		boolean status=l.checkuser(u);
		if(status){
		chain.doFilter(request, response);
		}
		else{
			request.setAttribute("msg", "Invalid Login Credentials!");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
	
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
