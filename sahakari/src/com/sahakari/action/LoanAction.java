package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.LoanDao;
import com.sahakari.daoimpl.LoanDaoImpl;
import com.sahakari.model.AccountModel;

public class LoanAction {

	public void addLoan(HttpServletRequest request, HttpServletResponse response) {

		String customerId=request.getParameter("customerId");
		String accountNumber=request.getParameter("accountNumber");
		String interestType=request.getParameter("interestTupe");
		String interestRate=request.getParameter("interestRate");
		String principalAmount=request.getParameter("principalAmount");
		String startDate=request.getParameter("startDate");
		String startDateen=request.getParameter("startDateen");
		String maturityDate=request.getParameter("maturityDate");
		String maturityDateen=request.getParameter("maturityDateen");
		String repaymentDate=request.getParameter("repaymentDate");
		String repaymentDateen=request.getParameter("repaymentDateen");
		String loanDrawdownAccount=request.getParameter("loanDrawdownAccount");
		String principalLiqAccount=request.getParameter("principalLiqAccount");
		String interestLiqAccount=request.getParameter("interestLiqAccount");
		String frequency=request.getParameter("frequency");
		
		
		String chargeDebitAccount=request.getParameter("chargeDebitAccount");
		String chargeAmount=request.getParameter("chargeAmount");
		String chargePaymentDate=request.getParameter("chargePaymentDate");
		String chargePaymentDateen=request.getParameter("chargePaymentDate");
		
		String limitReferenceNumber=request.getParameter("limitReferenceNumber");
		String limitAmount=request.getParameter("limitAmount");
		String maximumWithdrawalAmount=request.getParameter("maximumWithdrawalAmount");
		String utilizedAmount=request.getParameter("utilizedAmount");
		String balanceAmount=request.getParameter("balanceAmount");
		
		AccountModel ac=new AccountModel();
		ac.setPid(customerId);
		ac.setAccountNumber(accountNumber);
		ac.setInterestType(interestType);
		ac.setInterestRate(interestRate);
		ac.setPrincipalAmount(principalAmount);
		ac.setStartDateNP(startDate);
		ac.setStartDateEn(startDateen);
		ac.setMaturityDateNP(maturityDate);
		ac.setMaturityDateEn(maturityDateen);
		ac.setRepaymentStartDateNp(repaymentDate);
		ac.setRepaymentStartDateEn(repaymentDateen);
		ac.setLoanDrawdownAc(loanDrawdownAccount);
		ac.setPrincipalAmount(principalAmount);
		ac.setInterestLiqAccount(interestLiqAccount);
		ac.setRepaymentFrequency(frequency);
	
		ac.setChargeDebitAc(chargeDebitAccount);
		ac.setChargeAmount(chargeAmount);
		ac.setChargePaymentDate(chargePaymentDateen);
	
		ac.setLimitRef(limitReferenceNumber);
		
		LoanDao l=new LoanDaoImpl();
		boolean status=l.insertLoan(ac);
		if(status){
			request.setAttribute("msg", "Successful!");
		}
		else{
			request.setAttribute("msg", "Unsuccessful!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("createLoan.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	
		
		
		
		
	}

	public void editLoan(HttpServletRequest request, HttpServletResponse response) {

		String accountNo=request.getParameter("accountNo");
		
		LoanDao ld=new LoanDaoImpl();
		AccountModel model=ld.getEditDetails(accountNo);
		
		request.setAttribute("loan", model);
		RequestDispatcher rd=request.getRequestDispatcher("view/LoanModule/Loan/editLoanDisplayForm.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	public void updateLoan(HttpServletRequest request, HttpServletResponse response) {

		String customerId=request.getParameter("customerId");
		String accountNumber=request.getParameter("accountNumber");
		String interestType=request.getParameter("interestTupe");
		String interestRate=request.getParameter("interestRate");
		String principalAmount=request.getParameter("principalAmount");
		String startDate=request.getParameter("startDate");
		String startDateen=request.getParameter("startDateen");
		String maturityDate=request.getParameter("maturityDate");
		String maturityDateen=request.getParameter("maturityDateen");
		String repaymentDate=request.getParameter("repaymentDate");
		String repaymentDateen=request.getParameter("repaymentDateen");
		String loanDrawdownAccount=request.getParameter("loanDrawdownAccount");
		String principalLiqAccount=request.getParameter("principalLiqAccount");
		String interestLiqAccount=request.getParameter("interestLiqAccount");
		String frequency=request.getParameter("frequency");
		
		
		String chargeDebitAccount=request.getParameter("chargeDebitAccount");
		String chargeAmount=request.getParameter("chargeAmount");
		String chargePaymentDate=request.getParameter("chargePaymentDate");
		String chargePaymentDateen=request.getParameter("chargePaymentDate");
		
		String limitReferenceNumber=request.getParameter("limitReferenceNumber");
		String limitAmount=request.getParameter("limitAmount");
		String maximumWithdrawalAmount=request.getParameter("maximumWithdrawalAmount");
		String utilizedAmount=request.getParameter("utilizedAmount");
		String balanceAmount=request.getParameter("balanceAmount");
		
		AccountModel ac=new AccountModel();
		ac.setPid(customerId);
		ac.setAccountNumber(accountNumber);
		ac.setInterestType(interestType);
		ac.setInterestRate(interestRate);
		ac.setPrincipalAmount(principalAmount);
		ac.setStartDateNP(startDate);
		ac.setStartDateEn(startDateen);
		ac.setMaturityDateNP(maturityDate);
		ac.setMaturityDateEn(maturityDateen);
		ac.setRepaymentStartDateNp(repaymentDate);
		ac.setRepaymentStartDateEn(repaymentDateen);
		ac.setLoanDrawdownAc(loanDrawdownAccount);
		ac.setPrincipalLiqAccount(principalLiqAccount);
		ac.setPrincipalAmount(principalAmount);
		ac.setInterestLiqAccount(interestLiqAccount);
		ac.setRepaymentFrequency(frequency);
	
		ac.setChargeDebitAc(chargeDebitAccount);
		ac.setChargeAmount(chargeAmount);
ac.setChargePaymentDate(chargePaymentDate);
		
	ac.setChargePaymentDateen(chargePaymentDateen);
		ac.setLimitRef(limitReferenceNumber);
		
		
		LoanDao ld=new LoanDaoImpl();
		boolean status=ld.updateLoan(ac);
		if(status){
			request.setAttribute("msg", "Successful!");
		}
		else{
			request.setAttribute("msg", "Unsuccessful!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("createLoan.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		
	}

}
