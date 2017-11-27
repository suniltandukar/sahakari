package com.sahakari.controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class NavigationController
 */
@WebServlet("/NavigationController")
public class NavigationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public NavigationController() {
        super();
    }
	public void init(ServletConfig config) throws ServletException {
	}
	public void destroy() {
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		if(uri.endsWith("collateralrightinsert.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/CollateralRight/Collateral_Right_Form.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customerincomedetailinsert.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/CustomerIncomeDetail/Customer_Income_Detail.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customerrelationofficerinsert.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/CustomerRelationOfficer/Customer_Relation_Officer_Detail.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customerinsert.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_Form.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("viewcustomer.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_View.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("editcustomer.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_edit.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customereditdisplayform.click")){
			String id=request.getParameter("id");
			System.out.println(id);
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_edit_displayform.jsp");
			rd.forward(request, response);
		}
	}
}
