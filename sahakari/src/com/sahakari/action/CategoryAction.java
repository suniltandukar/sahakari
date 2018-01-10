package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sahakari.dao.CategoryDao;
import com.sahakari.daoimpl.CategoryDaoImpl;
import com.sahakari.model.CategoryModel;
import com.sahakari.model.UserModel;

public class CategoryAction {

	public void addCategory(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel userdetail=(UserModel)session.getAttribute("userDetail");
		
		CategoryModel cm=new CategoryModel();
		String 
		categoryId=request.getParameter("categoryId"), 
		categoryHead=request.getParameter("categoryHead"), 
		accountType=request.getParameter("accountType"),
		authorizer=request.getParameter("authorizer"),
		inputter=userdetail.getUsername();
		
		cm.setAccountType(accountType);
		cm.setAuthorizer(authorizer);
		cm.setCategoryHead(categoryHead);
		cm.setCategoryId(categoryId);
		cm.setInputter(inputter);
		
		boolean status=false;
		CategoryDao c=new CategoryDaoImpl();
		status=c.insertCategory(cm);
		if(status){
			request.setAttribute("msg", "Save successful!");
		}
		else{
			request.setAttribute("msg", "Save unsuccessful!");
		}
		RequestDispatcher rd=request.getRequestDispatcher("category.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	
	}
	

}
