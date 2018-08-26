<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<style>
.resulttable{
display:none;}
</style>
<head>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Account</li>
				<li class="breadcrumb-item active" aria-current="page">View</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12 ">

		<div class="x_panel">
			<div class="x_title">
				<h2>
					<B>MEMBER ACCOUNT DETAILS</B>
				</h2>

				<a href="insertaccount.click" class="btn btn-info pull-right btn-sm"
					href="">Add New Account</a>


				<div class="clearfix"></div>
			</div>
			<div class="x_content">
			<div class="loader"><p>Loading Please Wait......</p></div>
				<table id="datatable"
					class="table jambo_table table-striped table-bordered resulttable"
					style="font-size: 100%;">
					<thead>
						<tr>
							<th>Member Id</th>
							<th>Account Number</th>
							<th>Account Category</th>
							<th>Account Name</th>
							<th>Balance</th>
							 <th>Alternative Account</th> 
							<th><i class="fa fa-cog" aria-hidden="true"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${accountlist }" var="list">
							<tr>
								<td>${list.pid }</td>
								<td>${list.accountNumber }</td>
								<td>${list.categoryId }</td>
								<td>${list.accountName }</td>
								<td>${list.openingBal }</td>
								<td>${list.alternativeAccounId }</td> 
								<td><a
									href="editaccount.click?accountNumber=${list.accountNumber }"
									 class="btn btn-primary btn-xs">View</a> &nbsp;&nbsp;&nbsp;&nbsp;
										<a href="account.del?id=${list.accountNumber }"
									class="clickbtn btn btn-danger btn-xs">Remove</a></td>
							</tr>
						</c:forEach>
					</tbody>
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
	 $('#datatable').each(function() 
				{
			$(".resulttable").show();
					$(".loader").hide();
				});
			$('.clickbtn').click(function() {
				return confirm('CONFIRM?');
			}); 
		$('.clickbtn').click(function() {
			return confirm('CONFIRM?');
		});
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
		$('#example').DataTable();
	</script>
</body>
</html>
