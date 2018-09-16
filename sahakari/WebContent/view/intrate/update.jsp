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
				<li class="breadcrumb-item active" aria-current="page">Interest</li>
				<li class="breadcrumb-item active" aria-current="page">Update
					</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="col-md-8 col-xs-12">
			<div class="x_panel">
				<form class="form-horizontal form-label-left input_mask"
					method="post" action="http://localhost:8080/api/intrate/update/${id}">
					<!--  action="account.add" -->
					<!-- action="testjasper" -->
					<div class="x_title">
						<h2>Update Interest</h2>
						<div class="clearfix"></div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<button class="btn btn-info" type="button" id="validate">Validate</button>
								<button class="btn btn-primary" type="reset">Reset</button>
								<a class="btn btn-danger" href="http://localhost:8080/api/intrate/delete/${id}">Delete</a>
								<input type="submit" class="btn btn-success" value="Update">
							</div>
						</div>
					</div>
					<div class="x_content">
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Start
								Date </label>
							<div class="col-md-4 col-sm-2 col-xs-12">
								<input type="text" id="intereststartdate" class="form-control"
									name="intereststartdate" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Category</label>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" id="categoryid" name="categoryid">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4 col-sm-4 col-xs-12">Rate</label>
							<div class="col-md-4 col-sm-4 col-xs-12">
								<input type="text" class="form-control" name="intrate" value="" id="intrate">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<input type="hidden" value="${id }" id="id">
	
	<script>
$(document).ready(function() {
	var id = $("#id").val();
	$.ajax({
		url : "http://localhost:8080/api/intrate/findById/"+id+""
	}).then(function(data) {
		$("#categoryid").val(data.data.categoryid);
		$("#intereststartdate").val(data.data.intereststartdate);
		$("#intrate").val(data.data.intrate);
    });
} );
</script>
</body>
</html>
