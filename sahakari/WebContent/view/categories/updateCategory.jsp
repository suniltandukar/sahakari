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
</style>
</head>
<body class="background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Category</li>
				<li class="breadcrumb-item active" aria-current="page">Update</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>UPDATE CATEGORY</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal shareCertForm" id="form1" method="post"
					action="shareCertificate.add">

					<table class="table">
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Category ID</h5> <input type="text" class="form-control"
									name="categoryId" value="" required>
								</td>
								<td>
									<h5>Category Head</h5> <input type="text" class="form-control "
									name="categoryHead" value="">
								</td>
								<td>
									<h5>Account Type</h5> <select name="accountType">
										<option value="">Select Account Type</option>
								</select>
								</td>

							</tr>

						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>