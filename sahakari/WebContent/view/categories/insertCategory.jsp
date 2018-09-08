<%@page import="org.json.JSONObject"%>
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
				<li class="breadcrumb-item active" aria-current="page">Category</li>
				<li class="breadcrumb-item active" aria-current="page">Add</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>ADD CATEGORY</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal" method="post" action="category.add">

					<table class="table borderless">
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
									name="categoryHead" value="" required>
								</td>
								<td>
									<h5>Account Type</h5> <select class="form-control"
									name="accountType" required>

										<c:forEach items="${accounttype}" var="at">
											<option value="${at.accountType }">${at.accountType }-${at.accountHead }</option>
										</c:forEach>
								</select>
								</td>

							</tr>

						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>CATEGORIES DETAILS</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="datatable"
					class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
					<thead>
						<tr>
							<th>Category Id</th>
							<th>Category Head</th>
							<th>Account Type</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${categories }" var="c">
						<tr>
							<td>${c.categoryId }</td>
							<td>${c.categoryHead }</td>
							<td>${c.accountType }</td>
							<td><form action="updateCategory.click" method="get"><input type="hidden" name="id" value="${c.categoryId }"><button type="submit" class="btn btn-info" >Edit</button></form></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="categorymodal"></div>

	<jsp:include page="/msgmodal"></jsp:include>
	<script type="text/javascript" src="template/js/form.js"></script>
	<script type="text/javascript">

	$(document).ready(function(){
	
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	 $('.categoryid').click(function(){
		var id=$(this).html();
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "specificCategoryDetail.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$(".categorymodal").html(html);
		$('#categoryModal').modal('show');
		} 
		});
	
	/* getCategoriesDetail.click */
	</script>
</body>
</html>