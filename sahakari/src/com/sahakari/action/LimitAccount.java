package com.sahakari.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.LimitModel;

public class LimitAccount {

	public void addLimit(HttpServletRequest request, HttpServletResponse response) {

		String customerId=request.getParameter("pid");
		String productCode=request.getParameter("loanProduct");
		String seriesNumber=request.getParameter("seriesNumber");
		String limitReference=request.getParameter("limitReference");
		String limitType=request.getParameter("limitType");
		String applicationDate=request.getParameter("applicationDate");
		String applicationDateen=request.getParameter("applicationDateen");
		String approvedDate=request.getParameter("approvedDate");
		String approvedDateen=request.getParameter("approvedDateen");
		String maturityDate=request.getParameter("maturityDate");
		String maturityDateen=request.getParameter("maturityDateen");
		String reviewDate=request.getParameter("reviewDate");
		String reviewDateen=request.getParameter("reviewDateen");
		String lastDrawDate=request.getParameter("lastDrawdate");
		String lastDrawDateen=request.getParameter("lastDrawdateen");
		String limitAvailableAmount=request.getParameter("limitAvailable");
		String reducingLimit=request.getParameter("reducingLimit");
		String approvedAmount=request.getParameter("approvedAmount");
		String maximumWithdrawalAmount=request.getParameter("maximumWithdrawalAmount");
		String utilizedAmount=request.getParameter("utilizedAmount");
		String balanceAmount=request.getParameter("balanceAmount");
		String repaymentAmount=request.getParameter("repaymentAmount");
		String limitTransferredTo=request.getParameter("limitTransferredTo");
		String limitTransferredFrom=request.getParameter("limitTransferredFrom");
		String limitStatus=request.getParameter("limitStatus");
		
		LimitModel lm=new LimitModel();
		lm.setPID(customerId);
		lm.setProductCode(productCode);
		lm.setLimitSerial(seriesNumber);
		lm.setLimitReference(limitReference);
		lm.setLimitType(limitType);
		lm.setApplicationDateNp(applicationDate);
		lm.setApplicationDateEn(applicationDateen);
		lm.setMaturityDateNp(maturityDate);
		lm.setMaturityDateEn(maturityDateen);
		lm.setReviewDateNp(reviewDate);
		lm.setReviewDateEn(reviewDateen);
		lm.setReviewDateEn(reviewDateen);
		lm.setLastdrawDateNp(lastDrawDate);
		lm.setLastdrawDateEn(lastDrawDateen);
		lm.setLimitAvailableAmount(limitAvailableAmount);
		lm.setReducingLimit(reducingLimit);
		lm.setApprovedAmount(approvedAmount);
		lm.setMaximumwithdrawlAmount(maximumWithdrawalAmount);
		lm.setUtilizedAmount(utilizedAmount);
		lm.setBalanceAmount(balanceAmount);
		lm.setLimitTransferTocus(limitTransferredTo);
		lm.setLimitTransferFromcus(limitTransferredFrom);
		lm.setLimitStatus(limitStatus);
		
		
		
		
		
		
		
	
		
		
		
	}

}
