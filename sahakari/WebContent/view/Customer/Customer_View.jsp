<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>

</head>
<body class="bgcolor hiddenscroll">
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

	<div class="panel panel-default panel-margin">
		<div class="panel-heading">
			<h6>
				<strong>Customer Details</strong>
			</h6>
		</div>
		<div class="panel-body">
			<table id="example" class="display table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Member Id</th>
						<th>Name</th>
						<th>Registration Date</th>
						<th>Gender</th>
						<th>Date of Birth</th>
						<th>Type Name</th>
						<th>Status Name</th>
						<th><i class="fa fa-cog" aria-hidden="true"></i></th>
					</tr>
				</thead>
				<tbody>
	<%int sno=1; %>
				<c:forEach items="${list}" var="list">
											
					<tr>
						<td><%=sno %></td>
						<td>${list.memberid }</td>
						<td>${list.name }</td>
						<td>${list.registrationDate }</td>
						<td>${list.gender }</td>
						<td>${list.dob }</td>
						<td>${list.typeName }</td>
						<td>${list.statusName }</td>
						<td><div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									Action <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="editcustomer.click?memberid=${list.memberid}" style="color: blue;"><i
											class="fa fa-eye" aria-hidden="true"></i> Show Detail</a></li>
									<li><a class="clickbtn" href="customer.del?id=${list.pid }"
										style="color: red;"><i class="fa fa-trash-o"
											aria-hidden="true"></i> Delete</a></li>
								</ul>
							</div>
							</td>
					</tr>
					<%sno++; %>
					</c:forEach>
				</tbody>
			</table>
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
			 $('#example').DataTable( {
			        dom: 'Bfrtip',
			        buttons: [
			            'print'
			        ]
			    } );
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
		});
		$('.clickbtn').click(function() {
			return confirm('CONFIRM?');
		});
	</script>
</body>
</html>
