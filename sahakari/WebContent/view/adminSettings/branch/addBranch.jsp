<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
/* .borderless td, .borderless th {
    border-bottom-style: hidden;
     border-top-style: hidden;
} */
</style>
</head>
<body class="background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Admin Settings</li>
				<li class="breadcrumb-item active" aria-current="page">Branch/Company Setup</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2><strong>INSERT NEW BRANCH</strong></h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal"  method="post"
					action="branch.add">

					<table class="table borderless" >
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Company ID</h5> <input type="text"
									class="form-control" name="companyId" value="" required>
								</td>
								<td>
									<h5>Branch ID</h5> <input type="text"
									class="form-control" name="branchId" value="" required>
								</td>
								<td>
									<h5>Branch Name</h5> <input type="text"
									class="form-control" name="branchName" value="" required>
								</td>
								
								
							</tr>
							<tr>
							<td>
									<h5>Branch Address</h5> <input type="text"
									class="form-control" name="branchAddress" value="" required>
								</td>
								<td>
									<h5>Branch Phone</h5> <input type="text"
									class="form-control" name="branchPhone" value="" required>
								</td>
								<td>
									<h5>Branch Fax</h5> <input type="text"
									class="form-control" name="branchFax" value="" required>
								</td>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/msgmodal"></jsp:include>
	<script type="text/javascript" src="template/js/form.js"></script> 
	<script type="text/javascript">
		
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	
	</script>
</body>
</html>