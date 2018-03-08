package com.sahakari.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.OtherActionDAO;
import com.sahakari.daoimpl.OtherActionDaoImpl;
import com.sahakari.model.Document;


public class OtherAction {

	public void saveFileData(HttpServletRequest request,
			HttpServletResponse response, Document document) {
		    	
		
		OtherActionDAO oad=new OtherActionDaoImpl();
		
		boolean status=oad.uploaddocumentDao(document);
		
		if(status){
		
			request.setAttribute("msg","Document Uploaded.");
			RequestDispatcher rd=request.getRequestDispatcher("memberdocument.click");
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		else{
			request.setAttribute("error", "Upload UnSuccessful! Please, try again.");
			RequestDispatcher rd=request.getRequestDispatcher("memberdocument.click");
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
	
	}
	public String getTodayDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		Date date=c.getTime();
		String todayDate=sdf.format(date);
		
		return todayDate;
		
	}
	public void addNewTeller(HttpServletRequest request, HttpServletResponse response) {

		String tellerId=request.getParameter("tellerId");
		String userId=request.getParameter("userId");
		String accountNumber=request.getParameter("accountNumber");
		String openDateN=request.getParameter("openDateN");
		String openDate=request.getParameter("openDate");
		String accountName=request.getParameter("accountName");
				
		
		OtherActionDAO dao=new OtherActionDaoImpl();
		boolean status=dao.saveNewTeller(tellerId,userId,accountNumber,openDateN,openDate,accountName);
		System.out.println(status);
		if(status)
		{
			request.setAttribute("msg", "New Teller Inserted");
		}
		else
		{
			request.setAttribute("msg", "New Teller Insertion Failed");
		}
		RequestDispatcher rd=request.getRequestDispatcher("newtel.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	
		



}
