package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sahakari.account.dao.AccountDao;
import com.sahakari.account.daoImpl.AccountDaoImpl;
import com.sahakari.model.AccountModel;
import com.sahakari.model.ShareAccountLedger;
import com.sahakari.model.UserModel;
import com.sahakari.transaction.dao.TransactionDao;
import com.sahakari.transaction.daoImpl.TransactionDaoImpl;

public class AccountAction {

	public void addAccount(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userDetail.getUsername();
		
		String pid,accountNumber, alternativeAccounId, categoryId, accountType, accountName, limitRef;
		
		String strappl="";
		strappl=request.getParameter("appl");
		
		pid=request.getParameter("pid");
		accountNumber=request.getParameter("accountNumber");
		alternativeAccounId=request.getParameter("alternativeAccounId");
		categoryId=request.getParameter("categoryId");
		accountType=request.getParameter("accountType");
		accountName=request.getParameter("accountName");
		limitRef=request.getParameter("limitRef");
		AccountModel am=new AccountModel();
		am.setPid(pid);
		am.setAccountNumber(accountNumber);
		am.setAlternativeAccounId(alternativeAccounId);
		am.setCategoryId(categoryId);
		am.setAccountType(accountType);
		am.setAccountName(accountName);
		am.setLimitRef(limitRef);
		am.setInputter(inputter);
		
		AccountDao a=new AccountDaoImpl();
		
		/*pid=a.selectpid(am);
		am.setPid(pid);
		*/
		
		boolean status=a.insertAccount(am);
		if(status){
			request.setAttribute("msg", "Account Add Successful !");
			
		}
		else{
			request.setAttribute("msg", "Account Add Failed !");
		}
		
		RequestDispatcher rd=null;
		

		
		
		if(strappl.equals("ac"))
		{
			rd=request.getRequestDispatcher("insertaccount.click");
		}
		
		
		if(strappl.equals("fin"))
		{
			rd=request.getRequestDispatcher("insertfinancialaccount.click");
		}
		
		if(strappl.equals("ln"))
		{
			request.setAttribute("accountName",am.getAccountName());
			request.setAttribute("pid", pid);
			request.setAttribute("accountNumber", am.getAccountNumber());
			rd=request.getRequestDispatcher("createLoan.click");	
		}
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
		

	public void deleteAccount(HttpServletRequest request,
			HttpServletResponse response) {
		String accountNumber=request.getParameter("id");
		AccountDao a=new AccountDaoImpl();
		boolean status=a.deleteAccount(accountNumber);
		if(status){
			request.setAttribute("msg", "Delete Successful !");
		}
		else{
			request.setAttribute("msg", "Delete Failed !");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewaccount.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void updateAccount(HttpServletRequest request,
			HttpServletResponse response) {
		
		String previousAccountNumber, pid, memberid,accountNumber, alternativeAccounId, categoryId, accountType, accountName, limitRef;
		previousAccountNumber=request.getParameter("previousAccountNumber");
		pid=request.getParameter("pid");
		accountNumber=request.getParameter("accountNumber");
		alternativeAccounId=request.getParameter("alternativeAccounId");
		categoryId=request.getParameter("categoryId");
		accountType=request.getParameter("accountType");
		accountName=request.getParameter("accountName");
		limitRef=request.getParameter("limitRef");
		AccountModel am=new AccountModel();
		am.setPreviousAccountNumber(previousAccountNumber);
		am.setPid(pid);
		am.setAccountNumber(accountNumber);
		am.setAlternativeAccounId(alternativeAccounId);
		am.setCategoryId(categoryId);
		am.setAccountType(accountType);
		am.setAccountName(accountName);
		am.setLimitRef(limitRef);
		
		AccountDao a=new AccountDaoImpl();
		
		boolean status=a.updateAccount(am);
		if(status){
			request.setAttribute("msg", "Update Successful !");
		}
		else{
			request.setAttribute("msg", "Update Failed !");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewaccount.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void addShareAccountLedger(HttpServletRequest request, HttpServletResponse response) {

		String accountNo=request.getParameter("accountNo");
		String     legacyAccountNo = request.getParameter("legacyAccountNo");
		String    pid  = request.getParameter("pid");
		String     date = request.getParameter("date");
		String    narration  = request.getParameter("narration");
		String    drQuantity  = request.getParameter("drQuantity");
		String    crQuantity  = request.getParameter("crQuantity");
		String     balanceQuantity = request.getParameter("balanceQuantity");
		String     drAmount = request.getParameter("drAmount");
		String     crAmount = request.getParameter("crAmount");
		String     balanceAmount = request.getParameter("balanceAmount");
		
		String      authorizer= request.getParameter("authorizer");
		String 		time=request.getParameter("time");
		
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		String     inputter = userDetail.getUsername();
		
		ShareAccountLedger l=new ShareAccountLedger();
		l.setAccountNo(accountNo);
		l.setLegacyAccountNo(legacyAccountNo);
		l.setPid(pid);
		l.setDate(date);
		l.setNarration(narration);
		l.setDrQuantity(drQuantity);
		l.setCrQuantity(crQuantity);
		l.setBalanceQuantity(balanceQuantity);
		l.setDrAmount(drAmount);
		l.setCrAmount(crAmount);
		l.setBalanceAmount(balanceAmount);
		l.setInputter(inputter);
		l.setAuthorizer(authorizer);
		l.setTime(time);
		
		TransactionDao dao=new TransactionDaoImpl();
		boolean status=dao.addShareAccountLedger(l);
		if(status){
			request.setAttribute("msg", "Add Successful!");
		}
		else{
			request.setAttribute("msg", "Add Successful!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("shareAccountLedger.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		

	}

}
