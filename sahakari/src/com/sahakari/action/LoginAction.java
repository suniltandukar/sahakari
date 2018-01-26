package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		u.setUsername(request.getParameter("username"));
		u.setPassword(request.getParameter("password"));
		LoginDao l=new LoginDaoImpl();
		boolean status=l.checkuser(u);
		if(status){
			UserModel userDetail=l.getUserDetail(u);
			HttpSession session=request.getSession(true);
			session.setAttribute("userDetail", userDetail);
			String currentBranchcode=userDetail.getBranchCode();
			session.setAttribute("currentBranchcode", currentBranchcode);
			
			UserDao ud=new UserDaoImpl();
			String name=userDetail.getGivenrole();
			request.setAttribute("userrole", ud.getRoleAssigned(name));
			System.out.println(ud.getRoleAssigned(name));
			
			RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
		else{
			request.setAttribute("msg", "Invalid Login Credentials!");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			try {
				rd.forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
		
	}

	public void userlogout(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.invalidate();
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		try {
			rd.forward(request,response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
