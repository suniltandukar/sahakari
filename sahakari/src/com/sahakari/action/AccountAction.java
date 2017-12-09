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
import com.sahakari.model.UserModel;

public class AccountAction {

	public void addAccount(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userDetail.getUsername();
		
		String pid, memberid,accountNumber, alternativeAccounId, categoryId, accountType, accountName, limitRef;
		memberid=request.getParameter("memberid");
		accountNumber=request.getParameter("accountNumber");
		alternativeAccounId=request.getParameter("alternativeAccounId");
		categoryId=request.getParameter("categoryId");
		accountType=request.getParameter("accountType");
		accountName=request.getParameter("accountName");
		limitRef=request.getParameter("limitRef");
		AccountModel am=new AccountModel();
		am.setMemberid(memberid);
		am.setAccountNumber(accountNumber);
		am.setAlternativeAccounId(alternativeAccounId);
		am.setCategoryId(categoryId);
		am.setAccountType(accountType);
		am.setAccountName(accountName);
		am.setLimitRef(limitRef);
		am.setInputter(inputter);
		
		AccountDao a=new AccountDaoImpl();
		
		pid=a.selectpid(am);
		am.setPid(pid);
		
		boolean status=a.insertAccount(am);
		if(status){
			request.setAttribute("msg", "Account Add Successful !");
		}
		else{
			request.setAttribute("msg", "Account Add Failed !");
		}
		RequestDispatcher rd=request.getRequestDispatcher("insertaccount.click");
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

}
