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
import com.sahakari.action.BranchAction;
import com.sahakari.action.CategoryAction;
import com.sahakari.action.CustomerAction;
import com.sahakari.action.EMICalculator;
import com.sahakari.action.LimitAccount;
import com.sahakari.action.LoanAction;
import com.sahakari.action.TransactionAction;
import com.sahakari.model.EMImodel;
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
		/*if(uri.endsWith("customer.add")){
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
		}*/
		if(uri.endsWith("account.add")){
			AccountAction a=new AccountAction();
			a.addAccount(request,response);
		}
		if(uri.endsWith("customer.add")){
			CustomerAction c=new CustomerAction();
			c.addCustomer(request,response);
		}
		if(uri.endsWith("multitransaction.add"))
		{
			TransactionAction action=new TransactionAction();
			action.addmultiTransaction(request,response);
		}
		if(uri.endsWith("shareCertificate.add")){
			CustomerAction c=new CustomerAction();
			c.addShareCertificate(request,response);
		}
	
		if(uri.endsWith("transaction.add")){
			TransactionAction ta=new TransactionAction();
			ta.addTransaction(request,response);
		}
		if(uri.endsWith("teller.add")){
			TransactionAction ta=new TransactionAction();
			ta.addTellerTransaction(request,response);
		}
		if(uri.endsWith("calculate.add"))
		{
			
			EMICalculator action=new EMICalculator();
			List<EMImodel> list=action.calculate(request,response);
			request.setAttribute("list", list);
			System.out.println("reacherd");
			RequestDispatcher rd=request.getRequestDispatcher("ShowEmi.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		
		}
		if(uri.endsWith("category.add")){
			CategoryAction ca=new CategoryAction();
			ca.addCategory(request,response);
		}
		if(uri.endsWith("branch.add")){
			BranchAction b=new BranchAction();
			b.addBranch(request,response);
		}
		
		if(uri.endsWith("loan.add"))
		{
			LoanAction laction=new LoanAction();
			laction.addLoan(request,response);
		}
		if(uri.endsWith("limit.add"))
		{
			LimitAccount laccount=new LimitAccount();
			laccount.addLimit(request,response);
		}
		else if(uri.endsWith("updateLoan.add"))
		{
			LoanAction laction=new LoanAction();
			laction.updateLoan(request,response);
		}
		else if(uri.endsWith("customerStatus.add"))
		{
			CustomerAction action=new CustomerAction();
			action.addCustomerStatus(request,response);
		}
		else if(uri.endsWith("customerType.add"))
		{
			CustomerAction action=new CustomerAction();
			action.addCustomerType(request,response);
		}
		else if(uri.endsWith("customerAgent.add"))
		{
			CustomerAction action =new CustomerAction();
			action.addCustomerAgent(request,response);
		}
	}

}
