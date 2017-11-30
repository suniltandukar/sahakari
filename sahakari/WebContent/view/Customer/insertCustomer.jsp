<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
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
				<li class="breadcrumb-item active" aria-current="page">Customer</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Customer</li>
			</ol>
		</nav>
	</div>
	<div class="panel panel-default panel-margin">
		<div class="panel-body">

			<form class="form-horizontal" id="form1" method="post"
				 action="customer.add">
				<ul class="nav nav-tabs">
					<li><button type="submit" class="btn btn-success" form="form1"
							name="customerForm">Save</button>&nbsp;&nbsp;&nbsp;</li>
					<li class="active"><a data-toggle="tab" data-target="#1">General
							Information</a></li>
					<li><a data-toggle="tab" data-target="#2">Additional
							Information</a></li>

				</ul>
				<br>
				<div class="tab-content">
					<div id="1" class="tab-pane fade in active">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>Member Id</h5> <input type="text" class="form-control"
										name="memberid">
									</td>
									<td>
										<h5>Registration Date</h5> <input type="text"
										class="form-control" name="registrationDate">
									</td>
									<td>
										<h5>Name</h5> <input type="text" class="form-control"
										name="name">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Gender</h5> <select class="form-control" name="gender">
											<option value="m">Male</option>
											<option value="f">Female</option>
											<option value="o">Other</option>
									</select>
									</td>
									<td>
										<h5>Citizenship No</h5> <input type="text"
										class="form-control" name="citizenshipNo">
									</td>
									<td>
										<h5>Citizenship Issued From</h5> <input type="text" class="form-control"
										name="citizenshipIssuedFrom">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Telephone No</h5> <input type="text"
										class="form-control" name="telno" maxlength="10">
									</td>
									<td>
										<h5>Mobile No</h5> <input type="text" class="form-control"
										name="mobno" maxlength="10">
									</td>
									<td>
										<h5>Father's Name</h5> <input type="text" class="form-control"
										name="fatherName" >
									</td>
								</tr>
								<tr>
									<td>
										<h5>Spouse Name</h5> <input type="text"
										class="form-control" name="spouseName" >
									</td>
									<td>
										<h5>Date of birth (DOB)</h5> <input type="text" class="form-control"
										name="dob" >
									</td>
								</tr>
								<tr>
									<td>
										<h5>Type</h5> <select class="form-control"
										name="typeid" >
											<option value="">Select Type</option>
											<c:forEach items="${typelist}" var="type">
												<option value="${type.typeid}">${type.typeName}</option>
											</c:forEach>
										</select>
										</select>
									</td>
									<td>
										<h5>Status</h5> <select class="form-control"
										name="statusid">
										<option value="">Select Status</option>
											<c:forEach items="${statuslist}" var="status">
												<option value="${status.statusid}">${status.statusName}</option>
											</c:forEach>
										</select>
									</td>
								</tr>
							</tbody>
						</table>
						<table class="table" id="permanentAddress">
							<caption>Permanent Address</caption>
							<tbody>
								<tr>
									<td>
										<h5>District</h5> <select class="form-control pdistrict"
										name="pdistid">
											<option value="">Select District</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control pvdcmun"
										name="pvdcmunid">
											<option value="">Select VDC/Muncipality</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control pwardno"
										name="pwardno">
											<option value="">Select Ward No</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<h5>City</h5> <input type="text" class="form-control"
										name="pcity">
									</td>
									<td>
										<h5>Tole</h5> <input type="text" class="form-control"
										name="ptole">
									</td>
								</tr>
							</tbody>
						</table>
						<table class="table" id="temporaryAddress">
							<caption>Temporary Address</caption>
							<tbody>
								<tr>
									<td>
										<h5>District</h5> <select class="form-control tdistrict"
										name="tdistid">
											<option value="">Select District</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control tvdcmun"
										name="tvdcmunid">
											<option value="">Select VDC/Muncipality</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control twardno"
										name="twardno">
											<option value="">Select Ward No</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<h5>City</h5> <input type="text" class="form-control"
										name="tcity">
									</td>
									<td>
										<h5>Tole</h5> <input type="text" class="form-control"
										name="ttole">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="2" class="tab-pane fade in">
						<table>
							<tbody>
								<tr>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="assets/js/dynamicselector.js"></script>
</body>
</html>
