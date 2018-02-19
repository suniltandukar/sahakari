package com.sahakari.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String chargePaymentDateen=request.getParameter("chargePaymentDateen");
		
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
	
		
		
		
		
	}

}
