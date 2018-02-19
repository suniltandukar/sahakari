package com.sahakari.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoanAction {

	public void addLoan(HttpServletRequest request, HttpServletResponse response) {

		String customerId=request.getParameter("customerId");
		String accountNumber=request.getParameter("accountNumber");
		String intersestType=request.getParameter("interestTupe");
		String variable=request.getParameter("variable");
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
		
		String chargeDebitAmount=request.getParameter("chargeDebitAmount");
		String chargeAmount=request.getParameter("chargeAmount");
		String chargePaymentDate=request.getParameter("chargePaymentDate");
		String chargePaymentDateen=request.getParameter("chargePaymentDateen");
		
		String limitReferenceNumber=request.getParameter("limitReferenceNumber");
		String limitAmount=request.getParameter("limitAmount");
		String maximumWithdrawalAmount=request.getParameter("maximumWithdrawalAmount");
		String utilizedAmount=request.getParameter("utilizedAmount");
		String balanceAmount=request.getParameter("balanceAmount");
		
	}

}
