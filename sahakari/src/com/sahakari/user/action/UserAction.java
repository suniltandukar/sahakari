package com.sahakari.user.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.user.dao.UserDao;
import com.sahakari.user.daoImpl.UserDaoImpl;

public class UserAction {

	public void adduseraction(HttpServletRequest request, HttpServletResponse response) {
		String username=request.getParameter("username");
		
		UserDao userdao=new UserDaoImpl();
		boolean status=userdao.adduserdao(username);
		
		
		
		if(status)
		{
			request.setAttribute("msg", "User Created Successfully");
			request.setAttribute("username", username);
			
			
			try {
				RequestDispatcher rd=request.getRequestDispatcher("adduser.user");
				rd.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("user error");
			} 
		}
				
	}

}
