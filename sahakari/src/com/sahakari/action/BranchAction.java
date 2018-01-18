package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.CommonDao;
import com.sahakari.daoimpl.CommonDaoImpl;
import com.sahakari.model.BranchModel;

public class BranchAction {

	public void addBranch(HttpServletRequest request,
			HttpServletResponse response) {
		String companyId=request.getParameter("companyId"), branchId=request.getParameter("branchId"), 
				branchName=request.getParameter("branchName"), 
				branchAddress=request.getParameter("branchAddress"), 
				branchPhone=request.getParameter("branchPhone"), 
				branchFax=request.getParameter("branchFax");
		BranchModel bm=new BranchModel();
		bm.setBranchAddress(branchAddress);
		bm.setBranchFax(branchFax);
		bm.setBranchId(branchId);
		bm.setBranchName(branchName);
		bm.setBranchPhone(branchPhone);
		bm.setCompanyId(companyId);
	//setting values for insertion
		String tableName="branchtbl", 
				reqFields="companyId, branchId, branchName, branchAddress, branchPhone, branchFax",
				reqValues=bm.getCompanyId()+","+bm.getBranchId()+","+bm.getBranchName()+","+bm.getBranchAddress()+","+bm.getBranchPhone()+","+bm.getBranchFax();
	//insert query 
		CommonDao c=new CommonDaoImpl();
		boolean status=c.insertFunction(tableName, reqFields, reqValues);
	//message on insert success or failure
		if(status){
			request.setAttribute("msg", "Add Successful!");
		}
		else{
			request.setAttribute("msg", "Add Failed!");
		}
		//dispatching the page
		RequestDispatcher rd=request.getRequestDispatcher("branch.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
