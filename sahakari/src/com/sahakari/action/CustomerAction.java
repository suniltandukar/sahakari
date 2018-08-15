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
		String pid, memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity, ttole, 
No, telno, mobno, fatherName,email, agentid, dob, typeid,typeName, statusid, statusName, inputter, authorizer, insertStatus, updateStatus, delStatus, address;
		String[] cusRelation,cusRelName,dateOfBirth,fcitizenshipNo,fremarks;
		String[] cusJob, cusInstitution, cusPost, incomePeryear, jremarks;
		String[] bankName, accountNumber, accountType, bremarks;
		
		//document details
		String[] documentType, documentNumber, issuedDate,issuedDateen,issuedBy,expiryDate,expiryDateen;
		
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
		
		documentType=request.getParameterValues("documentType");
		documentNumber=request.getParameterValues("documentNumber");
		issuedDate=request.getParameterValues("issuedDate");
		issuedDateen=request.getParameterValues("issuedDateen");
		issuedBy=request.getParameterValues("issuedBy");
		expiryDate=request.getParameterValues("expiryDate");
		expiryDateen=request.getParameterValues("expiryDate");
		
		pid=request.getParameter("pid");
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
		email = request.getParameter("email");
		
		telno=request.getParameter("telno");
		mobno=request.getParameter("mobno");
		fatherName=request.getParameter("fatherName");
		agentid=request.getParameter("agentid");
		dob=request.getParameter("dob");
		typeid=request.getParameter("typeid");
		statusid=request.getParameter("statusid");
		address=request.getParameter("address");
		/*customergrFam=request.getParameter("customergroupFam");*/
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		
		inputter=userDetail.getUsername();
		authorizer="abc";
		insertStatus="abc";
		updateStatus="abc";
		delStatus="abc";
		
		cm.setPid(pid);
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
		cm.setEmail(email);
		
		cm.setTelno(telno);
		cm.setMobno(mobno);
		cm.setFatherName(fatherName);
		//cm.setSpouseName(spouseName);
		cm.setAgentid(agentid);
		cm.setDob(dob);
		cm.setTypeid(typeid);
		cm.setStatusid(statusid);
		
		cm.setInputter(inputter);
		cm.setAuthorizer(authorizer);
		cm.setInsertStatus(insertStatus);
		cm.setUpdateStatus(updateStatus);
		cm.setDelStatus(delStatus);
		cm.setAddress(address);
		
		boolean customerstatus=c.insertCustomer(cm);
		boolean finalstatus=false;
		if(customerstatus){
			for(int i = 0;i<cusRelation.length;i++){
				cm.setCusRelation(cusRelation[i]);
				cm.setCusRelName(cusRelName[i]);
				cm.setDateOfBirth(dateOfBirth[i]);
				cm.setFcitizenshipNo(fcitizenshipNo[i]);
				cm.setFremarks(fremarks[i]);
				boolean familystatus=c.insertCustomerFamily(cm);
				System.out.println("Family status ="+familystatus);
			}
			for(int j=0;j<accountNumber.length;j++){
				cm.setBankName(bankName[j]);
				cm.setAccountNumber(accountNumber[j]);
				cm.setAccountType(accountType[j]);
				cm.setBremarks(bremarks[j]);
				boolean accountstatus=c.insertCustomerBank(cm);
				System.out.println("Account status ="+accountstatus);
			}
			for(int k=0;k<cusJob.length;k++){
				cm.setCusJob(cusJob[k]);
				cm.setCusInstitution(cusInstitution[k]);
				cm.setCusPost(cusPost[k]);
				cm.setIncomePeryear(incomePeryear[k]);
				cm.setJremarks(jremarks[k]);
				boolean jobstatus= c.insertCustomerJob(cm);
				System.out.println("Job status ="+jobstatus);
			}
			for(int l=0;l<documentNumber.length;l++){
				cm.setDocumentType(documentType[l]);
				cm.setDocumentNumber(documentNumber[l]);
				cm.setIssuedDate(issuedDate[l]);
				cm.setIssuedDateen(issuedDateen[l]);
				cm.setIssuedBy(issuedBy[l]);
				cm.setExpiryDate(expiryDate[l]);
				cm.setExpiryDateen(expiryDateen[l]);
				boolean documentstatus=c.addMemberDocumentDetails(cm);
				System.out.println("Document Status ="+documentstatus);
			}
			 finalstatus=true;
		}
		if(finalstatus){
			request.setAttribute("msg", "Customer Insert Successful!"+" Member ID ="+cm.getPid()+" Name="+cm.getName());
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
		String email,pid,address, memberid, registrationDate, name, gender, pdistid, pvdcmunid, pwardno, pcity, ptole, tdistid, tvdcmunid, twardno, tcity, ttole, telno, mobno, fatherName, agentid, dob, typeid,typeName, statusid, statusName, inputter, authorizer, insertStatus, updateStatus, delStatus;
		String[] cusJob, cusInstitution, cusPost, incomePeryear, jremarks;
		String[] cusRelation,cusRelName,dateOfBirth,fcitizenshipNo,fremarks;
		String[] bankName, accountNumber, accountType, bremarks;
		
		//document details
				String[] documentType, documentNumber, issuedDate,issuedDateen,issuedBy,expiryDate,expiryDateen;
				
		documentType=request.getParameterValues("documentType");
		documentNumber=request.getParameterValues("documentNumber");
		issuedBy=request.getParameterValues("issuedBy");
		issuedDate=request.getParameterValues("issuedDate");
		issuedDateen=request.getParameterValues("issuedDateen");
		expiryDate=request.getParameterValues("expiryDate");
		expiryDateen=request.getParameterValues("expiryDateen");
		
		
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
		
		
		
		address=request.getParameter("address");
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
		telno=request.getParameter("telno");
		mobno=request.getParameter("mobno");
		fatherName=request.getParameter("fatherName");
		agentid=request.getParameter("agentid");
		dob=request.getParameter("dob");
		typeid=request.getParameter("typeid");
		statusid=request.getParameter("statusid");
		email=request.getParameter("email");
		
		HttpSession session=request.getSession();
		UserModel userDetail=(UserModel)session.getAttribute("userDetail");
		inputter=userDetail.getUsername();
		authorizer="0";
		insertStatus="0";
		updateStatus="0";
		delStatus="0";
		
		cm.setAddress(address);
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
		cm.setEmail(email);
		
		cm.setTelno(telno);
		cm.setMobno(mobno);
		cm.setFatherName(fatherName);
		//cm.setSpouseName(spouseName);
		cm.setAgentid(agentid);
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
			for(int l=0;l<documentNumber.length;l++){
				cm.setDocumentType(documentType[l]);
				cm.setDocumentNumber(documentNumber[l]);
				cm.setIssuedDate(issuedDate[l]);
				cm.setIssuedDateen(issuedDateen[l]);
				cm.setIssuedBy(issuedBy[l]);
				cm.setExpiryDate(expiryDate[l]);
				cm.setExpiryDateen(expiryDateen[l]);
				boolean documentstatus=dao.updateDocuments(cm);
				System.out.println("Document Status ="+documentstatus);
			}
			customerUpdateStatus=true;
			}
			if(customerUpdateStatus){
			request.setAttribute("msg", "Update Successful!"+" Member ID ="+cm.getPid());
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
		String shareid,shareCertNo, shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate, memberid;
		String categoryId,alternateAccountNo;
		categoryId=request.getParameter("categoryId");
		alternateAccountNo=request.getParameter("alternateAccountNo");
		shareCertNo=request.getParameter("shareCertNo");
		shareFrom=request.getParameter("shareFrom");
		shareTo=request.getParameter("shareTo");
		totalShareNos=request.getParameter("totalShareNos");
		shareRate=request.getParameter("shareRate");
		shareAmount=request.getParameter("shareAmount");
		shareDate=request.getParameter("shareDate");
		memberid=request.getParameter("memberid");
		shareid=request.getParameter("shareid");
		
		cm.setShareid(shareid);
		cm.setShareCertNo(shareCertNo);
		cm.setShareFrom(shareFrom);
		cm.setShareTo(shareTo);
		cm.setTotalShareNos(totalShareNos);
		cm.setShareRate(shareRate);
		cm.setShareAmount(shareAmount);
		cm.setShareDate(shareDate);
		cm.setInputter(inputter);
		cm.setAlternateAccountNo(alternateAccountNo);
		cm.setCategoryId(categoryId);
		cm.setPid(memberid);
		
		
		CustomerDao c=new CustomerDaoImpl();
		
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
		CustomerModel cm=new CustomerModel();
		String id,shareid,shareCertNo, shareFrom,shareTo,totalShareNos,shareRate,shareAmount,shareDate, memberid;
		String categoryId,alternateAccountNo;
		id=request.getParameter("id");
		categoryId=request.getParameter("categoryId");
		alternateAccountNo=request.getParameter("alternateAccountNo");
		shareCertNo=request.getParameter("shareCertNo");
		shareFrom=request.getParameter("shareFrom");
		shareTo=request.getParameter("shareTo");
		totalShareNos=request.getParameter("totalShareNos");
		shareRate=request.getParameter("shareRate");
		shareAmount=request.getParameter("shareAmount");
		shareDate=request.getParameter("shareDate");
		memberid=request.getParameter("memberid");
		shareid=request.getParameter("shareid");
		
		cm.setId(id);
		cm.setShareid(shareid);
		cm.setShareCertNo(shareCertNo);
		cm.setShareFrom(shareFrom);
		cm.setShareTo(shareTo);
		cm.setTotalShareNos(totalShareNos);
		cm.setShareRate(shareRate);
		cm.setShareAmount(shareAmount);
		cm.setShareDate(shareDate);
		cm.setAlternateAccountNo(alternateAccountNo);
		cm.setCategoryId(categoryId);
		cm.setPid(memberid);
		CustomerDao c=new CustomerDaoImpl();
		boolean status=c.updateShareCertificate(cm);
		if(status){
			request.setAttribute("msg", "Update Successful!");
		}
		else{
			request.setAttribute("msg", "Update Failed!");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher("viewsharecertificate.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void addCustomerStatus(HttpServletRequest request, HttpServletResponse response) {

		String statusName=request.getParameter("statusName");
		CustomerDao dao=new CustomerDaoImpl();
		boolean status=dao.addCustomerStatus(statusName);
		if(status)
		{
			request.setAttribute("msg","Status insert successful!");
		}
		else
		{
			request.setAttribute("msg","Status insert failure!");
			
		}
		RequestDispatcher rd=request.getRequestDispatcher("initialdetails.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void addCustomerType(HttpServletRequest request, HttpServletResponse response) {

		String typeName=request.getParameter("typeName");
		CustomerDao dao=new CustomerDaoImpl();
		boolean status=dao.addCustomerType(typeName);
		if(status)
		{
			request.setAttribute("msg", "Customer Type Add Successful!");
		}
		else
		{
			request.setAttribute("msg", "Customer Type Add Failed!");
			
		}
		RequestDispatcher rd=request.getRequestDispatcher("initialdetails.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	public void addCustomerAgent(HttpServletRequest request, HttpServletResponse response) {

		String agentName=request.getParameter("agentname");
		String agentAddress=request.getParameter("agentaddress");
		String agentPhone=request.getParameter("agentphone");
		String staffCode=request.getParameter("staffcode");
		
		CustomerDao dao=new CustomerDaoImpl();
		boolean status=dao.addCustomerAgent(agentName,agentAddress,agentPhone,staffCode);
		
		if(status)
		{
			request.setAttribute("msg", "Relationship Officer Add Successfull!");
		}
		else
		{
			request.setAttribute("msg", "Relationship Officer Add Failed!");
			
		}
		RequestDispatcher rd=request.getRequestDispatcher("initialdetails.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	

}
