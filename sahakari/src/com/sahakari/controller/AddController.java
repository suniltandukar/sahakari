package com.sahakari.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.action.CustomerAction;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/AddController")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddController() {
        super();
    }
	public void init(ServletConfig config) throws ServletException {
	}
	public void destroy() {
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		if(uri.endsWith("customer.add")){
			CustomerAction c=new CustomerAction();
			int status=0;
			String msg="";
			try {
				
				status=c.addcustomerdetail(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(status>0){
				msg="Successful !";
			}
			else{
				msg="Failed !";
			}
			request.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_Form.jsp");
			rd.forward(request, response);
		}
	}

}
