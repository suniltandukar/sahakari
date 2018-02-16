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
				<li class="breadcrumb-item active" aria-current="page">Collateral
				</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>CREATE COLLATERAL FORM</h2>
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
								aria-expanded="true">Collateral</a></li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Collateral Detail</a></li>

						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Customer
										ID</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control " name="customerid"
											placeholder="" value="">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Collateral
										Code</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="collateralCode"
											placeholder="" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Valuation
										Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="valuationAmount"
											placeholder="" value="">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Loan
										to Value Ratio(%)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control "
											name="loanToValueRatio" placeholder="" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Execution
										Value</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="executionValue"
											placeholder="" value="">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit
										Reference</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="limitReference"
											placeholder="" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Valuation
										Date(B.S.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control"
											name="valuationDate" placeholder="" value="">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Valuation
										Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="valuationDateen"
											placeholder="" value="">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity
										Date(B.S.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="maturityDate"
											placeholder="" value="">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity
										Date(A.D.)</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control" name="maturityDateen"
											placeholder="" value="">
									</div>
								</div>

							</div>
							
							<div role="tabpanel" class="tab-pane fade" id="tab_content2"
								aria-labelledby="profile-tab">
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Owner Name</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="ownerName"
										placeholder="" value="">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Collateral Unit
									</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<select class="form-control" name="collateralUnit">
										<option value="">Select Collateral Unit</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Auantity/Area</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="area"
										placeholder="" value="">
								</div>
								
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Address</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="address"
										placeholder="" value="">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Mortgage amount
									</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="mortgageAmount"
										placeholder="" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Mortgage Ref No</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="mortgageRefNo"
										placeholder="" value="">
								</div>
								
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Mortgage Date(B.S.)
									</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="mortgageDate"
										placeholder="" value="">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Mortgage Date(A.D.)
									</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="mortgageDateen"
										placeholder="" value="">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Mortgage Office</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="mortgageOffice"
										placeholder="" value="">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Collateral Status
									</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control" name="collateralStatus"
										placeholder="" value="">
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
