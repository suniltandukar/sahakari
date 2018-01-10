package com.sahakari.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

import com.sahakari.account.dao.AccountDao;
import com.sahakari.account.daoImpl.AccountDaoImpl;
import com.sahakari.action.GetFormOptions;
import com.sahakari.dao.CategoryDao;
import com.sahakari.dao.CustomerDao;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.CategoryDaoImpl;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.AccountModel;
import com.sahakari.model.CategoryModel;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.FamilyRelationModel;
import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;
import com.sahakari.transaction.dao.TransactionDao;
import com.sahakari.transaction.daoImpl.TransactionDaoImpl;
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
		PrintWriter out=response.getWriter();
		String uri=request.getRequestURI();
		 if(uri.endsWith("category.click"))
		{
			 CategoryDao c=new CategoryDaoImpl();
			 List<CategoryModel> list=c.selectCategories();
			 request.setAttribute("categorylist", list);
			 
			 List<CategoryModel> accounttype=c.accounttype();
			 request.setAttribute("accounttype", accounttype);
			 
			RequestDispatcher rd=request.getRequestDispatcher("view/categories/insertCategory.jsp");
			rd.forward(request, response);
		}
		 else if(uri.endsWith("specificCategoryDetail.click")){
			 String id=request.getParameter("id");
			 CategoryDao c=new CategoryDaoImpl();
			 CategoryModel cm=c.getSpecificCategoryDetail(id);
			 request.setAttribute("categorydetail", cm);
			 
			RequestDispatcher rd=request.getRequestDispatcher("view/categories/categoryDetailModal.jsp");
			rd.forward(request, response);
			}
		 else if(uri.endsWith("collateralrightinsert.click")){
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
			GetFormOptions g=new GetFormOptions();
			List<CustomerModel> statuslist=g.getStatus();
			List<CustomerModel> typelist=g.getType();
			List<CustomerModel> districtlist=g.getDistrict();
			List<FamilyRelationModel> familyrelationlist=g.getfamilyRelationNames();
			
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("districtlist", districtlist);
			request.setAttribute("familyrelationlist", familyrelationlist);
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/insertCustomer.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("viewcustomer.click")){
			ViewDao view=new ViewDaoImpl();
			List<CustomerModel> list=view.viewCustomerDetail();
			request.setAttribute("list", list);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_View.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("editcustomer.click")){
			String memberid=request.getParameter("memberid");
			request.setAttribute("memberid", memberid);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_edit.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customereditdisplayform.click")){
			GetFormOptions g=new GetFormOptions();
			List<CustomerModel> statuslist=g.getStatus();
			List<CustomerModel> typelist=g.getType();
			List<CustomerModel> districtlist=g.getDistrict();
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("districtlist", districtlist);
			
			String id=request.getParameter("id");
			
			List<FamilyRelationModel> familyrelationlist=g.getfamilyRelationNames();
			request.setAttribute("familyrelationlist", familyrelationlist);
			
			ViewDao v=new ViewDaoImpl();
			CustomerModel c=v.viewSpecificCustomerDetail(id);
			request.setAttribute("cdetail", c);
			
			List<CustomerModel> customerFamilylist=v.viewCustomerFamilyDetail(id);
			request.setAttribute("cusFamilyDetail", customerFamilylist);
			
			List<CustomerModel> customerJoblist=v.viewCustomerJobDetail(id);
			request.setAttribute("cusJobDetail", customerJoblist);
			
			List<CustomerModel> customerBankDetailList=v.viewCustomerBankDetail(id);
			request.setAttribute("customerBankDetail", customerBankDetailList);
			
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/customerUpdateDisplayForm.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("sharecertificateinsert.click")){
			ViewDao view=new ViewDaoImpl();
			List<CustomerModel> list=view.viewCustomerDetail();
			request.setAttribute("list", list);
			
			 List<CustomerModel> slist=view.viewShareCertificate();
			 request.setAttribute("shareCert", slist);
			 
			RequestDispatcher rd=request.getRequestDispatcher("view/ShareCertificate/insertShareCertificate.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewsharecertificate.click")){
			ViewDao v=new ViewDaoImpl();
			 List<CustomerModel> list=v.viewShareCertificate();
			 
			 request.setAttribute("shareCert", list);
			 
			RequestDispatcher rd=request.getRequestDispatcher("view/ShareCertificate/viewShareCertificate.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("editsharecertificate.click")){
			ViewDao v=new ViewDaoImpl();
			String id=request.getParameter("id");
			CustomerModel list=v.viewSpecificShareCertificate(id);
			
			request.setAttribute("shareCert", list);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/ShareCertificate/updateShareCertificate.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewmuncipality.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/onselectpages/viewMuncipality.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewwardno.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/onselectpages/viewWardNo.jsp");
			rd.forward(request, response);
			
		}
	
		else if(uri.endsWith("checkmemberid.click")){
			String id=request.getParameter("id");
			CustomerDao c=new CustomerDaoImpl();
			boolean status=c.checkMemberId(id);
			System.out.println(status);
			if(status){
				out.println("1");
			}
			else{
				out.println("0");
			}
		}
		else if(uri.endsWith("sharecertcheckmemberid.click")){
			String id=request.getParameter("id");
			CustomerDao c=new CustomerDaoImpl();
			boolean status=c.checkMemberId(id);
			System.out.println(status);
			if(status){
				out.println("0");
			}
			else{
				out.println("1");
			}
		}
		else if(uri.endsWith("insertfinancialaccount.click")){
			AccountDao a=new AccountDaoImpl();
			List<AccountModel> categorylist=a.getCategories();
			request.setAttribute("categorylist", categorylist);
			RequestDispatcher rd=request.getRequestDispatcher("view/Account/insertFinancialAccount.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("insertaccount.click")){
			AccountDao a=new AccountDaoImpl();
			List<AccountModel> categorylist=a.getCategories();
			request.setAttribute("categorylist", categorylist);
			RequestDispatcher rd=request.getRequestDispatcher("view/Account/insertAccount.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewaccount.click")){
			AccountDao a=new AccountDaoImpl();
			List<AccountModel> list=a.viewAccount();
			request.setAttribute("accountlist", list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Account/viewAccount.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("editaccount.click")){
			String accountNumber=request.getParameter("accountNumber");
			request.setAttribute("accountNumber", accountNumber);
			RequestDispatcher rd=request.getRequestDispatcher("view/Account/editAccount.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("accounteditdisplayform.click")){
			String accountNumber=request.getParameter("id");
			AccountDao a=new AccountDaoImpl();
			
			List<AccountModel> categorylist=a.getCategories();
			request.setAttribute("categorylist", categorylist);
			
			AccountModel list=a.getAccountDetail(accountNumber);
			request.setAttribute("accountdetail", list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Account/editAccountDisplayForm.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("showaccounttype.click")){
			AccountDao a=new AccountDaoImpl();
			String categoryId=request.getParameter("id");
			String accountType=a.selectAccountTypeFromCategory(categoryId);
			AccountModel am=a.getAccountTypes(accountType);
			request.setAttribute("accounttype", am);
			RequestDispatcher rd=request.getRequestDispatcher("view/onselectpages/accountType.jsp");
			rd.forward(request, response);
			
		}
		//Transaction
		else if(uri.endsWith("inserttransaction.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/insertTransaction.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("viewtransaction.click")){
			TransactionDao td=new TransactionDaoImpl();
			List<TransactionModel> list=td.gettransactions();
			request.setAttribute("transactionlist", list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/viewTransaction.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("edittransaction.click")){
			String id=request.getParameter("id");
			request.setAttribute("id", id);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/editTransaction.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("transactioneditdisplayform.click")){
			String id=request.getParameter("id");
			TransactionDao td=new TransactionDaoImpl();
			TransactionModel list=td.getTransactionDetail(id);
			request.setAttribute("tdetail",list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/editTransactionDisplayForm.jsp");
			rd.forward(request, response);
		}
		//Teller Transaction
		else if(uri.endsWith("insertTeller.click")){
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/Teller/insertTeller.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("viewteller.click")){
			TransactionDao td=new TransactionDaoImpl();
			List<TellerTransactionModel> list=td.gettellertransactions();
			request.setAttribute("transactionlist", list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/Teller/viewTeller.jsp");
			rd.forward(request, response);
		}	
		else if(uri.endsWith("editteller.click")){
			String id=request.getParameter("id");
			request.setAttribute("id", id);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/Teller/editTellerTransaction.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("tellereditdisplayform.click")){
			String id=request.getParameter("id");
			TransactionDao td=new TransactionDaoImpl();
			TellerTransactionModel list=td.getspecifictellertransaction(id);
			request.setAttribute("tellertxn",list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/Teller/editTellerDisplayForm.jsp");
			rd.forward(request, response);
		}
		//multi transactions
		if(uri.endsWith("insertMultiTxn.click"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/MultiTransactions/insertMultiTransaction.jsp");
			rd.forward(request, response);
			
		}
		if(uri.endsWith("viewMultiTxn.click"))
		{
			TransactionDao dao=new TransactionDaoImpl();
			List<TellerTransactionModel> list=dao.getMultiTransaction();
			
			request.setAttribute("multitransactionlist", list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/MultiTransactions/viewMultiTransaction.jsp");
			rd.forward(request, response);
		}
		
		else if(uri.endsWith("multitxneditdisplayform.click")){
			String id=request.getParameter("id");
			
			TransactionDao td=new TransactionDaoImpl();
			TellerTransactionModel list=td.getMultiTransactionDetail(id);
			request.setAttribute("multitxn",list);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/MultiTransactions/editMultiTransactionDisplayForm.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("editmultitxn.click"))
		{
			String id=request.getParameter("id");
			request.setAttribute("id", id);
			RequestDispatcher rd=request.getRequestDispatcher("view/Transaction/MultiTransactions/editMultiTransaction.jsp");
			rd.forward(request, response);
			
		}
		
		else if(uri.endsWith("emi.click"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("emi.jsp");
			rd.forward(request, response);
		}
	}
}
