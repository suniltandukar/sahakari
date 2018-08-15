<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<jsp:include page="/includefile"></jsp:include>

<html>
<head>
<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
</style>
</head>
<body class="background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Shareholder
					</li>
				<li class="breadcrumb-item active" aria-current="page">Open Share Account</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>OPEN SHARE ACCOUNT</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal shareCertForm toggle-disabled"
					id="form1" method="post" action="shareCertificate.update">
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button class="btn btn-info" type="button" id="validate">Validate</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</div>
					<div class="ln_solid"></div>

					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Member
							Id</label>
						<div class="col-md-2 col-sm-2 col-xs-12">
							<input type="text" id="memberid"
								class="form-control sharecertmemberid memberid" name="memberid"
								value="${shareCert.pid }" data-validation="number" data-validation-error-msg=" ">
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 ">
							<p id="membername"></p>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Member
							Address</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" id="memberaddress" name="memberAddress"
								value="" data-validation="number" data-validation-error-msg=" ">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">
							Category</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="form-control categoryid" name="categoryId"
								id="categories">
								<option value="">Select Category</option>
								<c:forEach items="${categorylist }" var="c">
									<option value="${c.categoryId }">${c.categoryId }-${c.categoryHead }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group" id="cashWithdraw">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">
							Account No</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control accountNo"
								name="shareCertNo" value="${shareCert.shareCertNo }" data-validation="number"
								data-validation-error-msg=" ">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Legacy
							Account Number </label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control"
								name="accountName" id="alternateAccountNo" value="${shareCert.alternateAccountNo}">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
