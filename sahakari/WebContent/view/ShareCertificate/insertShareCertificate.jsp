<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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
<body class="hiddenscroll bgcolor">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Share Certificate</li>
				<li class="breadcrumb-item active" aria-current="page">Add</li>
			</ol>
		</nav>
	</div>
	<div class="panel panel-default panel-margin">
		<div class="panel-heading">
			<h4>Customer Share Certificate</h4>
		</div>
		<div class="panel-body">

			<form class="form-horizontal" id="form1" method="post"
				 action="shareCertificate.add">
				
						<table class="table">
							<tbody>
								<tr>
									<td>
										<input type="submit" class="btn btn-success" value="Save">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Member ID</h5> <input type="text" class="form-control memberid"
										name="memberid" value="">
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
										name="totalShareNos" value="">
									</td>
									<td>
										<h5>Share Rate</h5> <input type="text" class="form-control"
										name="shareRate" value="">
									</td>
									<td>
										<h5>Share Amount</h5> <input type="text" class="form-control"
										name="shareAmount" value="">
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
	<jsp:include page="/msgmodal"></jsp:include>
	<script type="text/javascript">
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	   $('form').submit(function(){
			  return confirm("CONFIRM?"); 
		   });
	   
	</script>
</body>
</html>