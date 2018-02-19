<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style type="text/css">
/* Add ajax preloader when server is being requested */
.validating-server-side {
	background: url(img/ajax-preloader.gif) no-repeat center right;
	opacity: 0.6
}
</style>


<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
</style>
</head>
<body class="hiddenscroll background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Loan
					Module</li>
				<li class="breadcrumb-item active" aria-current="page">New Loan
				</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>CREATE NEW LOAN</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal customerForm toggle-disabled"
					id="form1" method="post" action="customer.add">
					<div class="" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
							<li><button type="submit" form="form1"
									class="btn btn-success form">Save</button></li>
							<li role="presentation" class="active"><a
								href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
								aria-expanded="true">Loan(Single Value)</a></li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Charges(Multi Value)</a></li>
								<li role="presentation" class=""><a href="#tab_content3"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Limit</a></li>

						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Customer ID</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="customerId">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Account Number</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="accountNumber" >
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest Type</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="interestType" >
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Variable</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="variable">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest Rate</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="interestRate">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Principal Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="principalAmount">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Start Date(B.S.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control startdatenep"
											placeholder="" value="" name="startDate" onblur="nepaliToEnglish('.startdatenep','.startdateen')">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Start Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control startdateen"
											placeholder="" value="" name="startdateen" onblur="englishToNepali('.startdatenep','startdateen')">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity Date(B.S.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control maturityDatenep"
											placeholder="" value="" name="maturityDate" onblur="nepaliToEnglish('.maturityDatenep','.maturityDateen')">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control maturityDateen"
											placeholder="" value="" name="maturityDateen" onblur="englishToNepali('.maturityDatenep','.maturityDateen')">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Repayment Date(B.S)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="repaymentDate" >
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Repayment Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="repaymentDateen" >
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Loan Drawdown Account</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="loanDrawdownAccount" >
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Principal Liq Account</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="principalLiqAccount" >
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest Liq Account</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="interestLiqAccount" >
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Frequency</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="frequency" >
									</div>
								</div>

							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content2"
								aria-labelledby="profile-tab">
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge Debit Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="chargeDebitAmount">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="chargeAmount" >
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge Payment Date(B.S.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="chargePaymentDate" >
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge Payment Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="chargeDebitAmount">
									</div>
								</div>
								
									
									
									
									
								</div>
								
								
									<div role="tabpanel" class="tab-pane fade" id="tab_content3"
								aria-labelledby="profile-tab">
									
										<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit Reference Number</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="limitReferenceNumber">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="LimitAmount" >
									</div>
								</div>
									<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maximum Withdrawal Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="maximumWithdrawalAmount">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Utilized Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="utilizedAmount" >
									</div>
								</div>
									<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Balance Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="balanceAmount">
									</div>
									
								</div>
								
								</div>
								

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
