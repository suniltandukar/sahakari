package com.sahakari.controller;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;

import com.sahakari.account.dao.AccountDao;
import com.sahakari.account.daoImpl.AccountDaoImpl;
import com.sahakari.action.Generator;
import com.sahakari.action.GetFormOptions;
import com.sahakari.dao.CategoryDao;
import com.sahakari.dao.CustomerDao;
import com.sahakari.dao.ListDao;
import com.sahakari.dao.OtherActionDAO;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.CategoryDaoImpl;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.daoimpl.ListDaoImpl;
import com.sahakari.daoimpl.OtherActionDaoImpl;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.AccountModel;
import com.sahakari.model.BranchModel;
import com.sahakari.model.CategoryModel;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.Document;
import com.sahakari.model.FamilyRelationModel;
import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;
import com.sahakari.model.UserModel;
import com.sahakari.transaction.dao.TransactionDao;
import com.sahakari.transaction.daoImpl.TransactionDaoImpl;
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
		 else if(uri.endsWith("updateCategory.click")){
			 String id=request.getParameter("id");
			 CategoryDao c=new CategoryDaoImpl();
			 CategoryModel cm=c.getSpecificCategoryDetail(id);
			 request.setAttribute("categorydetail", cm);
			 
			 List<CategoryModel> accounttype=c.accounttype();
			 request.setAttribute("accounttype", accounttype);
			 
			 RequestDispatcher rd=request.getRequestDispatcher("view/categories/updateCategory.jsp");
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
			
			Generator gen=new Generator();
			String custid=gen.customeridGenerator();
			if(custid==null)
			{
				request.setAttribute("pid", "00000001");
			}
			else
			{
				String strI = String.format("%08d", Integer.parseInt(custid));
				request.setAttribute("pid", strI);
			}
			
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
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/searchCustomer.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("customerSearchResult.click")){
			PrintWriter out=response.getWriter();
			String memberid=request.getParameter("memberid"),
					membername=request.getParameter("membername");
			String searchingby=memberid+membername;
			
			if(memberid.equals("") && membername.equals("")){
				out.println("No Inputs Found! ");
			}
			else{
				ViewDao view=new ViewDaoImpl();
				List<CustomerModel> list=view.viewSearchedCustomerDetail(searchingby);
				request.setAttribute("list", list);
				
				RequestDispatcher rd=request.getRequestDispatcher("view/Customer/customerDetailTable.jsp");
				rd.forward(request, response);
				
			}
			
		}
		else if(uri.endsWith("viewAllCustomers.click")){
			ViewDao view=new ViewDaoImpl();
			List<CustomerModel> list=view.viewCustomerDetail();
			request.setAttribute("list", list);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/Customer_View.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("viewcustomerModal.click")){
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
			
			List<CustomerModel> documentDetailList=v.viewCustomerDocumentDetail(id);
			request.setAttribute("customerDocumentDetail", documentDetailList);
			
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/customerCompleteDetailModal.jsp");
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
			
			List<CustomerModel> documentDetailList=v.viewCustomerDocumentDetail(id);
			request.setAttribute("customerDocumentDetail", documentDetailList);
			
			
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
			PrintWriter out=response.getWriter();
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
			PrintWriter out=response.getWriter();
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
			PrintWriter out=response.getWriter();
			String categoryId=request.getParameter("id");
			if(categoryId!=null){
			
			AccountDao a=new AccountDaoImpl();
			
			String accountType=a.selectAccountTypeFromCategory(categoryId);
			
			AccountModel am=a.getAccountTypes(accountType);
			out.println("<option value='"+am.getAccountType()+"'>"+am.getAccountTypeHead()+"</option>");
			}
			else{
				out.println("<option value=''>Select Account Type</option>");
			}
			
		}
		//Transaction
		else if(uri.endsWith("inserttransaction.click")){
		String branchid="001";
			Generator gen=new Generator();
			String tid=gen.transactionidgenerator(branchid);
			request.setAttribute("tid", tid);
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
			String branchid="001";
			String type=request.getParameter("type");
			request.setAttribute("type", type);
			
			Generator gen=new Generator();
			String tellerid=gen.tellertransactionidgenerator(branchid);
			request.setAttribute("tellerid", tellerid);
			
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
			String branchid="001";
			Generator gen=new Generator();
			String mid=gen.multitransactionidgenerator(branchid);
			request.setAttribute("mid", mid);
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
		else if(uri.endsWith("branch.click"))
		{
			ListDao list=new ListDaoImpl();
			List<BranchModel> branchlist=list.branch();
			
			request.setAttribute("branchlist", branchlist);
			RequestDispatcher rd=request.getRequestDispatcher("view/adminSettings/branch/addBranch.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("generateaccountno.click"))
		{
			PrintWriter out=response.getWriter();
			String generatedAccountNo="";
			CustomerDao cust=new CustomerDaoImpl();
			String memberid=request.getParameter("memberid");
			boolean memberidCheck=cust.checkMemberId(memberid);
			if(memberidCheck){
			//setting branchid
			String branchid="0101";
			//setting memberid into 7 digits
			String strI = String.format("%08d", Integer.parseInt(memberid));
			//setting last account number
			String maxaccountno=cust.acccountnogen(memberid);
			if(maxaccountno==null){//if member in accounts table not found
				generatedAccountNo=branchid+strI+"001";//autogenerated the first number
			}
			else{

			String accountNo=StringUtils.right(maxaccountno, 3);//taking last three digits from max account number+1
			//generated account number
			generatedAccountNo=branchid+strI+accountNo;
			
			}
			out.println(generatedAccountNo);
			}
			else{
				out.println("Member ID not Found.");
			}
		}
		else if(uri.endsWith("memberdocument.click"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/document/upload.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewmemberdocuments.click"))
		{
			OtherActionDAO action=new OtherActionDaoImpl();
			List<Document> documentlist=action.getDocumentDetails();
			request.setAttribute("documentlist", documentlist);
			RequestDispatcher rd=request.getRequestDispatcher("view/Customer/document/view.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("viewDocument.click")){
			String documentname=request.getParameter("documentname");
			OtherActionDAO action=new OtherActionDaoImpl();
			String location=action.getDocumentLocation(documentname);
			
			String contentType="image/png";
			
			ServletOutputStream ot= response.getOutputStream ();
			response.setContentType(contentType);  
		    ServletOutputStream os;  
		    os = response.getOutputStream();  
		    FileInputStream fin = new FileInputStream(location+"\\"+documentname);  
		      
		    BufferedInputStream bin = new BufferedInputStream(fin);  
		    BufferedOutputStream bout = new BufferedOutputStream(os);  
		    int ch =0; ;  
		    while((ch=bin.read())!=-1)  
		    {  
		    bout.write(ch);  
		    }  
		      
		    bin.close();  
		    fin.close();  
		    bout.close();  
		    os.close();  
		    }  
		
		else if(uri.endsWith("branchselect.click"))
		{
			HttpSession session=request.getSession(true);
			UserModel u=(UserModel)session.getAttribute("userDetail");
			String branchAllowed=u.getBranchAllowed();
			String[] branches=branchAllowed.split(",");
		
			request.setAttribute("branchesAllowed", branches);
			RequestDispatcher rd=request.getRequestDispatcher("view/UserSetting/branchselect.jsp");
			rd.forward(request, response);
			
		}
		else if(uri.endsWith("switchbranc.click")){
			String branch=request.getParameter("branch"),
					branchcode[]=branch.split("-");
			HttpSession session=request.getSession(true);
			System.out.println(branch);
			session.removeAttribute("currentBranchcode");
			session.setAttribute("currentBranchcode", branchcode[0]);
			
			session.removeAttribute("currentBranchFunctions");
			
			UserModel u=(UserModel)session.getAttribute("userDetail");
			System.out.println(u.getBranchAllowedFunctions());
			session.setAttribute("currentBranchFunctions", u.getBranchAllowedFunctions());
			
			System.out.println(session.getAttribute("currentBranchFunctions"));
			
			request.setAttribute("msg", "Current Branch ="+branchcode[0]);
			RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
			rd.forward(request, response);
		}
		else if(uri.endsWith("getmembername.click")){
			PrintWriter out=response.getWriter();
			String pid=request.getParameter("id");
			ViewDao v=new ViewDaoImpl();
			CustomerModel c=v.viewSpecificCustomerDetail(pid);
			out.println(c.getName());
			
		}
	}
}
