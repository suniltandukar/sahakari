package com.sahakari.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.action.AccountAction;
import com.sahakari.action.CustomerAction;
import com.sahakari.action.TransactionAction;
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateController() {
        super();
    }
	public void init(ServletConfig config) throws ServletException {
	}
	public void destroy() {
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		if(uri.endsWith("customer.update")){
			CustomerAction c=new CustomerAction();
			c.updateCustomer(request,response);
		}
		if(uri.endsWith("sharecertificate.update")){
			CustomerAction c=new CustomerAction();
			c.updateShareCertificate(request,response);
		}
		if(uri.endsWith("account.update")){
			AccountAction action=new AccountAction();
			action.updateAccount(request,response);
		}
		if(uri.endsWith("transaction.update")){
			TransactionAction ta=new TransactionAction();
			ta.updateTransaction(request,response);
		}
	}

}
