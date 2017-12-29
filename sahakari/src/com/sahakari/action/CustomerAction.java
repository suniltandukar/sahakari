package com.sahakari.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sahakari.dao.CustomerDao;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.UserModel;

public class CustomerAction {

	public void addCustomer(HttpServletRequest request,
			HttpServletResponse response) {
		CustomerDao c=new CustomerDaoImpl();
		CustomerModel cm=new CustomerModel();
		String cusCitizenshipNo, memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity, ttole, 
No, citizenshipIssuedFrom, telno, mobno, fatherName, spouseName, dob, typeid,typeName, statusid, statusName, inputter, authorizer, insertStatus, updateStatus, delStatus;
		String[] cusRelation,cusRelName,dateOfBirth,fcitizenshipNo,fremarks;
		String[] cusJob, cusInstitution, cusPost, incomePeryear, jremarks;
		String[] bankName, accountNumber, accountType, bremarks;
		
		 cusRelation=request.getParameterValues("cusRelation");
		cusRelName=request.getParameterValues("cusRelName");
		dateOfBirth=request.getParameterValues("dateOfBirth");
		fcitizenshipNo=request.getParameterValues("fcitizenshipNo");
		fremarks=request.getParameterValues("fremarks");
		
		cusJob=request.getParameterValues("cusJob");
		cusInstitution=request.getParameterValues("cusInstitution");
		cusPost=request.getParameterValues("cusPost");
		incomePeryear=request.getParameterValues("incomePeryear");
		jremarks=request.getParameterValues("jremarks");
		
		bankName=request.getParameterValues("bankName");
		accountNumber=request.getParameterValues("accountNumber");
		accountType=request.getParameterValues("accountType");
		bremarks=request.getParameterValues("bremarks");
		
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
		cusCitizenshipNo=request.getParameter("cusCitizenshipNo");
		citizenshipIssuedFrom=request.getParameter("citizenshipIssuedFrom");
		telno=request.getParameter("telno");
		mobno=request.getParameter("mobno");
		fatherName=request.getParameter("fatherName");
		spouseName=request.getParameter("spouseName");
		dob=request.getParameter("dob");
		typeid=request.getParameter("typeid");
		statusid=request.getParameter("statusid");
		
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		
		inputter=userDetail.getUsername();
		authorizer="abc";
		insertStatus="abc";
		updateStatus="abc";
		delStatus="abc";
		
		cm.setMemberid(memberid);
		cm.setRegistrationDate(registrationDate);
		cm.setName(name);
		cm.setGender(gender);
		cm.setPdistid(pdistid);
		cm.setPvdcmunid(pvdcmunid);
		cm.setPwardno(pwardno);
		cm.setPcity(pcity);
		cm.setPtole(ptole);
		cm.setTdistid(tdistid);
		cm.setTvdcmunid(tvdcmunid);
		cm.setTwardno(twardno);
		cm.setTcity(tcity);
		cm.setTtole(ttole);
		cm.setCusCitizenshipNo(cusCitizenshipNo);
		cm.setCitizenshipIssuedFrom(citizenshipIssuedFrom);
		cm.setTelno(telno);
		cm.setMobno(mobno);
		cm.setFatherName(fatherName);
		cm.setSpouseName(spouseName);
		cm.setDob(dob);
		cm.setTypeid(typeid);
		cm.setStatusid(statusid);
		
		cm.setInputter(inputter);
		cm.setAuthorizer(authorizer);
		cm.setInsertStatus(insertStatus);
		cm.setUpdateStatus(updateStatus);
		cm.setDelStatus(delStatus);
		
		
		boolean customerstatus=c.insertCustomer(cm);
		boolean finalstatus=false;
		if(customerstatus){
			for(int i = 0;i<cusRelation.length;i++){
				cm.setCusRelation(cusRelation[i]);
				cm.setCusRelName(cusRelName[i]);
				cm.setDateOfBirth(dateOfBirth[i]);
				cm.setFcitizenshipNo(fcitizenshipNo[i]);
				cm.setFremarks(fremarks[i]);
				c.insertCustomerFamily(cm);
			}
			for(int j=0;j<accountNumber.length;j++){
				cm.setBankName(bankName[j]);
				cm.setAccountNumber(accountNumber[j]);
				cm.setAccountType(accountType[j]);
				cm.setBremarks(bremarks[j]);
				c.insertCustomerBank(cm);
			}
			for(int k=0;k<cusJob.length;k++){
				cm.setCusJob(cusJob[k]);
				cm.setCusInstitution(cusInstitution[k]);
				cm.setCusPost(cusPost[k]);
				cm.setIncomePeryear(incomePeryear[k]);
				cm.setJremarks(jremarks[k]);
				 c.insertCustomerJob(cm);
			}
			 finalstatus=true;
		}
		if(finalstatus){
			request.setAttribute("msg", "Customer Insert Successful!");
		}
		else{
			request.setAttribute("msg", "Customer Insert Failed!");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("customerinsert.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void deleteCustomer(HttpServletRequest request,
			HttpServletResponse response) {
		String pid=request.getParameter("id");
		
		CustomerDao dao=new CustomerDaoImpl();
		boolean status=dao.deleteCustomerDao(pid);
		if(status){
			request.setAttribute("msg", "Customer Deletion Successful!");
		}
		else{
			request.setAttribute("msg", "Customer Deletion Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewcustomer.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

	public void updateCustomer(HttpServletRequest request,
			HttpServletResponse response) {
		CustomerModel cm=new CustomerModel();
		String pid, memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity, ttole, cusCitizenshipNo, citizenshipIssuedFrom, telno, mobno, fatherName, spouseName, dob, typeid,typeName, statusid, statusName, inputter, authorizer, insertStatus, updateStatus, delStatus;
		String[] cusJob, cusInstitution, cusPost, incomePeryear, jremarks;
		String[] cusRelation,cusRelName,dateOfBirth,fcitizenshipNo,fremarks;
		String[] bankName, accountNumber, accountType, bremarks;
		
		cusJob=request.getParameterValues("cusJob");
		cusInstitution=request.getParameterValues("cusInstitution");
		cusPost=request.getParameterValues("cusPost");
		incomePeryear=request.getParameterValues("incomePeryear");
		jremarks=request.getParameterValues("jremarks");
		
		cusRelation=request.getParameterValues("cusRelation");
		cusRelName=request.getParameterValues("cusRelName");
		dateOfBirth=request.getParameterValues("dateOfBirth");
		fcitizenshipNo=request.getParameterValues("fcitizenshipNo");
		fremarks=request.getParameterValues("fremarks");
		
		bankName=request.getParameterValues("bankName");
		accountNumber=request.getParameterValues("accountNumber");
		accountType=request.getParameterValues("accountType");
		bremarks=request.getParameterValues("bremarks");
		
		
		
	
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
		cusCitizenshipNo=request.getParameter("cusCitizenshipNo");
		citizenshipIssuedFrom=request.getParameter("citizenshipIssuedFrom");
		telno=request.getParameter("telno");
		mobno=request.getParameter("mobno");
		fatherName=request.getParameter("fatherName");
		spouseName=request.getParameter("spouseName");
		dob=request.getParameter("dob");
		typeid=request.getParameter("typeid");
		statusid=request.getParameter("statusid");
		
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		inputter=userDetail.getUsername();
		authorizer="0";
		insertStatus="0";
		updateStatus="0";
		delStatus="0";
		
		cm.setMemberid(memberid);
		cm.setRegistrationDate(registrationDate);
		cm.setName(name);
		cm.setGender(gender);
		cm.setPdistid(pdistid);
		cm.setPvdcmunid(pvdcmunid);
		cm.setPwardno(pwardno);
		cm.setPcity(pcity);
		cm.setPtole(ptole);
		cm.setTdistid(tdistid);
		cm.setTvdcmunid(tvdcmunid);
		cm.setTwardno(twardno);
		cm.setTcity(tcity);
		cm.setTtole(ttole);
		cm.setCusCitizenshipNo(cusCitizenshipNo);
		cm.setCitizenshipIssuedFrom(citizenshipIssuedFrom);
		cm.setTelno(telno);
		cm.setMobno(mobno);
		cm.setFatherName(fatherName);
		cm.setSpouseName(spouseName);
		cm.setDob(dob);
		cm.setTypeid(typeid);
		cm.setStatusid(statusid);
		cm.setInputter(inputter);
		cm.setAuthorizer(authorizer);
		cm.setInsertStatus(insertStatus);
		cm.setUpdateStatus(updateStatus);
		cm.setDelStatus(delStatus);
		
		pid=request.getParameter("pid");
		cm.setPid(pid);
		
		CustomerDao dao=new CustomerDaoImpl();
		boolean customerStatus=dao.updateCustomer(pid,cm);
		boolean customerUpdateStatus=false;
		boolean deletestatus=false;
		
		if(customerStatus){
			deletestatus=dao.deleteCustomerRelationBankDetail(pid);
			if(deletestatus){
			for(int i = 0;i<cusRelation.length;i++){
				cm.setCusRelation(cusRelation[i]);
				cm.setCusRelName(cusRelName[i]);
				cm.setDateOfBirth(dateOfBirth[i]);
				cm.setFcitizenshipNo(fcitizenshipNo[i]);
				cm.setFremarks(fremarks[i]);
				dao.updateCustomerFamily(cm);
			}
			for(int j=0;j<accountNumber.length;j++){
				cm.setBankName(bankName[j]);
				cm.setAccountNumber(accountNumber[j]);
				cm.setAccountType(accountType[j]);
				cm.setBremarks(bremarks[j]);
				dao.updateCustomerBank(cm);
			}
			for(int k=0;k<cusJob.length;k++){
				cm.setCusJob(cusJob[k]);
				cm.setCusInstitution(cusInstitution[k]);
				cm.setCusPost(cusPost[k]);
				cm.setIncomePeryear(incomePeryear[k]);
				cm.setJremarks(jremarks[k]);
			dao.updateCustomerJob(cm);
			}
			customerUpdateStatus=true;
			}
			if(customerUpdateStatus){
			request.setAttribute("msg", "Update Successful!");
			}
			
		}
		else{
			request.setAttribute("msg", "Update Failed!");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("viewcustomer.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void addShareCertificate(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		String inputter=userDetail.getUsername();
		
		CustomerModel cm=new CustomerModel();
		String shareCertNo, shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate, memberid;
		shareCertNo=request.getParameter("shareCertNo");
		shareFrom=request.getParameter("shareFrom");
		shareTo=request.getParameter("shareTo");
		totalShareNos=request.getParameter("totalShareNos");
		shareRate=request.getParameter("shareRate");
		shareAmount=request.getParameter("shareAmount");
		shareDate=request.getParameter("shareDate");
		memberid=request.getParameter("memberid");
		
		cm.setShareCertNo(shareCertNo);
		cm.setShareFrom(shareFrom);
		cm.setShareTo(shareTo);
		cm.setTotalShareNos(totalShareNos);
		cm.setShareRate(shareRate);
		cm.setShareAmount(shareAmount);
		cm.setShareDate(shareDate);
		cm.setInputter(inputter);
		
		CustomerDao c=new CustomerDaoImpl();
		
		String pid=c.selectPid(memberid);
		cm.setPid(pid);
		
		boolean status=c.addShareCertificate(cm);
		if(status){
			request.setAttribute("msg", "Successful !");
		}
		else{
			request.setAttribute("msg", "Failed !");
		}
		
		
		RequestDispatcher rd=request.getRequestDispatcher("sharecertificateinsert.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void deleteShareCertificate(HttpServletRequest request,
			HttpServletResponse response) {
		String id=request.getParameter("id");
		CustomerDao c=new CustomerDaoImpl();
		boolean status=c.deleteShareCertificate(id);
		if(status){
			request.setAttribute("msg", "Delete Successful!");
		}
		else{
			request.setAttribute("msg", "Delete Failed!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewsharecertificate.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void updateShareCertificate(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		
		String inputter=userDetail.getUsername();
		
		CustomerModel cm=new CustomerModel();
		String shareCertificateId,shareCertNo, shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate, memberid;
		shareCertificateId=request.getParameter("shareCertificateId");
		shareCertNo=request.getParameter("shareCertNo");
		shareFrom=request.getParameter("shareFrom");
		shareTo=request.getParameter("shareTo");
		totalShareNos=request.getParameter("totalShareNos");
		shareRate=request.getParameter("shareRate");
		shareAmount=request.getParameter("shareAmount");
		shareDate=request.getParameter("shareDate");
		memberid=request.getParameter("memberid");
		
		cm.setShareCertificateId(shareCertificateId);
		cm.setShareCertNo(shareCertNo);
		cm.setShareFrom(shareFrom);
		cm.setShareTo(shareTo);
		cm.setTotalShareNos(totalShareNos);
		cm.setShareRate(shareRate);
		cm.setShareAmount(shareAmount);
		cm.setShareDate(shareDate);
		cm.setInputter(inputter);
		
		CustomerDao c=new CustomerDaoImpl();
		
		String pid=c.selectPid(memberid);
		boolean status=c.updateShareCertificate(cm);
		if(status){
			request.setAttribute("msg", "Update Successful!");
		}
		else{
			request.setAttribute("msg", "Update Successful!");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("viewsharecertificate.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	

}
