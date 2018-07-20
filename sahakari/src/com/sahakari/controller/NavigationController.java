package com.sahakari.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sahakari.account.dao.AccountDao;
import com.sahakari.account.daoImpl.AccountDaoImpl;
import com.sahakari.action.Generator;
import com.sahakari.action.GetFormOptions;
import com.sahakari.action.OtherAction;
import com.sahakari.dao.CategoryDao;
import com.sahakari.dao.CustomerDao;
import com.sahakari.dao.DateConverterDao;
import com.sahakari.dao.JsonServices;
import com.sahakari.dao.ListDao;
import com.sahakari.dao.OtherActionDAO;
import com.sahakari.dao.ReportsDao;
import com.sahakari.dao.StaffDao;
import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.CategoryDaoImpl;
import com.sahakari.daoimpl.CustomerDaoImpl;
import com.sahakari.daoimpl.DateConverterDaoImpl;
import com.sahakari.daoimpl.JsonServicesImpl;
import com.sahakari.daoimpl.ListDaoImpl;
import com.sahakari.daoimpl.OtherActionDaoImpl;
import com.sahakari.daoimpl.ReportsDaoImpl;
import com.sahakari.daoimpl.StaffDaoImpl;
import com.sahakari.daoimpl.ViewDaoImpl;
import com.sahakari.model.AccountModel;
import com.sahakari.model.AgentModel;
import com.sahakari.model.BranchModel;
import com.sahakari.model.CategoryModel;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.Document;
import com.sahakari.model.FamilyRelationModel;
import com.sahakari.model.ShareAccountLedger;
import com.sahakari.model.StaffModel;
import com.sahakari.model.TellerModel;
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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String uri = request.getRequestURI();
		uri = uri.substring(uri.lastIndexOf("/") + 1, uri.length());
		
		//variable initialization
		List<CategoryModel> accounttype =null;
		List<CustomerModel> docType=null;

		// Dao Implementation
		CategoryDao c = new CategoryDaoImpl();
		CustomerDao customerDao = new CustomerDaoImpl();
		ViewDao v = new ViewDaoImpl();
		AccountDao a = new AccountDaoImpl();
		TransactionDao transactionDao = new TransactionDaoImpl();
		ListDao listDao = new ListDaoImpl();
		OtherActionDAO otherActionDao = new OtherActionDaoImpl();
		DateConverterDao dateConverter = new DateConverterDaoImpl();

		RequestDispatcher rd = null;
		String id = "";

		// other classes
		GetFormOptions g = new GetFormOptions();
		Generator gen = new Generator();

		List<AgentModel> agentdetail = g.getagent();

		List<CustomerModel> statuslist = g.getStatus();
		List<CustomerModel> typelist = g.getType();
		List<CustomerModel> districtlist = g.getDistrict();

		HttpSession session = request.getSession(true);

		UserModel userDetail = (UserModel) session.getAttribute("userDetail");

		switch (uri) {
		case "getCategoriesDetail.click":

			JSONObject jsonObject = c.selectCategories();
			out.println(jsonObject);
			out.close();
			break;

		case "category.click":
			 accounttype = c.accounttype();
			request.setAttribute("accounttype", accounttype);

			rd = request.getRequestDispatcher("view/categories/insertCategory.jsp");
			rd.forward(request, response);
			break;

		case "updateCategory.click":
			id = request.getParameter("id");
			CategoryModel cm = c.getSpecificCategoryDetail(id);
			request.setAttribute("categorydetail", cm);

			request.setAttribute("accounttype", accounttype);

			rd = request.getRequestDispatcher("view/categories/updateCategory.jsp");
			rd.forward(request, response);
			break;

		case "specificCategoryDetail.click":
			id = request.getParameter("id");
			cm = c.getSpecificCategoryDetail(id);
			request.setAttribute("categorydetail", cm);

			rd = request.getRequestDispatcher("view/categories/categoryDetailModal.jsp");
			rd.forward(request, response);
			break;

		case "collateralrightinsert.click":
			rd = request.getRequestDispatcher("view/CollateralRight/Collateral_Right_Form.jsp");
			rd.forward(request, response);
			break;

		case "customerincomedetailinsert.click":
			rd = request.getRequestDispatcher("view/CustomerIncomeDetail/Customer_Income_Detail.jsp");
			rd.forward(request, response);
			break;

		case "customerrelationofficerinsert.click":
			rd = request.getRequestDispatcher("view/CustomerRelationOfficer/Customer_Relation_Officer_Detail.jsp");
			rd.forward(request, response);
			break;

		case "customerinsert.click":
			docType = g.getDocumentType();

			String custid = gen.customeridGenerator();
			if (custid == null) {
				request.setAttribute("pid", "00000001");
			} else {
				String strI = String.format("%07d", Integer.parseInt(custid));
				request.setAttribute("pid", strI);
			}

			List<FamilyRelationModel> familyrelationlist = g.getfamilyRelationNames();
			

			request.setAttribute("docType", docType);

			request.setAttribute("agent", agentdetail);
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("districtlist", districtlist);
			request.setAttribute("familyrelationlist", familyrelationlist);
			rd = request.getRequestDispatcher("view/Customer/insertCustomer.jsp");
			rd.forward(request, response);
			break;

		case "viewcustomer.click":
			rd = request.getRequestDispatcher("view/Customer/searchCustomer.jsp");
			rd.forward(request, response);
			break;

		case "viewAllCustomers.click":
			rd = request.getRequestDispatcher("view/Customer/Customer_View.jsp");
			rd.forward(request, response);
			break;

		case "viewcustomerModal.click":
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("districtlist", districtlist);
			id = request.getParameter("id");
			familyrelationlist = g.getfamilyRelationNames();
			request.setAttribute("familyrelationlist", familyrelationlist);

			v = new ViewDaoImpl();
			CustomerModel cus = v.viewSpecificCustomerDetail(id);
			request.setAttribute("cdetail", cus);

			List<CustomerModel> customerFamilylist = v.viewCustomerFamilyDetail(id);
			request.setAttribute("cusFamilyDetail", customerFamilylist);

			List<CustomerModel> customerJoblist = v.viewCustomerJobDetail(id);
			request.setAttribute("cusJobDetail", customerJoblist);

			List<CustomerModel> customerBankDetailList = v.viewCustomerBankDetail(id);
			request.setAttribute("customerBankDetail", customerBankDetailList);

			List<CustomerModel> documentDetailList = v.viewCustomerDocumentDetail(id);
			request.setAttribute("customerDocumentDetail", documentDetailList);

			rd = request.getRequestDispatcher("view/Customer/customerDetailModal.jsp");
			rd.forward(request, response);

			break;

		case "editcustomersearch.click":
			rd = request.getRequestDispatcher("view/Customer/editCustomerSearch.jsp");
			rd.forward(request, response);
			break;

		case "customereditdisplayform.click":
System.out.println("reached here");
			request.setAttribute("agent", agentdetail);
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("districtlist", districtlist);

			id = request.getParameter("pid");
			familyrelationlist = g.getfamilyRelationNames();
			request.setAttribute("familyrelationlist", familyrelationlist);

			cus = v.viewSpecificCustomerDetail(id);
			request.setAttribute("cdetail", cus);

			customerFamilylist = v.viewCustomerFamilyDetail(id);
			request.setAttribute("cusFamilyDetail", customerFamilylist);

			customerJoblist = v.viewCustomerJobDetail(id);
			request.setAttribute("cusJobDetail", customerJoblist);

			customerBankDetailList = v.viewCustomerBankDetail(id);
			request.setAttribute("customerBankDetail", customerBankDetailList);

			documentDetailList = v.viewCustomerDocumentDetail(id);
			request.setAttribute("customerDocumentDetail", documentDetailList);

			rd = request.getRequestDispatcher("view/Customer/customerUpdateDisplayForm.jsp");
			rd.forward(request, response);
			break;

		case "sharecertificateinsert.click":
			String param="left(categoryId,3) in(141) and accountType='ACC'";
			List<AccountModel> categorylist = a.getCategories(param);
			request.setAttribute("categorylist", categorylist);

			rd = request.getRequestDispatcher("view/ShareCertificate/insertShareCertificate.jsp");
			rd.forward(request, response);

			break;

		case "searchSCSpecific.click":
			rd = request.getRequestDispatcher("view/ShareCertificate/editShareCertificate.jsp");
			rd.forward(request, response);
			break;
		case "editsharecertificate.click":
			v = new ViewDaoImpl();
			id = request.getParameter("id");
			cus = v.viewSpecificShareCertificate(id);
			request.setAttribute("shareCert", cus);

			rd = request.getRequestDispatcher("view/ShareCertificate/displayForm.jsp");
			rd.forward(request, response);
			break;
		case "viewmuncipality.click":
			rd = request.getRequestDispatcher("view/onselectpages/viewMuncipality.jsp");
			rd.forward(request, response);
			break;
		case "viewwardno.click":
			rd = request.getRequestDispatcher("view/onselectpages/viewWardNo.jsp");
			rd.forward(request, response);
			break;

		case "checkmemberid.click":
			id = request.getParameter("id");

			boolean status = customerDao.checkMemberId(id);
			System.out.println(status);
			if (status) {
				out.println("1");
			} else {
				out.println("0");
			}
			out.close();
			break;

		case "sharecertcheckmemberid.click":
			id = request.getParameter("id");

			status = customerDao.checkMemberId(id);
			System.out.println(status);
			if (status) {
				out.println("0");
			} else {
				out.println("1");
			}
			out.close();
			break;

		case "insertfinancialaccount.click":
			String param3="accountType='FIN'";
			categorylist = a.getCategories(param3);
			request.setAttribute("categorylist", categorylist);
			rd = request.getRequestDispatcher("view/Account/insertFinancialAccount.jsp");
			rd.forward(request, response);
			break;

		case "insertaccount.click":
			String param2="left(categoryId,3) in(111,112,141) and accountType='ACC'";
			categorylist = a.getCategories(param2);
			request.setAttribute("categorylist", categorylist);
			rd = request.getRequestDispatcher("view/Account/insertAccount.jsp");
			rd.forward(request, response);
			break;

		case "viewaccount.click":
			
			categorylist = a.viewAccount();
			request.setAttribute("accountlist", categorylist);
			rd = request.getRequestDispatcher("view/Account/viewAccount.jsp");
			rd.forward(request, response);
			break;

		case "editaccount.click":
			String accountNumber = request.getParameter("accountNumber");
			request.setAttribute("accountNumber", accountNumber);
			rd = request.getRequestDispatcher("view/Account/editAccount.jsp");
			rd.forward(request, response);
			break;

		case "accounteditdisplayform.click":
			accountNumber = request.getParameter("id");
			categorylist = a.getCategories("0");
			request.setAttribute("categorylist", categorylist);

			AccountModel accountModel = a.getAccountDetail(accountNumber);
			request.setAttribute("accountdetail", accountModel);
			rd = request.getRequestDispatcher("view/Account/editAccountDisplayForm.jsp");
			rd.forward(request, response);
			break;

		case "showaccounttype.click":
			String categoryId = request.getParameter("id");
			if (categoryId != null) {
				String accountType = a.selectAccountTypeFromCategory(categoryId);

				AccountModel am = a.getAccountTypes(accountType);
				out.println("<option value='" + am.getAccountType() + "'>" + am.getAccountTypeHead() + "</option>");
			} else {
				out.println("<option value=''>Select Account Type</option>");
			}
			out.close();
			break;

		// Transaction
		case "inserttransaction.click":
			String branchid = "001";
			String tid = gen.transactionidgenerator(branchid);
			request.setAttribute("tid", tid);
			rd = request.getRequestDispatcher("view/Transaction/insertTransaction.jsp");
			rd.forward(request, response);
			break;

		case "viewtransaction.click":

			List<TransactionModel> transactionModelList = transactionDao.gettransactions();
			request.setAttribute("transactionlist", transactionModelList);
			rd = request.getRequestDispatcher("view/Transaction/viewTransaction.jsp");
			rd.forward(request, response);
			break;

		case "edittransaction.click":
			id = request.getParameter("id");
			request.setAttribute("id", id);
			rd = request.getRequestDispatcher("view/Transaction/editTransaction.jsp");
			rd.forward(request, response);
			break;

		case "transactioneditdisplayform.click":
			id = request.getParameter("id");
			TransactionModel transactionModel = transactionDao.getTransactionDetail(id);
			request.setAttribute("tdetail", transactionModel);
			rd = request.getRequestDispatcher("view/Transaction/editTransactionDisplayForm.jsp");
			rd.forward(request, response);
			break;

		// Teller Transaction
		case "insertTeller.click":

			OtherAction o = new OtherAction();
			String todayDate = o.getTodayDate();

			branchid = (String) session.getAttribute("currentBranchcode");
			String type = request.getParameter("type");
			request.setAttribute("type", type);

			String tellerid = gen.tellertransactionidgenerator(branchid);
			request.setAttribute("tellerid", tellerid);
			request.setAttribute("todayDate", todayDate);

			String todayNepaliDate = dateConverter.englishToNepali(todayDate);
			request.setAttribute("todayNepaliDate", todayNepaliDate);

			rd = request.getRequestDispatcher("view/Transaction/Teller/insertTeller.jsp");
			rd.forward(request, response);
			break;

		case "viewteller.click":

			List<TellerTransactionModel> tellerTransactionList = transactionDao.gettellertransactions();
			request.setAttribute("transactionlist", tellerTransactionList);
			rd = request.getRequestDispatcher("view/Transaction/Teller/viewTeller.jsp");
			rd.forward(request, response);
			break;

		case "editteller.click":
			id = request.getParameter("id");
			request.setAttribute("id", id);
			rd = request.getRequestDispatcher("view/Transaction/Teller/editTellerTransaction.jsp");
			rd.forward(request, response);
			break;

		case "tellereditdisplayform.click":
			id = request.getParameter("id");
			TransactionDao td = new TransactionDaoImpl();
			TellerTransactionModel ttModelList = td.getspecifictellertransaction(id);
			request.setAttribute("tellertxn", ttModelList);
			rd = request.getRequestDispatcher("view/Transaction/Teller/editTellerDisplayForm.jsp");
			rd.forward(request, response);

			break;

		// multi transactions
		case "insertMultiTxn.click":
			branchid = "001";
			String mid = gen.multitransactionidgenerator(branchid);
			request.setAttribute("mid", mid);
			rd = request.getRequestDispatcher("view/Transaction/MultiTransactions/insertMultiTransaction.jsp");
			rd.forward(request, response);
			break;

		case "viewMultiTxn.click":
			tellerTransactionList = transactionDao.getMultiTransaction();

			request.setAttribute("multitransactionlist", tellerTransactionList);
			rd = request.getRequestDispatcher("view/Transaction/MultiTransactions/viewMultiTransaction.jsp");
			rd.forward(request, response);
			break;

		case "multitxneditdisplayform.click":
			id = request.getParameter("id");

			ttModelList = transactionDao.getMultiTransactionDetail(id);
			request.setAttribute("multitxn", ttModelList);
			rd = request.getRequestDispatcher("view/Transaction/MultiTransactions/editMultiTransactionDisplayForm.jsp");
			rd.forward(request, response);
			break;
		case "editmultitxn.click":
			id = request.getParameter("id");
			request.setAttribute("id", id);
			rd = request.getRequestDispatcher("view/Transaction/MultiTransactions/editMultiTransaction.jsp");
			rd.forward(request, response);
			break;

		case "emi.click":
			rd = request.getRequestDispatcher("emi.jsp");
			rd.forward(request, response);
			break;
		case "branch.click":

			List<BranchModel> branchlist = listDao.branch();

			request.setAttribute("branchlist", branchlist);
			rd = request.getRequestDispatcher("view/adminSettings/branch/addBranch.jsp");
			rd.forward(request, response);
			break;
		case "generateaccountno.click":
			String generatedAccountNo = "";
			CustomerDao cust = new CustomerDaoImpl();
			String memberid = request.getParameter("memberid");
			boolean memberidCheck = cust.checkMemberId(memberid);
			if (memberidCheck) {
				// setting companyid
				String companyid = "01";
				// setting branchid
				branchid = (String) session.getAttribute("currentBranchcode");
				// setting memberid into 7 digits
				String strI = String.format("%07d", Integer.parseInt(memberid));
				// setting last account number
				String maxaccountno = cust.acccountnogen(memberid);
				if (maxaccountno == null) {// if member in accounts table not
											// found
					generatedAccountNo = companyid + branchid + strI + "001";// autogenerated
					// the first
					// number
				} else {

					String accountNo = StringUtils.right(maxaccountno, 3);// taking
																			// last
																			// three
																			// digits
																			// from
																			// max
																			// account
																			// number+1
					// generated account number
					generatedAccountNo = companyid + branchid + strI + accountNo;

				}
				out.println(generatedAccountNo);
			} else {
				out.println("Member ID not Found.");
			}
			out.close();
			break;
		case "memberdocument.click":
			rd = request.getRequestDispatcher("view/Customer/document/upload.jsp");
			rd.forward(request, response);
			break;

		case "viewmemberdocuments.click":

			List<Document> documentlist = otherActionDao.getDocumentDetails();
			request.setAttribute("documentlist", documentlist);
			rd = request.getRequestDispatcher("view/Customer/document/view.jsp");
			rd.forward(request, response);
			break;

		

		case "branchselect.click":

			String branchAllowed = userDetail.getBranchAllowed();
			String[] branches = branchAllowed.split(",");

			request.setAttribute("branchesAllowed", branches);
			rd = request.getRequestDispatcher("view/UserSetting/branchselect.jsp");
			rd.forward(request, response);

			break;
		case "switchbranc.click":
			String branch = request.getParameter("branch"), branchcode[] = branch.split("-");
			System.out.println(branch);
			session.removeAttribute("currentBranchcode");
			session.setAttribute("currentBranchcode", branchcode[0]);

			session.removeAttribute("currentBranchFunctions");

			session.setAttribute("currentBranchFunctions", userDetail.getBranchAllowedFunctions());

			System.out.println(session.getAttribute("currentBranchFunctions"));

			request.setAttribute("msg", "Current Branch =" + branchcode[0]);
			rd = request.getRequestDispatcher("profile.jsp");
			rd.forward(request, response);
			break;
		case "getmembername.click":
			String pid = request.getParameter("id");
			v = new ViewDaoImpl();
			cus = v.viewSpecificCustomerDetail(pid);
			out.println(cus.getName());

			break;

		case "showaccountname.click":
			String craccount = request.getParameter("craccount");
			String draccount = request.getParameter("draccount");
			JSONArray array = new JSONArray();
			v = new ViewDaoImpl();
			if (draccount.equals("")) {
				array = v.viewAccountName(craccount);
			} else {
				array = v.viewAccountName(draccount);
			}
			out.println(array);
			break;

		case "createLoan.click":
			rd = request.getRequestDispatcher("view/LoanModule/Loan/createLoan.jsp");
			rd.forward(request, response);
			break;

		case "nepaliToEnglish.click":
			String nepalidate = request.getParameter("nepalidate");
			String convertedEnglishDate = dateConverter.nepaliToEnglish(nepalidate);
			out.println(convertedEnglishDate);
			break;
		case "englishToNepali.click":
			String englishdate = request.getParameter("englishdate");
			String convertedNepaliDate = dateConverter.englishToNepali(englishdate);
			out.println(convertedNepaliDate);
			break;
		case "datatable.click":

			JSONObject json1 = new JSONObject();
			CategoryDao categoryDao = new CategoryDaoImpl();
			JSONObject json2 = c.selectCategories();
			try {
				json1.put("categorylist", json2);
			} catch (JSONException e) {
				e.printStackTrace();
			}
			response.setContentType("application/json");
			response.getWriter().println(json2);

			/*
			 * File file=new File(
			 * "C:/Users/Sunil/git/sahakari/sahakari/WebContent/view/Customer/category.json"
			 * ); file.createNewFile(); FileWriter fileWriter = new
			 * FileWriter(file);
			 * System.out.println("Writing JSON object to file");
			 * System.out.println("-----------------------");
			 * System.out.print(o);
			 * 
			 * fileWriter.write(o.toString()); fileWriter.flush();
			 * fileWriter.close();
			 */

			/*
			 * JSONObject obj = new JSONObject(); JSONArray jsonArray=new
			 * JSONArray();
			 * 
			 * try { obj.put("firstname", "shishir"); obj.put("lastname",
			 * "karki"); jsonArray.put(obj); String jsonText = obj.toString();
			 * System.out.println(jsonArray);
			 * 
			 * out.println(jsonText); } catch (JSONException e) {
			 * e.printStackTrace(); }
			 */

			break;
		case "insertCollateral.click":

			rd = request.getRequestDispatcher("view/LoanModule/collateral/insert.jsp");
			rd.forward(request, response);
			break;
		case "editLoan.click":
			rd = request.getRequestDispatcher("view/LoanModule/Loan/editLoan.jsp");
			rd.forward(request, response);
			break;
		case "insertLimit.click":

			rd = request.getRequestDispatcher("view/LoanModule/limit/insert.jsp");
			rd.forward(request, response);
			break;
		case "insertTermDeposits.click":

			rd = request.getRequestDispatcher("view/LoanModule/termDeposits/insert.jsp");
			rd.forward(request, response);
			break;
		// JSON Datas
		case "customerdetailjson.click":
			ViewDao view = new ViewDaoImpl();
			JSONObject list = view.viewCustomerDetail();
			String jsonString = list.toString();
			out.println(jsonString);
			break;
		case "customerSearchResult.click":
			memberid = request.getParameter("memberid");
			String membername = request.getParameter("membername");

			if (memberid.equals("") && membername.equals("")) {
				out.println("No Inputs Found! ");
			} else {
				request.setAttribute("memberid", memberid);
				request.setAttribute("membername", membername);
				rd = request.getRequestDispatcher("view/Customer/searchedCustomerList.jsp");
				rd.forward(request, response);

			}

			break;
		case "customerSearchResultList.click":
			memberid = request.getParameter("memberid");
			membername = request.getParameter("membername");
			/* String searchingby = memberid + membername; */
			JSONObject json3 = v.viewSearchedCustomerDetail(memberid, membername);
			out.println(json3.toString());
			break;

		case "initialdetails.click":
			request.setAttribute("agentlist", agentdetail);
			request.setAttribute("statuslist", statuslist);
			request.setAttribute("typelist", typelist);
			request.setAttribute("doctype", docType);
			rd = request.getRequestDispatcher("view/adminSettings/initialsetups.jsp");
			rd.forward(request, response);
			break;
		case "newtel.click":
			UserModel usermodel = (UserModel) session.getAttribute("userDetail");
			String categoryid = "21104";
			tellerid = gen.newTelleridgenerator(usermodel.getBranchCode(), usermodel.getCompanyId(), categoryid);

			request.setAttribute("tellerid", tellerid);
			rd = request.getRequestDispatcher("view/teller.jsp");
			rd.forward(request, response);
			break;
		case "viewTel.click":
			OtherActionDAO dao = new OtherActionDaoImpl();
			List<TellerModel> tellerModelList = dao.viewTeller();
			request.setAttribute("list", tellerModelList);
			rd = request.getRequestDispatcher("view/viewTel.jsp");
			rd.forward(request, response);
			break;
		// admin settings
		// staff settings
		case "staffinsert.click":
			rd = request.getRequestDispatcher("view/adminSettings/insertStaff.jsp");
			rd.forward(request, response);
			break;
		// basic interest rate
		case "basicInterestInsert.click":
			CategoryDao cat = new CategoryDaoImpl();
			List<CategoryModel> catlist = cat.getCategories();

			request.setAttribute("categories", catlist);
			rd = request.getRequestDispatcher("view/adminSettings/basicintrate_deposit/insert.jsp");
			rd.forward(request, response);
			break;
		case "viewStaff.click":
			StaffDao staffDao = new StaffDaoImpl();
			List<StaffModel> staff = staffDao.getStaff();
			request.setAttribute("staff", staff);
			rd = request.getRequestDispatcher("view/adminSettings/viewStaff.jsp");
			rd.forward(request, response);
			break;

		case "generateShareCertificateId.click":

			/*System.out.println("reached");*/
			memberid = request.getParameter("memberid");

			status = customerDao.checkMemberId(memberid);
			if (status) {

				branchid = userDetail.getBranchCode();
				String companyId = userDetail.getCompanyId();
				System.out.println(branchid + " " + companyId);
				id = gen.ShareCertificateIdGenerator(branchid, companyId, memberid);

				cus = v.viewSpecificCustomerDetail(memberid);
				 membername = cus.getName();
				String memaddress = cus.getAddress();

				out.println(membername + "*" + id + "*" + memaddress);

			} else {
				out.println("Member Not Found!!!");
			}
			break;
		case "shareAccountLedger.click":
			rd = request.getRequestDispatcher("view/Transaction/shareAccountLedger/insert.jsp");
			rd.forward(request, response);
			break;
		case "viewShareAccountLedger.click":
			transactionDao = new TransactionDaoImpl();
			List<ShareAccountLedger> shareAcLedgerList = transactionDao.viewShareAccountLedger();
			request.setAttribute("list", shareAcLedgerList);

			rd = request.getRequestDispatcher("view/Transaction/shareAccountLedger/viewShareLedger.jsp");
			rd.forward(request, response);
			break;
		case "editshareAccountLedgerDisplay.click":
			rd = request.getRequestDispatcher("view/Transaction/shareAccountLedger/editShareLedger.jsp");
			rd.forward(request, response);
			break;

		case "shareAccountLedgerDisplay.click":
			 pid = request.getParameter("pid");
			transactionDao = new TransactionDaoImpl();
			ShareAccountLedger shareAccountLedgerModel = transactionDao.editShareAcDisplay(pid);

			String datenep = dateConverter.englishToNepali(shareAccountLedgerModel.getDate());
			request.setAttribute("datenep", datenep);
			request.setAttribute("list", shareAccountLedgerModel);
			rd = request.getRequestDispatcher("view/Transaction/shareAccountLedger/editShareLedgerDisplayForm.jsp");
			rd.forward(request, response);
			break;
		case "getreltransactionno.click":
			String transactionId = request.getParameter("transactionid");
			TransactionDao t = new TransactionDaoImpl();
			String transactionNo = t.getTransactionNo(transactionId);
			if (transactionNo != null) {
				out.println(transactionNo);
			} else {
				out.println("1");
			}
			break;
		case "trialbalance.click":
			rd = request.getRequestDispatcher("view/reports/dailyReports/trialBalance.jsp");
			rd.forward(request, response);

			break;
		case "tbdatas.click":
			ReportsDao r = new ReportsDaoImpl();
			JsonServices j = new JsonServicesImpl();
			ResultSet rs = r.getTrialBalanceReport();
			JSONObject jobj = new JSONObject();
			try {
				jobj.put("data", j.getFormattedResultSet(rs));
			} catch (JSONException e) {
				e.printStackTrace();
			}
			out.println(jobj);

			break;

		default:
			out.println("Invalid Action!");
		}

	}
}
