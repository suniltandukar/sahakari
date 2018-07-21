package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sahakari.model.ShareAccountLedger;
import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;
import com.sahakari.model.UserModel;
import com.sahakari.transaction.dao.TransactionDao;
import com.sahakari.transaction.daoImpl.TransactionDaoImpl;

public class TransactionAction {

	public void addTransaction(HttpServletRequest request,
			HttpServletResponse response) {
		String Id, refNo, transactionType, valueDate,bookingDate,debitAccountNumber,debitCurrency,debitNarrative,creditAccountNumber,
		creditCurrency,creditNarative,amount,commissionCode,commissionType,commissionAmount,chequeNumber,processingDate,Override,
		recordStatus,branchCode,inputter;

		TransactionModel tm=new TransactionModel();
		Id=request.getParameter("Id");
		refNo=request.getParameter("refNo");
		transactionType=request.getParameter("transactionType");
		valueDate=request.getParameter("valueDate");
		bookingDate=request.getParameter("bookingDate");
		debitAccountNumber=request.getParameter("debitAccountNumber");
		debitCurrency=request.getParameter("debitCurrency");
		debitNarrative=request.getParameter("debitNarrative");
		creditAccountNumber=request.getParameter("creditAccountNumber");
		creditCurrency=request.getParameter("creditCurrency");
		creditNarative=request.getParameter("creditNarative");
		amount=request.getParameter("amount");
		commissionCode=request.getParameter("commissionCode");
		commissionType=request.getParameter("commissionType");
		commissionAmount=request.getParameter("commissionAmount");
		chequeNumber=request.getParameter("chequeNumber");
		Override=request.getParameter("Override");
		recordStatus=request.getParameter("recordStatus");
		branchCode=request.getParameter("branchCode");
		
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		
		inputter=userDetail.getUsername();
		
		tm.setAmount(amount);
		tm.setBookingDate(bookingDate);
		tm.setBranchCode(branchCode);
		tm.setChequeNumber(chequeNumber);
		tm.setChequeNumber(chequeNumber);
		tm.setCommissionAmount(commissionAmount);
		tm.setCommissionCode(commissionCode);
		tm.setCommissionType(commissionType);
		tm.setCreditAccountNumber(creditAccountNumber);
		tm.setCreditCurrency(creditCurrency);
		tm.setCreditNarative(creditNarative);
		tm.setDebitAccountNumber(debitAccountNumber);
		tm.setDebitCurrency(debitCurrency);
		tm.setDebitNarrative(debitNarrative);
		tm.setId(Id);
		tm.setInputter(inputter);
		tm.setOverride(Override);
		tm.setRecordStatus(recordStatus);
		tm.setRefNo(refNo);
		tm.setTransactionType(transactionType);
		tm.setValueDate(valueDate);
		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.addTransaction(tm);
		if(status){
			request.setAttribute("msg", "Transaction Add Successful!");
		}
		else{
			request.setAttribute("msg", "Transaction Add Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("inserttransaction.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		
	}

	public void deTransactionAccount(HttpServletRequest request,
			HttpServletResponse response) {
		String id=request.getParameter("id");
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.addTransaction(id);
		if(status){
			request.setAttribute("msg", "Transaction Delete Successful!");
		}
		else{
			request.setAttribute("msg", "Transaction Delete Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewtransaction.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	public void updateTransaction(HttpServletRequest request,
			HttpServletResponse response) {
		String Id, refNo, transactionType, valueDate,bookingDate,debitAccountNumber,debitCurrency,debitNarrative,creditAccountNumber,
		creditCurrency,creditNarative,amount,commissionCode,commissionType,commissionAmount,chequeNumber,processingDate,Override,
		recordStatus,branchCode;

		TransactionModel tm=new TransactionModel();
		Id=request.getParameter("Id");
		refNo=request.getParameter("refNo");
		transactionType=request.getParameter("transactionType");
		valueDate=request.getParameter("valueDate");
		bookingDate=request.getParameter("bookingDate");
		debitAccountNumber=request.getParameter("debitAccountNumber");
		debitCurrency=request.getParameter("debitCurrency");
		debitNarrative=request.getParameter("debitNarrative");
		creditAccountNumber=request.getParameter("creditAccountNumber");
		creditCurrency=request.getParameter("creditCurrency");
		creditNarative=request.getParameter("creditNarative");
		amount=request.getParameter("amount");
		commissionCode=request.getParameter("commissionCode");
		commissionType=request.getParameter("commissionType");
		commissionAmount=request.getParameter("commissionAmount");
		chequeNumber=request.getParameter("chequeNumber");
		processingDate=request.getParameter("processingDate");
		Override=request.getParameter("Override");
		recordStatus=request.getParameter("recordStatus");
		branchCode=request.getParameter("branchCode");
		
		tm.setAmount(amount);
		tm.setBookingDate(bookingDate);
		tm.setBranchCode(branchCode);
		tm.setChequeNumber(chequeNumber);
		tm.setChequeNumber(chequeNumber);
		tm.setCommissionAmount(commissionAmount);
		tm.setCommissionCode(commissionCode);
		tm.setCommissionType(commissionType);
		tm.setCreditAccountNumber(creditAccountNumber);
		tm.setCreditCurrency(creditCurrency);
		tm.setCreditNarative(creditNarative);
		tm.setDebitAccountNumber(debitAccountNumber);
		tm.setDebitCurrency(debitCurrency);
		tm.setDebitNarrative(debitNarrative);
		tm.setId(Id);
		tm.setOverride(Override);
		tm.setProcessingDate(processingDate);
		tm.setRecordStatus(recordStatus);
		tm.setRefNo(refNo);
		tm.setTransactionType(transactionType);
		tm.setValueDate(valueDate);
		String previousid=request.getParameter("previousid");
		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.updateTransaction(tm,previousid);
		if(status){
			request.setAttribute("msg", "Transaction Update Successful!");
		}
		else{
			request.setAttribute("msg", "Transaction Update Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("inserttransaction.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}


	public void addTellerTransaction(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession(true);
		
		String 
		transactionid=request.getParameter("transactionid"),
		bookingdate=request.getParameter("bookingdate"),
		valuedate=request.getParameter("valuedate"),
		debitaccoutnumber=request.getParameter("debitaccountnumber"),
		creditaccountnumber=request.getParameter("creditaccountnumber"),
		narrative=request.getParameter("narrative"),
		chequenumber=request.getParameter("chequenumber"),
		amount=request.getParameter("amount"),
		transactioncode=request.getParameter("transactioncode"),
		branchid=(String)session.getAttribute("currentBranchcode"),
		authorizer="0";
		
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userdetail.getUsername();
		
		TellerTransactionModel tm=new TellerTransactionModel();
		tm.setTransactionid(transactionid);
		tm.setBookingdate(bookingdate);
		tm.setValuedate(valuedate);
		tm.setDebitaccountnumber(debitaccoutnumber);
		tm.setCreditaccountnumber(creditaccountnumber);
		tm.setNarrative(narrative);
		tm.setAmount(amount);
		tm.setTransactioncode(transactioncode);
		tm.setInputter(inputter);
		tm.setAuthorizer(authorizer);
		tm.setChequenumber(chequenumber);
		tm.setBranchid(branchid);
		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.insertTellerTransaction(tm);
		if(status){
			request.setAttribute("msg", "Add Successful!");
		}
		else{
			request.setAttribute("msg", "Add Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("insertTeller.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		
	}

	public void addmultiTransaction(HttpServletRequest request, HttpServletResponse response) {
		String 
		transactionid=request.getParameter("transactionid"),
		transactionno=request.getParameter("transactionno"),
		bookingdate=request.getParameter("bookingdate"),
		valuedate=request.getParameter("valuedate"),
		processdate=request.getParameter("processdate"),
		accountnumber=request.getParameter("accountnumber"),
		drcr=request.getParameter("drcr"),
		narrative=request.getParameter("narrative"),
		chequenumber=request.getParameter("chequenumber"),
		amount=request.getParameter("amount"),
		transactioncode=request.getParameter("transactioncode"),
		authorizer="0";
		
		
		HttpSession session =request.getSession();
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userdetail.getUsername();
		
		TellerTransactionModel tm=new TellerTransactionModel();
		tm.setTransactionid(transactionid);
		tm.setTransactionno(transactionno);
		tm.setBookingdate(bookingdate);
		tm.setValuedate(valuedate);
		tm.setProcessdate(processdate);
		tm.setAccountnumber(accountnumber);
		tm.setDrcr(drcr);
		tm.setNarrative(narrative);
		tm.setAmount(amount);
		tm.setTransactioncode(transactioncode);
		tm.setInputter(inputter);
		tm.setAuthorizer(authorizer);
		tm.setChequenumber(chequenumber);
		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.insertMultiTransaction(tm);
		System.out.println(status);
		if(status){
			request.setAttribute("msg", "Transaction Added Successfully!");
		}
		else{
			request.setAttribute("msg", "Add  Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("insertMultiTxn.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	public void updateMultiTransaction(HttpServletRequest request, HttpServletResponse response) {

		String 
		transactionid=request.getParameter("transactionid"),
		transactionno=request.getParameter("transactionno"),
		bookingdate=request.getParameter("bookingdate"),
		valuedate=request.getParameter("valuedate"),
		processdate=request.getParameter("processdate"),
		accountnumber=request.getParameter("accountnumber"),
		drcr=request.getParameter("drcr"),
		narrative=request.getParameter("narrative"),
		chequenumber=request.getParameter("chequenumber"),
		amount=request.getParameter("amount"),
		transactioncode=request.getParameter("transactioncode"),
		authorizer="0";
		
		
		HttpSession session =request.getSession();
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userdetail.getUsername();
		
		TellerTransactionModel tm=new TellerTransactionModel();
		tm.setTransactionid(transactionid);
		tm.setTransactionno(transactionno);
		tm.setBookingdate(bookingdate);
		tm.setValuedate(valuedate);
		tm.setProcessdate(processdate);
		tm.setAccountnumber(accountnumber);
		tm.setDrcr(drcr);
		tm.setNarrative(narrative);
		tm.setAmount(amount);
		tm.setTransactioncode(transactioncode);
		tm.setInputter(inputter);
		tm.setAuthorizer(authorizer);
		tm.setChequenumber(chequenumber);
		String previousid=request.getParameter("previousid");

		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.updateMultiTransaction(tm,previousid);
		if(status){
			request.setAttribute("msg", "Transaction Update Successful!");
		}
		else{
			request.setAttribute("msg", "Transaction Update Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewMultiTxn.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	public void deleteTellerTransaction(HttpServletRequest request,
			HttpServletResponse response) {
		String id=request.getParameter("id");
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.deleteTellerTransaction(id);
		if(status){
			request.setAttribute("msg", "Delete Successful!");
		}
		else{
			request.setAttribute("msg", "Delete  Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewteller.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}


	public void deleteMultiTransaction(HttpServletRequest request, HttpServletResponse response) {

		String id=request.getParameter("id");
		
		TransactionDao dao=new TransactionDaoImpl();
		boolean status=dao.deleteMultiTransaction(id);
		if(status){
			request.setAttribute("msg", "Delete Successful!");
		}
		else{
			request.setAttribute("msg", "Delete  Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewMultiTxn.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void updateTellerTransaction(HttpServletRequest request,
			HttpServletResponse response) {
		String 
		transactionid=request.getParameter("transactionid"),
		bookingdate=request.getParameter("bookingdate"),
		valuedate=request.getParameter("valuedate"),
		processdate=request.getParameter("processdate"),
		debitaccoutnumber=request.getParameter("debitaccountnumber"),
		creditaccountnumber=request.getParameter("creditaccountnumber"),
		narrative=request.getParameter("narrative"),
		chequenumber=request.getParameter("chequenumber"),
		amount=request.getParameter("amount"),
		transactioncode=request.getParameter("transactioncode"),
		branchid=request.getParameter("branchid"),
		authorizer="0";
		
		HttpSession session =request.getSession();
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userdetail.getUsername();
		
		TellerTransactionModel tm=new TellerTransactionModel();
		tm.setTransactionid(transactionid);
		tm.setBookingdate(bookingdate);
		tm.setValuedate(valuedate);
		tm.setProcessdate(processdate);
		tm.setDebitaccountnumber(debitaccoutnumber);
		tm.setCreditaccountnumber(creditaccountnumber);
		tm.setNarrative(narrative);
		tm.setAmount(amount);
		tm.setTransactioncode(transactioncode);
		tm.setInputter(inputter);
		tm.setAuthorizer(authorizer);
		tm.setChequenumber(chequenumber);
		tm.setBranchid(branchid);
		
		TransactionDao td=new TransactionDaoImpl();
		boolean status=td.updateTellerTransaction(tm);
		if(status){
			request.setAttribute("msg", "Update Successful!");
		}
		else{
			request.setAttribute("msg", "Update Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewteller.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		

	}

	public void updateShareAccountLedger(HttpServletRequest request, HttpServletResponse response) {

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
		boolean status=dao.updateShareLedgerDao(l);
		
		if(status){
			request.setAttribute("msg", "Update Successful!");
		}
		else{
			request.setAttribute("msg", "Update Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewShareAccountLedger.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	

}
