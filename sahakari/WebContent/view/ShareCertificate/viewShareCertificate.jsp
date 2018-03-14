<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
.resulttable{
display:none;}
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
				<li class="breadcrumb-item active" aria-current="page">View</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12 ">

		<div class="x_panel">
			<div class="x_title">
				<h2><b>SHARE CERTIFICATE DETAILS</b></h2>

				<a href="sharecertificateinsert.click" class="btn btn-info pull-right btn-sm"
					href="">Add New Share</a>


				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="sharecerttable" class="table jambo_table table-striped table-bordered resulttable"
					style="font-size: 100%;">
				<thead>
					<tr>
						<th>Member Id</th>
						<th>Share Certificate No</th>
						<th>From</th>
						<th>To</th>
						<th>Date</th>
						<th>Total Shares</th>
						<th>Share Amount</th>
					</tr>
				</thead>
				
			</table>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p>${msg }</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#sharecerttable').DataTable( {
	        
	        "ajax": "sharecertificate.report",
	        "columns":[
	        	{"data":"pid"},
	        	{"data":"sharecertno"},
	        	{"data":"sharefrom"},
	        	{"data":"shareto"},
	        	{"data":"sharedate"},
	        	{"data":"totalsharenos"},
	        	{"data":"shareAmount"},
	        ]
	    } );
	} );
	
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	</script>
</body>
</html>
