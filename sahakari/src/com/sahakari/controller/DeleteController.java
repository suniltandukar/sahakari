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

import com.sahakari.action.AccountAction;
import com.sahakari.action.CategoryAction;
import com.sahakari.action.CustomerAction;
import com.sahakari.action.TransactionAction;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.CustomerModel;
import com.sahakari.transaction.dao.TransactionDao;
import com.sahakari.transaction.daoImpl.TransactionDaoImpl;
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
		if(uri.endsWith("account.del")){
			AccountAction action=new AccountAction();
			action.deleteAccount(request,response);
		}
		else if(uri.endsWith("customer.del")){
			CustomerAction action=new CustomerAction();
			action.deleteCustomer(request,response);
		}
		else if(uri.endsWith("sharecertificate.del")){
			CustomerAction action=new CustomerAction();
			action.deleteShareCertificate(request,response);
		}
		else if(uri.endsWith("tellertransaction.del")){
			TransactionAction action=new TransactionAction();
			action.deleteTellerTransaction(request,response);
		}
		else if(uri.endsWith("multitransaction.del")){
			TransactionAction action=new TransactionAction();
			action.deleteMultiTransaction(request,response);
		}
		else if(uri.endsWith("transaction.del")){
			TransactionAction ta=new TransactionAction();
			
			ta.deTransactionAccount(request,response);
		}
		else if(uri.endsWith("category.del")){
			CategoryAction c=new CategoryAction();
			c.deleteCategory(request,response);
		}
	}

}
