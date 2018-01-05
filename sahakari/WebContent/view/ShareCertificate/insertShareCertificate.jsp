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
				<li class="breadcrumb-item active" aria-current="page">Share
					Certificate</li>
				<li class="breadcrumb-item active" aria-current="page">Add</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>ADD MEMBER SHARE CERTIFICATE</h2>
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
									<h5>Member ID</h5> <input type="text"
									class="form-control sharecertmemberid" name="memberid" value="" required>
								</td>
							</tr>
							<tr>
								<td>
									<h5>Share ID</h5> <input type="text"
									class="form-control " name="shareid" value="">
								</td>
								<td>
									<h5>Share Certificate No</h5> <input type="text"
									class="form-control" name="shareCertNo" value="">
								</td>
								<td>
									<h5>Share From</h5> <input type="text" class="form-control"
									name="shareFrom" value="">
								</td>
								<td>
									<h5>Share To</h5> <input type="text" class="form-control"
									name="shareTo" value="">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Total Share No</h5> <input type="text" class="form-control"
									name="totalShareNos" value="0">
								</td>
								<td>
									<h5>Share Rate</h5> <input type="text" class="form-control"
									name="shareRate" value="0">
								</td>
								<td>
									<h5>Share Amount</h5> <input type="text" class="form-control"
									name="shareAmount" value="0">
								</td>
								<td>
									<h5>Share Date</h5> <input type="text" class="form-control"
									name="shareDate" value="">
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
				<h2>MEMBER DETAILS</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="datatable" class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Member Id</th>
						<th>Name</th>
						<th>Address</th>
						
					</tr>
				</thead>
				<tbody>
	<%int sno=1; %>
				<c:forEach items="${list}" var="list">
											
					<tr>
						<td><%=sno %></td>
						<td>${list.memberid }</td>
						<td>${list.name }</td>
						<td>${list.address }</td>
					</tr>
					<%sno++; %>
					</c:forEach>
				</tbody>
			</table>
			</div>
		</div>
	</div>

	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>SHARE CERTIFICATE DETAIL</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="sharetable" class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Member ID</th>
						<th>Share ID</th>
						<th>Share Certificate No</th>
						<th>From</th>
						<th>To</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
				<%int sn=1; %>
				<c:forEach items="${shareCert}" var="list">
					<tr>
						<td><%=sno %></td>
						<td>${list.memberid }</td>
						<td>${list.shareid }</td>
						<td>${list.shareCertNo }</td>
						<td>${list.shareFrom }</td>
						<td>${list.shareTo }</td>
						<td>${list.shareDate }</td>
					</tr>
					<%sn++; %>
				</c:forEach>
				</tbody>
			</table>
			</div>
		</div>
	</div>
	
	<jsp:include page="/msgmodal"></jsp:include>
	<div class="modal fade" id="memberidmsgmodal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p id="modalmsg"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" class="memberidstatus" value="">
	<script type="text/javascript" src="template/js/form.js"></script> 
	<script type="text/javascript">
		
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	$('#sharetable').DataTable();
	</script>
</body>
</html>