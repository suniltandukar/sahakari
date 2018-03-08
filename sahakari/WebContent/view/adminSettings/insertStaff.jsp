<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<body class="hiddenscroll bgcolor background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Settings</li>
				<li class="breadcrumb-item active" aria-current="page">Staff Settings</li>
			</ol>
		</nav>
	</div>

	<div class="col-md-8 col-xs-12">
		<div class="x_panel">
			<form class="form-horizontal form-label-left input_mask"
				method="post" action="newstaff.add">

				<div class="x_title">
					<h2>New Staff</h2>

					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button class="btn btn-info" type="button" id="validate">Validate</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Staff
							Code</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="staffCode"
								placeholder="" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Staff
							Name</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="staffName"
								placeholder="" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Address</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="staffAddress"
								placeholder="" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Post</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="Post"
								placeholder="" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Branch
							Code</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="branchCode"
								placeholder="" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Member
							Id</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="Pid" placeholder=""
								value="">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="scriptdiv"></div>
	<jsp:include page="/msgmodal"></jsp:include>
	<script>
		
	</script>
	<script type="text/javascript" src="template/js/form.js"></script>
	<script type="text/javascript" src="template/js/dateconverter.js"></script>
	<script>
		
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
		
	</script>
</body>
</html>
