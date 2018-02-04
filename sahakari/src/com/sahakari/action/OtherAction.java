package com.sahakari.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
	
		



}
