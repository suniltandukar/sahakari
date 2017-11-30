package com.sahakari.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.CustomerDao;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.model.CustomerModel;

public class CustomerAction {

	public void addCustomer(HttpServletRequest request,
			HttpServletResponse response) {
		CustomerDao c=new CustomerDaoImpl();
		CustomerModel cm=new CustomerModel();
		String districtCode, districtName, pid, memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity, ttole, citizenshipNo, citizenshipIssuedFrom, telno, mobno, fatherName, spouseName, dob, typeid,typeName, statusid, statusName, inputter, authorizer, insertStatus, updateStatus, delStatus;
		memberid=request.getParameter("memberid");
		registrationDate=request.getParameter("registrationDate");
		name=request.getParameter("name");
		gender=request.getParameter("gender");
		pdistid=request.getParameter("pdistid");
		pvdcmunid=request.getParameter("pvdcmunid");
		pwardno=request.getParameter("pwardno");
		pcity=request.getParameter("pcity");
		ptole=request.getParameter("ptole");
		tdistid=request.getParameter("tdistid");
		tvdcmunid=request.getParameter("tvdcmunid");
		twardno=request.getParameter("twardno");
		tcity=request.getParameter("tcity");
		ttole=request.getParameter("ttole");
		citizenshipNo=request.getParameter("citizenshipNo");
		citizenshipIssuedFrom=request.getParameter("citizenshipIssuedFrom");
		telno=request.getParameter("telno");
		mobno=request.getParameter("mobno");
		fatherName=request.getParameter("fatherName");
		spouseName=request.getParameter("spouseName");
		dob=request.getParameter("dob");
		typeid=request.getParameter("typeid");
		statusid=request.getParameter("statusid");
		inputter="shishir";
		authorizer="abc";
		insertStatus="abc";
		updateStatus="abc";
		delStatus="abc";
		boolean status=c.insertCustomer(cm);
	}
	

}
