<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<c:if test="${cdetail!=null}">
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
										name="memberid" value="${cdetail.memberid}">
									</td>
									<td>
										<h5>Registration Date</h5> <input type="text"
										class="form-control" name="registrationDate" value="${cdetail.registrationDate}">
									</td>
									<td>
										<h5>Name</h5> <input type="text" class="form-control"
										name="name" value="${cdetail.name }">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Gender</h5> <select class="form-control" name="gender">
											<option value="m"  >Male</option>
											<option value="f" >Female</option>
											<option value="o" >Other</option>
									</select>
									</td>
									<td>
										<h5>Citizenship No</h5> <input type="text"
										class="form-control" name="citizenshipNo" value="${cdetail.citizenshipNo }">
									</td>
									<td>
										<h5>Citizenship Issued From</h5> <select class="form-control"
										name="citizenshipIssuedFrom">
										<option value="">Select District</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Telephone No</h5> <input type="text"
										class="form-control" name="telno" maxlength="10" value="${cdetail.telno }">
									</td>
									<td>
										<h5>Mobile No</h5> <input type="text" class="form-control"
										name="mobno" maxlength="10" value="${cdetail.mobno }">
									</td>
									<td>
										<h5>Father's Name</h5> <input type="text" class="form-control"
										name="fatherName" value="${cdetail.fatherName }">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Spouse Name</h5> <input type="text"
										class="form-control" name="spouseName" value="${cdetail.spouseName }" >
									</td>
									<td>
										<h5>Date of birth (DOB)</h5> <input type="text" class="form-control"
										name="dob" value="${cdetail.dob }" >
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
											<option value="0">Select District</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control pvdcmun"
										name="pvdcmunid">
											<option value="0">Select VDC/Muncipality</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control pwardno"
										name="pwardno">
											<option value="0">Select Ward No</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<h5>City</h5> <input type="text" class="form-control"
										name="pcity" value="${cdetail.pcity }">
									</td>
									<td>
										<h5>Tole</h5> <input type="text" class="form-control"
										name="ptole" value="${cdetail.ptole }">
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
											<option value="0">Select District</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control tvdcmun"
										name="tvdcmunid">
											<option value="0">Select VDC/Muncipality</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control twardno"
										name="twardno">
											<option value="0">Select Ward No</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<h5>City</h5> <input type="text" class="form-control"
										name="tcity" value="${cdetail.tcity }">
									</td>
									<td>
										<h5>Tole</h5> <input type="text" class="form-control"
										name="ttole" value="${cdetail.ttole }">
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
	</c:if>
