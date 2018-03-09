package com.sahakari.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.action.LoginAction;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.ViewDaoImpl;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		if(uri.endsWith("login.log")){
			ViewDao v=new ViewDaoImpl();
			System.out.println(v.convertToJSON());
			LoginAction l=new LoginAction();
			l.userlogin(request,response);
		}
		if(uri.endsWith("logout.log")){
			LoginAction l=new LoginAction();
			l.userlogout(request,response);
		}
	}

}
