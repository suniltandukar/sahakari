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
				<li class="breadcrumb-item active" aria-current="page">Customer</li>
				<li class="breadcrumb-item active" aria-current="page">View</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12 ">
	
		<div class="x_panel">
			<div class="x_title">
				<h2>MEMBER DETAILS</h2>
				
				<a href="customerinsert.click" class="btn btn-info pull-right" href="">Add New Member</a>
				
				
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
			<div class="loader"><p>Loading Please Wait......</p></div>
				<table  id="datatable" class="table jambo_table table-striped table-bordered resulttable"
					style="font-size: 100%;">
				<thead>
					<tr>
						<th>Member Id</th>
						<th>Legacy Member Id</th>
						<th>Name</th>
						<th>Registration Date</th>
						<th>Gender</th>
						<th>Date of Birth</th>
						<th>Address</th>
						<th><i class="fa fa-cog" aria-hidden="true"></i></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="list">

						<tr>
							<td>${list.pid }</td>
							<td>${list.memberid }</td>
							<td>${list.name }</td>
							<td>${list.registrationDate }</td>
							<td>${list.gender }</td>
							<td>${list.dob }</td>
							<td>${list.address }</td>
							
							<td>
							<a data-value="${list.pid}" class="viewmemberdetail btn btn-primary btn-xs"
											style="color: white;">View </a>&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			</div>
		</div>
	</div>
	<div class="viewDetailModal"></div>
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
	$(document).ready(function(){
		<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	});
	 $('#datatable').each(function() 
			{
		$(".resulttable").show();
				$(".loader").hide();
			});
		$('.clickbtn').click(function() {
			return confirm('CONFIRM?');
		}); 
	
	$('.viewmemberdetail').click(function(){
		var id=$(this).data("value");
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "viewcustomerModal.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$(".viewDetailModal").html(html);
		$('#detailModal').modal('show');
		} 
		});
	});
	
	</script>
</body>
</html>
