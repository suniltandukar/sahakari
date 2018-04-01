package com.sahakari.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sahakari.dao.LoginDao;
import com.sahakari.daoimpl.LoginDaoImpl;
import com.sahakari.model.UserModel;
import com.sahakari.user.dao.UserDao;
import com.sahakari.user.daoImpl.UserDaoImpl;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginAction() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	public void userlogin(HttpServletRequest request,
			HttpServletResponse response) {
		
		UserModel u=new UserModel();
		u.setStaffCode(request.getParameter("staffCode"));
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		LoginDao l=new LoginDaoImpl();
		int curStatusValue=1;
		boolean curStatus=l.setCurStatus(u,curStatusValue);
		RequestDispatcher rd=null;
		if(curStatus){
			UserModel userDetail=l.getUserDetail(u);
		
			HttpSession session=request.getSession(true);
			session.setAttribute("userDetail", userDetail);
		
			String currentBranchcode=userDetail.getBranchCode();
			session.setAttribute("currentBranchcode", currentBranchcode);
			
			
			
			UserDao ud=new UserDaoImpl();
			String mainRole=ud.getRoleAssigned(userDetail.getGivenrole());
			session.setAttribute("mainRole", mainRole);
			System.out.println(mainRole);
			
			session.setAttribute("currentBranchFunctions", userDetail.getFunctionAllowed());
			
			
			rd=request.getRequestDispatcher("profile.jsp");
		}
		else{
			request.setAttribute("msg", "Login Failed! Please Login Again!");
			rd=request.getRequestDispatcher("index.jsp");
		}
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
			
		}
		
		
	

	public void userlogout(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		UserModel u=(UserModel)session.getAttribute("userDetail");
		LoginDao l=new LoginDaoImpl();
		int curStatusValue=0;
		//boolean curStatus=l.setCurStatus(u,curStatusValue);
		RequestDispatcher rd=null;
		//if(curStatus){
			//System.out.println("curStatus set to 0");
		session.invalidate();
		 rd=request.getRequestDispatcher("index.jsp");
		/*}
		else{
			System.out.println("curStatus cannnot be set to 0");
			request.setAttribute("msg", "Logout Failed! Please try Again!");
			 rd=request.getRequestDispatcher("profile.jsp");
		}
		try {
			rd.forward(request,response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}*/
		
		
	}

}
