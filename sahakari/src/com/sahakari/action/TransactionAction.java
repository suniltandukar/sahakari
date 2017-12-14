package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		processingDate=request.getParameter("processingDate");
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
		tm.setProcessingDate(processingDate);
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

}
