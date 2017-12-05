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
				<li class="breadcrumb-item active" aria-current="page">Share Certificate</li>
				<li class="breadcrumb-item active" aria-current="page">View</li>
			</ol>
		</nav>
	</div>

	<div class="panel panel-default panel-margin">
		<div class="panel-heading">
			<h6>
				<strong>Share Certificate Details</strong>
			</h6>
		</div>
		<div class="panel-body">
			<table id="example" class="display table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Member ID</th>
						<th>Share Certificate No</th>
						<th>From</th>
						<th>To</th>
						<th>Date</th>
						<th><i class="fa fa-cog" aria-hidden="true"></i></th>
					</tr>
				</thead>
				<tbody>
				<%int sno=1; %>
				<c:forEach items="${shareCert}" var="list">
					<tr>
						<td><%=sno %></td>
						<td>${list.memberid }</td>
						<td>${list.shareCertNo }</td>
						<td>${list.shareFrom }</td>
						<td>${list.shareTo }</td>
						<td>${list.shareDate }</td>
						<td><div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									Action <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="editsharecertificate.click?id=${list.shareCertificateId}" style="color: blue;"><i
											class="fa fa-eye" aria-hidden="true"></i> Show Detail</a></li>
									<li><a class="clickbtn" href="sharecertificate.del?id=${list.shareCertificateId }"
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
			 $('#example').DataTable();
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
