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
					id="form1" method="post" action="shareCertificate.add">
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
								value="" data-validation="number" data-validation-error-msg=" ">
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
								name="shareCertNo" value="" data-validation="number"
								data-validation-error-msg=" ">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Legacy
							Account Number </label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control"
								name="accountName" id="alternateAccountNo" value="">
						</div>
					</div>
				</form>
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
				<table id="sharecerttable"
					class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
					<thead>
						<tr>
							<th>Member ID</th>
							<th>Share ID</th>
							<th>Share Certificate No</th>
							<th>From</th>
							<th>To</th>
							<th>Date</th>
							<th>Action</th>
						</tr>
					</thead>
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
		
	</script>
	<script>
		$(document).ready(function() {
			$('#sharecerttable').DataTable({

				"ajax" : "sharecertificatejson.click",
				"columns" : [ {
					"data" : "pid"
				}, {
					"data" : "shareid"
				}, {
					"data" : "sharecertno"
				}, {
					"data" : "sharefrom"
				}, {
					"data" : "shareto"
				}, {
					"data" : "sharedate"
				}, {
					"data" : null,
					defaultContent : "<button id='deletebtn'>Delete</button>"
				} ]
			});
			$("#deletebtn").on('click', 'tr button', function() {
				alert("hello");
				var tr = $(this).closest('tr');
				var data = t.row(tr).data();
				alert(data);
			});
		});
		$("#validate").click(function()

		{
			var id = $('.memberid').val();
			var dataString = 'memberid=' + id;
			$.ajax({
				type : "POST",
				url : "generateShareCertificateId.click",
				data : dataString,
				cache : false,
				success : function(html) {
					
					  var split=html.split("*");
					var acn=split[1];
					var memname=split[0]; 
					var memaddress=split[2];
					$(".accountNo").val(acn);
					$("#membername").html(memname); 
					$("#memberaddress").val(memaddress);
				}
			});

		});
		/* $("#validate").click(function()
				{
				var id=$('.memberid').val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "getmembername.click",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$("#membername").html(html);
				
				} 
				});
				}); */
	</script>
</body>
</html>
<!-- <table class="table">
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Member ID</h5> <input type="text"
									class="form-control sharecertmemberid" name="memberid" value="" data-validation="number"
									data-validation-error-msg=" " required>
								</td>
							</tr>
							<tr>
								<td>
									<h5>Share ID</h5> <input type="text"
									class="form-control " name="shareid" value="" data-validation="number"
									data-validation-error-msg=" ">
								</td>
								<td>
									<h5>Share Certificate No</h5> <input type="text"
									class="form-control" name="shareCertNo" value="" data-validation="number"
									data-validation-error-msg=" ">
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
									name="totalShareNos" value="0" data-validation="number"
									data-validation-error-msg=" ">
								</td>
								<td>
									<h5>Share Rate</h5> <input type="text" class="form-control"
									name="shareRate" value="0">
								</td>
								<td>
									<h5>Share Amount</h5> <input type="text" class="form-control"
									name="shareAmount" value="0" >
								</td>
								<td>
									<h5>Share Date</h5> <input type="text" class="form-control"
									name="shareDate" value="" data-validation="birthdate" data-validation-error-msg=" ">
								</td>

							</tr>
						</tbody>
					</table> -->