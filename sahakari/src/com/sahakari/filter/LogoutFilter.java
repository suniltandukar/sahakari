package com.sahakari.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/LogoutFilter")
public class LogoutFilter implements Filter {

  
    public LogoutFilter() {
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest) request;//since request is not http so we have to convert request into http request
		HttpServletResponse res=(HttpServletResponse) response;
		
		PrintWriter out=response.getWriter();
		String uri=req.getRequestURI();
	
			//if user is not logged in redirect to same page.
			try{
			String role=(String) req.getSession().getAttribute("userDetail");
			if (role!=null){
				chain.doFilter(request, response);
			}
			else{
				out.println("No sessions available!");
			}
			}
			catch(Exception e){
				RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
				request.setAttribute("login", "Please Login First.");
				rd.forward(request,response);
				
			}}
	

	
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
