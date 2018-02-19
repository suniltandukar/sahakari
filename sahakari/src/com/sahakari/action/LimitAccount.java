package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sahakari.dao.LimitDao;
import com.sahakari.daoimpl.LimitDaoImpl;
import com.sahakari.model.LimitModel;
import com.sahakari.model.UserModel;

public class LimitAccount {

	public void addLimit(HttpServletRequest request, HttpServletResponse response) {
HttpSession session=request.getSession(true);
UserModel u=(UserModel)session.getAttribute("userDetail");
String inputter=u.getUsername();
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
		String lastDrawDate=request.getParameter("lastDrawDate");
		String lastDrawDateen=request.getParameter("lastDrawDateen");
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
		lm.setApprovedDateEn(approvedDateen);
		lm.setApprovedDateNp(approvedDate);
		lm.setLastdrawDateEn(lastDrawDateen);
		lm.setLastdrawDateNp(lastDrawDate);
		lm.setInputter(inputter);
		
		
		LimitDao l=new LimitDaoImpl();
		boolean status=l.insertLimit(lm);
		if(status){
			request.setAttribute("msg", "Successful!");
		}
		else{
			request.setAttribute("msg", "Unsuccessful!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("insertLimit.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
	
		
		
		
	}

}
