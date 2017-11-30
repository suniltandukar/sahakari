package com.sahakari.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.action.CustomerAction;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.CustomerModel;
@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteController() {
        super();
    }
	public void init(ServletConfig config) throws ServletException {
	}
	public void destroy() {
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		if(uri.endsWith("customer.del")){
			
			CustomerAction action=new CustomerAction();
			action.deleteCustomer(request,response);
			
			ViewDao view=new ViewDaoImpl();
			List<CustomerModel> list=view.viewCustomerDetail();
			request.setAttribute("list", list);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_View.jsp");
			rd.forward(request, response);
			
		}
	}

}
