
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import='java.sql.*'%>
<%@page import='com.sahakari.model.UserModel'%>
<%
	if ((session.getAttribute("userDetail")) != null) {
		UserModel userdetail = (UserModel) session.getAttribute("userDetail");
		String currentBranchCode=(String)session.getAttribute("currentBranchcode");
		
		String mainRole=(String)session.getAttribute("mainRole");
		
		String currentBranchFunctions=(String)session.getAttribute("currentBranchFunctions");
		
		String additionalFunctions=userdetail.getAdditionalFunctions();
		
		
		
%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Digi Nepal | Profile</title>

<!-- Bootstrap -->
<link href="template/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="template/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="template/css/nprogress.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="template/css/custom.min.css" rel="stylesheet">
<style>
#member,#retailoperation,#shareholder,#generaltransaction,#loanmodule,#nonfundbusiness,#otherutilities,#reports,#adminsettings, #i, #v,#e,#a,#r,#d{
display:none;}
<%=mainRole%>{
display:block;}

<%=currentBranchFunctions%>{
display:block}
<%=additionalFunctions%>{
display:block;}
</style>
 
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="pageNotFound.jsp" class="site_title"><i class="fa fa-desktop"
							aria-hidden="true"></i> <span class="account">Digi Nepal</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="template/images/user.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome</span>
							<h2><%=userdetail.getUsername()%></h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li id="nava"><a><i class="fa fa-home"></i> Home <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li id="nav1"><a href="view/dashboard.jsp" target="iframe_a">Dashboard</a></li>
										<li id="nav1"><a href="statement.click" target="iframe_a">Statement</a></li>
										<li id="nav1"><a href="signatureupload.click" target="iframe_a">Signature Upload</a></li>
										<li id="nav1"><a href="signatureview.click" target="iframe_a">Signatures View</a></li>
										
									</ul></li>
								<li id="member"><a><i class="fa fa-users" aria-hidden="true"></i> सदस्य दर्ता  Member(With KYM)
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li id="i"><a><span class="fa fa-chevron-down"></span>
												Member</a>
											<ul class="nav child_menu">
												<li><a href="customerinsert.click" target="iframe_a">
														New Member</a></li>
												<!-- <li><a href="pageNotFound.jsp" target="iframe_a">Corporate
														member</a></li> -->
											<!-- </ul></li>
										<li id="v"><a><span class="fa fa-chevron-down"></span>Ammendment
												of Member</a> 
											<ul class="nav child_menu">-->
												<li><a href="viewcustomer.click" target="iframe_a">
														View Member</a></li>
												<li><a href="editcustomersearch.click" target="iframe_a">
														Ammend Member</a></li>
												<!-- <li><a href="pageNotFound.jsp" target="iframe_a">Corporate member</a> -->

											</ul></li>
										<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
												member</a></li>
										<li id="i"><a href="memberdocument.click" target="iframe_a">Member Documents</a></li>

									</ul></li>
								<!-- <li id="shareholder"><a><i class="fa fa-suitcase" aria-hidden="true"></i>Shareholder <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">

										<li id="i"><a href="sharecertificateinsert.click"
											target="iframe_a"> New Shareholder</a></li>
										<li id="v"><a href="searchSCSpecific.click"
											target="iframe_a">Amendment of shareholder</a></li>
									</ul></li> -->
								<li id="retailoperation"><a><i class="fa fa-balance-scale" aria-hidden="true"></i>Retail Operation
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a><span class="fa fa-chevron-down"></span>Account</a>
											<ul class="nav child_menu">
												<li id="i"><a href="insertaccount.click" target="iframe_a">Open
														New member Account</a></li>
												<!-- 	<li><a href="pageNotFound.jsp" target="iframe_a">Open New
														Shareholder Account</a> -->
														<li id="i"><a href="insertfinancialaccount.click"
													target="iframe_a">Open Financial Account</a>
												<li id="v"><a href="viewaccount.click" target="iframe_a">Amendment
														of Account</a></li>
												
												<!-- <li id="v"><a href="pageNotFound.jsp" target="iframe_a">Amendment of
														Financial Account</a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														Account</a> -->
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a">Account
														maintenance</a></li>
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a">Account Closure</a></li>
											</ul></li>
										<li id="cheque"><a><span class="fa fa-chevron-down"></span>Cheque</a>
											<ul class="nav child_menu">
												<li id="i"><a href="issueCheque.click" target="iframe_a">Issue Cheque</a></li>
												<li id="r"><a href="pageNotFound.jsp" target="iframe_a">Reversal of
														issued cheque</a></li>
												<li id="v"><a href="pageNotFound.jsp" target="iframe_a">List issued
														chequese</a></li>
												<li id="v"><a href="pageNotFound.jsp" target="iframe_a">List reversed
														cheques</a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														Issued Cheques</a></li>
											</ul></li>
										<li id="signature"><a><span class="fa fa-chevron-down"></span>Signature</a>
											<ul class="nav child_menu">
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a">Upload Signature
												</a></li>
												<li id="r"><a href="pageNotFound.jsp" target="iframe_a">Reverse Signature</a>
												</li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														signature upload</a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span>Certificate
												of deposits(Time Deposits)</a>
											<ul class="nav child_menu">
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a">New Deposit
														Account </a></li>
												<li id="e"><a href="pageNotFound.jsp" target="iframe_a">Amend Deposit
														Account</a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														Deposit Account</a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span>Teller
												Operation</a>
											<ul class="nav child_menu">
												<li id="nav1"><a href="newtel.click" target="iframe_a">Open New Teller</a></li>
												<li id="nav1"><a href="viewTel.click" target="iframe_a">View Teller</a></li>
												<li id="i"><a href="insertTeller.click?type=cashDeposit" target="iframe_a">Cash
														Deposit </a></li>
												<li id="i"><a href="insertTeller.click?type=cashWithdraw" target="iframe_a">Cash
														Withdraw</a></li>
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a">Cash Withdraw
														without cheque</a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														teller operation</a></li>
											</ul></li>

									</ul></li>
								<li id="generaltransaction"><a><i class="fa fa-tasks" aria-hidden="true"></i> General
										Transaction <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a><span class="fa fa-chevron-down"></span>Funds
												Transfer</a>
											<ul class="nav child_menu">
												<li id="i"><a href="inserttransaction.click" target="iframe_a">New
														Account Transfer </a></li>
												<li id="e"><a href="viewtransaction.click" target="iframe_a">Amend
														Account Transfer</a></li>
												<li><a href="a" target="iframe_a">Authorize Account
														Transfer</a></li>

											</ul></li>
											<li><a><span class="fa fa-chevron-down"></span>Share Account Ledger</a>
											<ul class="nav child_menu">
												<li id="i"><a href="shareAccountLedger.click" target="iframe_a">New
														Account Legder </a></li>
												<li id="i"><a href="viewShareAccountLedger.click" target="iframe_a">View
														Account Legder </a></li>
												<li id="i"><a href="editshareAccountLedgerDisplay.click" target="iframe_a">Amend
														Account Legder </a></li>

											</ul></li>
											
										<li><a><span class="fa fa-chevron-down"></span>
												Journal Entry (Multiple Debit - Multiple Credit) </a>
											<ul class="nav child_menu">
												<li id="i"><a href="insertMultiTxn.click" target="iframe_a">New
														Journal Entry </a></li>
												<li id="v"><a href="viewMultiTxn.click" target="iframe_a">Amend
														Journal Entry </a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a"> Authorize
														Journal Entry </a></li>

											</ul></li>
									</ul></li>

								<li id="loanmodule"><a><i class="fa fa-university" aria-hidden="true"></i> Loan Module <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a><span class="fa fa-chevron-down"></span>Loan</a>
											<ul class="nav child_menu">
											<li id="i"><a href="createnewloan.click" target="iframe_a"> Create New Loan Account
												</a></li>
												<li id="i"><a href="createLoan.click" target="iframe_a"> Update Loan Account
												</a></li>
												<li id="v"><a href="editLoan.click" target="iframe_a">Amendment of Loan
												</a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a">Authorization of
														Loan </a></li>

											</ul></li>
										<li><a href="pageNotFound.jsp" target="iframe_a">Past Due Loan </a></li>
										<li><a href="insertCollateral.click" target="iframe_a">Collateral </a></li>
										<li><a href="insertLimit.click" target="iframe_a">Limit </a></li>
										<li><a href="insertTermDeposits.click" target="iframe_a">Guarantor </a></li>
										<li><a href="pageNotFound.jsp" target="iframe_a">Valuator </a></li>
										<li><a href="emi.click" target="iframe_a">EMI </a></li>
									</ul></li>
								<li id="nonfundbusiness"><a><i class="fa fa-briefcase" aria-hidden="true"></i> Non-fund business
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">

										<li><a href="pageNotFound.jsp" target="iframe_a">Guarantee </a></li>
										<li><a href="pageNotFound.jsp" target="iframe_a"> Letter of Credit </a></li>
									</ul></li>
								<li id="otherutilities"><a><i class="fa fa-list" aria-hidden="true"></i> Other utilities <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">

										<li><a href="pageNotFound.jsp" target="iframe_a">Clearing </a></li>
										<li><a href="pageNotFound.jsp" target="iframe_a"> Reconciliation </a></li>
									</ul></li>
								<li id="reports"><a><i class="fa fa-book" aria-hidden="true"></i> Reports <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">

										<li><a><span class="fa fa-chevron-down"></span> Daily Reports </a>
											<ul class="nav child_menu">

												<li><a href="pageNotFound.jsp" target="iframe_a">User Transaction List  </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">Daily Cash income and expenses  </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Daily Voucher 
												</a></li>
												<li><a href="trialbalance.click" target="iframe_a">  Trial Balance  </a></li>
												<li><a href="testjasper" target="_blank">  Test Jasper  </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">  Search Account and Balance  </a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span> Services Reports </a>
											<ul class="nav child_menu">

												<li><a href="pageNotFound.jsp" target="iframe_a">  Loan outstanding  </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Overdue Loans 
														 </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Search Loan accounts
												</a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span>Financial Reports</a>
											<ul class="nav child_menu">

												<li><a href="adduser.user" target="iframe_a">
														 Balance Sheet  </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">  Profit and Loss Account </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">  Movement sheet </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">  Cash-flow statement </a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span> MIS Report </a>
											<ul class="nav child_menu">

												<li><a href="adduser.user" target="iframe_a">  Management Report </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">  CAMEL
 </a></li>
											</ul></li>
											
											
											
							</ul>
							<li id="intrate"><a><i class="fa fa-university" aria-hidden="true"></i>Interest Rate <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li id="i"><a href="intrate.click" target="iframe_a"> Create New Intrate
												</a></li>
												<li id="i"><a href="viewintrate.click" target="iframe_a"> View Intrate
												</a></li>
												</ul>
												</li>
							<li id="intrate"><a><i class="fa fa-university" aria-hidden="true"></i>Member Documents <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li id="i"><a href="intrate.click" target="iframe_a"> Upload Documents
												</a></li>
												<li id="i"><a href="viewintrate.click" target="iframe_a"> View Documents
												</a></li>
												</ul>
												</li>
						</div>
						<div class="menu_section">
							<h3>Settings</h3>
							<ul class="nav side-menu">
								<li id="adminsettings"><a><i class="fa fa-lock" aria-hidden="true"></i> Admin Settings <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li id="i"><a href="category.click" target="iframe_a">
														 Category</a></li>
										<li id="i"><a href="branch.click" target="iframe_a">Branch/Company
												setup </a></li>
												
										<li id="i"><a href="initialdetails.click" target="iframe_a">Type/Status</a></li>
										
										<li><a href="pageNotFound.jsp" target="iframe_a">
												ChartOfAccount(COA) </a></li>
										<li><a href="pageNotFound.jsp" target="iframe_a"> MigrationtoolSetup
										</a></li>
										<li><a><span class="fa fa-chevron-down"></span>Calender
												Setting</a>
											<ul class="nav child_menu">

												<li><a href="pageNotFound.jsp" target="iframe_a">Nepali Calendar </a></li>
												<li><a href="dateConverter.jsp" target="iframe_a">Date Converter </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">Fiscal Year </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Holiday Setting
												</a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Month End </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Quarter End </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Year End </a></li>
											</ul></li>
											
										<li><a><span class="fa fa-chevron-down"></span>Interest
												Rate</a>
											<ul class="nav child_menu">

												<li><a href="pageNotFound.jsp" target="iframe_a"> Loan Interest
														Rate </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a">Deposit Interest
														Rate </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Commission Rate
												</a></li>
												
												
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span>User</a>
											<ul class="nav child_menu">

												<li id="i"><a href="adduser.user" target="iframe_a">
														Create New user </a></li>
												<li id="i"><a href="addusergroup.user" target="iframe_a">
														Create user Group</a></li>
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a"> Amendment of
														user </a></li>
												<li id="a"><a href="pageNotFound.jsp" target="iframe_a"> Authorize user </a></li>
											</ul></li>
											<li><a><span class="fa fa-chevron-down"></span>Basic Interest Rate</a>
											<ul class="nav child_menu">

												<li id="i"><a href="basicInterestInsert.click" target="iframe_a">New Basic Interest</a></li>
											
												<li id="i"><a href="pageNotFound.jsp" target="iframe_a"> Amendment of
														Basic Interest Rate </a></li>
											</ul></li>
										<li><a><span class="fa fa-chevron-down"></span>Closing</a>
											<ul class="nav child_menu">

												<li><a href="adduser.user" target="iframe_a"> Day
														End </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Month End </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Quarter End </a></li>
												<li><a href="pageNotFound.jsp" target="iframe_a"> Year End </a></li>
											</ul></li>
											<li><a><span class="fa fa-chevron-down"></span>Staff Settings</a>
											<ul class="nav child_menu">
												<li><a href="staffinsert.click" target="iframe_a">New Staff</a></li>
												<li><a href="viewStaff.click" target="iframe_a">View Staff</a></li>
											</ul></li>
									</ul></li>
							</ul>

						</div>

					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<i class="fa fa-cog" aria-hidden="true" style="color:white"></i>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen"
							id="fullscreen"> <i class="fa fa-arrows-alt"
							aria-hidden="true" style="color:white"></i>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <i
							class="fa fa-eye-slash" aria-hidden="true" style="color:white"></i>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="logout.log" id="logout"> <i class="fa fa-sign-out"
							aria-hidden="true" style="color:white"></i>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>
						<span>Current Branch: <%=currentBranchCode %></span>
						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="template/images/user.jpg"
									alt=""><%=userdetail.getUsername()%> <span
									class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="view/settings/userprofile.jsp"
										target="iframe_a"> Profile</a></li>
									<li><a href="javascript:;"> <span>Settings</span>
									</a></li>
									<li><a href="branchselect.click" >Switch Branch</a></li>
									<li><a href="logout.log"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<iframe height="1400px" width="100%" src="view/dashboard.jsp"
					id="Iframe" name="iframe_a" style="border: none;"> </iframe>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					Copyright 2018 <a href="https://diginepal.com.np">Digi-Nepal</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-body">
          <p id="modalmsg">${msg }</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>


	<!-- jQuery -->
	<script src="template/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="template/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="template/js/fastclick.js"></script>
	<!-- NProgress -->
	<script src="template/js/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="template/js/custom.min.js"></script>
	<c:if test="${msg!=null }">
	<script>
	
	$('#myModal').modal('show');
	</script>
</c:if>
  
	 <script type="text/javascript">
    function toggleFullscreen(elem) {
    	  elem = elem || document.documentElement;
    	  if (!document.fullscreenElement && !document.mozFullScreenElement &&
    	    !document.webkitFullscreenElement && !document.msFullscreenElement) {
    	    if (elem.requestFullscreen) {
    	      elem.requestFullscreen();
    	    } else if (elem.msRequestFullscreen) {
    	      elem.msRequestFullscreen();
    	    } else if (elem.mozRequestFullScreen) {
    	      elem.mozRequestFullScreen();
    	    } else if (elem.webkitRequestFullscreen) {
    	      elem.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
    	    }
    	  } else {
    	    if (document.exitFullscreen) {
    	      document.exitFullscreen();
    	    } else if (document.msExitFullscreen) {
    	      document.msExitFullscreen();
    	    } else if (document.mozCancelFullScreen) {
    	      document.mozCancelFullScreen();
    	    } else if (document.webkitExitFullscreen) {
    	      document.webkitExitFullscreen();
    	    }
    	  }
    	}
    document.getElementById('fullscreen').addEventListener('click', function() {
    	  toggleFullscreen();
    	});
    </script>

</body>
</html>
<%
	} else {
		out.println("No User Session Found!");
	}
%>
