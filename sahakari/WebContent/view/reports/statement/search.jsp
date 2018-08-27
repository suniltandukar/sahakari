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

.alert {
	position: absolute;
	left: 0px;
	top: 0px;
	z-index: 1;
}

.black_color {
	font-weight: bold;
	color: #00030a;
	font-size: 14px;
}
</style>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Account</li>
				<li class="breadcrumb-item active" aria-current="page">Statement
				</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">



		<div class="col-md-8 col-xs-12">
			<div class="x_panel">
				<form class="form-horizontal form-label-left input_mask"
					method="post" action="generateStatement.click">
					<!--  action="account.add" -->
					<!-- action="testjasper" -->
					<div class="x_title">
						<h2>Generate Statement</h2>
						<c:if test="${not empty msg }">
							<div class="col-md-4 col-sm-4 col-xs-12 pull-right">
								<div class="alert alert-danger">
									<strong>${msg }</strong>
								</div>
							</div>
						</c:if>

						<div class="clearfix"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<button class="btn btn-info" type="button" id="validate">Validate</button>
								<button class="btn btn-primary" type="reset">Reset</button>
								<input type="submit" class="btn btn-success" value="Generate">
							</div>
						</div>
					</div>
					<div class="x_content">
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Account
								Number</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="accountNumber" class="form-control"
									name="accountNumber">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Value
								Date From</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="datefrom" class="form-control"
									name="datefrom">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Value
								Date To</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="datefrom" class="form-control"
									name="dateto">
							</div>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(".alert").delay(2000).slideUp(200, function() {
		$(this).alert('close');
	});
	</script>
</body>
</html>
