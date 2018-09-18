<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
body {
	font-size: 14px;
	font-weight: bold;
	color: #00030a;
}

textarea:focus, input:focus {
	color: #0206ef;
}

.black_color {
	font-weight: bold;
	color: #00030a;
	font-size: 14px;
}
</style>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Retail Operation</li>
				<li class="breadcrumb-item active" aria-current="page">Cheque</li>
				<li class="breadcrumb-item active" aria-current="page">Issue Cheque</li>
					
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-8 col-xs-12">
			<div class="x_panel">
				<form class="form-horizontal form-label-left input_mask"
					method="post" action="http://localhost:8080/api/cheque/issuecheque">
					<!--  action="account.add" -->
					<!-- action="testjasper" -->
					<div class="x_title">
						<h2>ISSUE CHEQUE</h2>
						<div class="clearfix"></div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<button class="btn btn-info" type="button" id="validate">Validate</button>
								<button class="btn btn-primary" type="reset">Reset</button>
								<input type="submit" class="btn btn-success" value="Submit">
							</div>
						</div>
						

					</div>
					<div class="x_content">
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Account Number </label>
							<div class="col-md-4 col-sm-2 col-xs-12">
								<input type="text" id="accountNumber" class="form-control"
									name="accountNumber" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Issue ID</label>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="issueId">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Starting Cheque Number</label>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="startingChequeNumber" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Cheque Quantity</label>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="chequeQuantity" value="">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
