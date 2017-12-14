package com.sahakari.user.action;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.UserModel;
import com.sahakari.user.dao.UserDao;
import com.sahakari.user.daoImpl.UserDaoImpl;

public class UserAction {

	public void adduseraction(HttpServletRequest request, HttpServletResponse response) {
		 String username=request.getParameter("username");
		 String[] name = request.getParameterValues("role");
		 String role=Arrays.toString(name).replace("[","").replace("]","");
		System.out.println(role);
		UserDao userdao=new UserDaoImpl();
		boolean status=userdao.adduserdao(username,role);
		
		
		
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

	public void deleteuseraction(HttpServletRequest request, HttpServletResponse response) {

		String userid=request.getParameter("userid");
		
		UserDao userdao=new UserDaoImpl();
		boolean status=userdao.deleteuserdao(userid);
		if(status)
		{
			request.setAttribute("msg", "User Deleted Success" );
			RequestDispatcher rd=request.getRequestDispatcher("deleteusernav.user");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
	}

	public void edituseraction(HttpServletRequest request, HttpServletResponse response) {
		String userid=request.getParameter("userid");
		 String[] name = request.getParameterValues("roles");
		 String roles=Arrays.toString(name).replace("[","").replace("]","");
		
		UserDao userdao=new UserDaoImpl();
		UserModel useredit=new UserModel();
		useredit=userdao.edituserdao(userid);
		
		if(useredit!=null)
		{
			request.setAttribute("update", "update");
			request.setAttribute("updatebtn", "showupdatebutton");
			request.setAttribute("username", useredit.getUsername());
			request.setAttribute("userid", useredit.getUserid());
			request.setAttribute("givenrole", useredit.getGivenrole());
			RequestDispatcher rd=request.getRequestDispatcher("adduser.user");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
	}

	public void updateuseraction(HttpServletRequest request, HttpServletResponse response) {
		
		String userid=request.getParameter("useridforupdate");
		String username=request.getParameter("username");
		 String[] name = request.getParameterValues("role");
		 String role=Arrays.toString(name).replace("[","").replace("]","");
		 System.out.println(role);
		 
		
		UserDao userdao=new UserDaoImpl();
		boolean status=userdao.updateuserdao(userid,username,role);
		
		if(status)
		{
			request.setAttribute("msg", "User Details Updated");
			RequestDispatcher rd=request.getRequestDispatcher("adduser.user");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
			
			
		}
		
		
	}
	
	

}
