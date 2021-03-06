<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style type="text/css">
/* Add ajax preloader when server is being requested */
.validating-server-side {
	background: url(img/ajax-preloader.gif) no-repeat center right;
	opacity: 0.6
}
</style>
<style>
h5 {
	font-size: 14px;
	font-weight: bold;
	color:#00030a;
}



</style>
</head>
<body class="hiddenscroll background">

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
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>ADD NEW MEMBER</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal customerForm toggle-disabled"
					id="form1" method="post" action="customer.add">
					<div class="" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
							<li><button type="submit" form="form1"
									class="btn btn-success form">Save Member</button></li>
							<li role="presentation" class="active"><a
								href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
								aria-expanded="true">General Information</a></li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Family Information</a></li>
							<li role="presentation" class=""><a href="#tab_content3"
								role="tab" id="profile-tab2" data-toggle="tab"
								aria-expanded="false">Job Information</a></li>
							<li role="presentation" class=""><a href="#tab_content4"
								role="tab" id="profile-tab3" data-toggle="tab"
								aria-expanded="false">Bank Account Information</a></li>
							<li role="presentation" class=""><a href="#tab_content5"
								role="tab" id="profile-tab4" data-toggle="tab"
								aria-expanded="false">Proof Document</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">
								<table class="table">
									<tbody>
										<tr>
											<td>
												<h5>Member Id</h5> <input type="text"
												class="form-control memberid" name="pid" value="${pid }"
												readonly>
											</td>
											<td>
												<h5>Legacy Member Id</h5> <input type="text"
												class="form-control memberid" name="memberid" value=""
												data-validation="number" data-validation-error-msg=" ">
											</td>
											<td>
												<h5>Name</h5> <input type="text" class="form-control black_color"
												name="name" value="" data-validation="alphanumeric"
												data-validation-error-msg=" ">
											</td>
											
										</tr>
										<tr>
											
											<td>
												<h5>Registration Date(B.S.)</h5> <input type="text"
												class="form-control registrationDate" name="registrationDateNp" value=""
												data-validation="date" data-validation-error-msg=" " 
												onblur="nepaliToEnglish('.registrationDate','.registrationDateen')">
											</td>
											<td>
												<h5>Registration Date(A.D.)</h5> <input type="text"
												class="form-control registrationDateen" name="registrationDate" value=""
												data-validation="date" data-validation-error-msg=" "
												onblur="englishToNepali('.registrationDate','.registrationDateen')">
											</td>
											
											<td>
												<h5>Gender</h5> <select class="form-control black_color" name="gender">
													<option value="Male">Male</option>
													<option value="Female">Female</option>
													<option value="Other">Other</option>
											</select>
											</td> 
										</tr>
										
										<tr>
											<td>
												<h5>Telephone No</h5> <input type="text"
												class="form-control" name="telno" maxlength="10" value=""
												data-validation="number" data-validation-error-msg=" "
												data-validation-optional="true">
											</td>
											<td>
												<h5>Mobile No</h5> <input type="text" class="form-control"
												name="mobno" maxlength="10" value=""
												data-validation="number" data-validation-error-msg=" "
												data-validation-optional="true">
											</td>
											<td>
												<h5>Address</h5> <input type="text" class="form-control"
												name="address" value="">
											</td>
											
										</tr>
										<tr>

											<td>
												<h5>Date of birth (B.S.)</h5> <input type="text" id="dob"
												class="form-control dob" name="dobNp" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="nepaliToEnglish('.dob','.doben')">
											</td>
											<td>
												<h5>Date of birth (A.D.)</h5> <input type="text" id="doben"
												class="form-control doben" name="dob" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="englishToNepali('.dob','.doben')">
											</td>
											<td>
												<h5>VAT/PAN</h5> <input type="text" class="form-control"
												name="fatherName">
											</td>
										</tr>
									</tbody>
								</table>
								<table class="table" id="permanentAddress">
									<caption>Permanent Address</caption>
									<tbody>
									
										<tr>
											<td>
												<h5>District</h5> <select class="form-control pdistrict black_color"
												name="pdistid">
													<option value="0">Select District</option>
													<c:forEach items="${districtlist}" var="district">
														<option value="${district.districtCode }">${district.districtName }</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>VDC/Muncipality</h5> <select type="text"
												class="form-control pvdcmun black_color" name="pvdcmunid">
													<option value="0">Select VDC/Muncipality</option>
											</select>
											</td>
											<td>
												<h5>Ward No.</h5> <select type="text"
												class="form-control pwardno black_color" name ="pwardno">
													<option value="0">Select Ward No</option>
											</select>
											</td>
										</tr>
										<tr>
											<td>
												<h5>City</h5> <input type="text" class="form-control"
												name="pcity" value="">
											</td>
											<td>
												<h5>Tole</h5> <input type="text" class="form-control"
												name="ptole" value="">
											</td>
										</tr>
									</tbody>
								</table>
								<table class="table" id="temporaryAddress">
									<caption>Temporary Address</caption>
									<tbody>
										<tr>
											<td>
												<h5>District</h5> <select class="form-control tdistrict black_color"
												name="tdistid">
													<option value="0">Select District</option>
													<c:forEach items="${districtlist}" var="district">
														<option value="${district.districtCode }">${district.districtName }</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>VDC/Muncipality</h5> <select type="text"
												class="form-control tvdcmun black_color" name="tvdcmunid">
													<option value="0">Select VDC/Muncipality</option>
											</select>
											</td>
											<td>
												<h5>Ward No.</h5> <select type="text"
												class="form-control twardno black_color" name="twardno">
													<option value="0">Select Ward No</option>
											</select>
											</td>
										</tr>
										<tr>
											<td>
												<h5>City</h5> <input type="text" class="form-control"
												name="tcity" value="">
											</td>
											<td>
												<h5>Tole</h5> <input type="text" class="form-control"
												name="ttole" value="">
											</td>
										</tr>
										</tbody>
										</table>
										<table class="table">
										<caption>Additional Details</caption>
										<tbody>
										
										<tr>
											<td>
												<h5>Type</h5> <select class="form-control black_color" name="typeid">
													<option value="0">Select Type</option>
													<c:forEach items="${typelist}" var="type">
														<option value="${type.typeid}">${type.typeName}</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>Status</h5> <select class="form-control black_color" name="statusid">
													<option value="0">Select Status</option>
													<c:forEach items="${statuslist}" var="status">
														<option value="${status.statusid}">${status.statusName}</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>Relationship Officer</h5> <select
												class="form-control black_color" name="agentid">
													<option value="0">Select Officer</option>
													<c:forEach items="${agent }" var="agent">
														<option value="${ agent.agentid}">${agent.agentname }</option>s
													</c:forEach>

											</select>
											</td>
										</tr>
											<tr>
											<td>
												<h5>Email</h5> <input type="text" class="form-control"
												name="email" value="">
											</td>
											</tr>
									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content2"
								aria-labelledby="profile-tab">
								<input type="button" name="button" value="+ Add Relation"
									class="btn btn-primary addrealtionbtn">
								<table class="table relationtable" id="">
									<tbody>
										<tr id="relationrow">
											<td>
												<h5>Relation</h5> <select class="form-control black_color"
												name="cusRelation">
													<option value="">Select Relation</option>
													<c:forEach items="${familyrelationlist}" var="relation">
														<option value="${relation.relationName}">${relation.relationName}</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>Name</h5> <input type="text"
												class="form-control" name="cusRelName" value="">
											</td>
											<td>
												<h5>DOB</h5> <input type="text" class="form-control"
												name="dateOfBirth" value="" data-validation="birthdate"
												data-validation-error-msg=" "
												data-validation-optional="true">
											</td>
											<td>
												<h5>citizenshipNo</h5> <input type="text"
												class="form-control" name="fcitizenshipNo" value=""
												data-validation="number" data-validation-error-msg=" "
												data-validation-optional="true">
											</td>
											<td>
												<h5>Remarks</h5> <input type="text" class="form-control"
												name="fremarks" value="">
											</td>
											<td><a><i class='fa fa-times' aria-hidden='true'
													style='color: red;'></i></a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content3"
								aria-labelledby="profile-tab">
								<input type="button" name="button" value="+ Add Job"
									class="btn btn-primary addjobbtn">
								<table class="table jobtable" id="">
									<tbody>
										<tr id="jobrow">
											<td>
												<h5>Job Name</h5> <input type="text" class="form-control"
												name="cusJob" value="">
											</td>
											<td>
												<h5>Instituion</h5> <input type="text" class="form-control"
												name="cusInstitution" value="">
											</td>
											<td>
												<h5>Post</h5> <input type="text" class="form-control"
												name="cusPost" value="">
											</td>
											<td>
												<h5>Income per year</h5> <input type="text"
												class="form-control" name="incomePeryear" value="0">
											</td>
											<td>
												<h5>Remarks</h5> <input type="text" class="form-control"
												name="jremarks" value="">
											</td>
											<td><a><i class='fa fa-times' aria-hidden='true'
													style='color: red;'></i></a></td>
										</tr>

									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content4"
								aria-labelledby="profile-tab">
								<input type="button" name="button" value="+ Add Bank"
									class="btn btn-primary addbankbtn">
								<table class="table bankdetailtable" id="">
									<tbody>
										<tr id="bankrow">
										
											<td>
												<h5>Bank Name</h5> <input type="text" class="form-control"
												name="bankName" value="">

											</td>
											<td>
												<h5>Account Number</h5> <input type="text"
												class="form-control" name="accountNumber" value="">
											</td>
											<td>
												<h5>Account Type</h5> <input type="text"
												class="form-control" name="accountType" value="">
											</td>
											<td>
												<h5>Remarks</h5> <input type="text" class="form-control"
												name="bremarks" value="">
											</td>
											<td><a><i class='fa fa-times' aria-hidden='true'
													style='color: red;'></i></a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab_content5"
								aria-labelledby="profile-tab">
								<input type="button" name="button" value="New Document"
									class="btn btn-primary adddocumentbtn">
								<table class="table documenttbl" id="">
									<tbody id="documentrow">
								
										<tr >
											<td>
												<h5>Document Type</h5> <select class="form-control black_color"
												name="documentType">
													<option value="">Select Document Type</option>
													<c:forEach items="${docType}" var="doc">
														<option value="${doc.doctypeId}">${doc.doctypeName}</option>
													</c:forEach>
											</select>
											</td>
											<td>
												<h5>Document No</h5> <input type="text" class="form-control"
												name="documentNumber" value="" data-validation="number"
												data-validation-error-msg=" "
												data-validation-optional="true">
											</td>
											<td>
												<h5>Issued By</h5> <input type="text" class="form-control"
												name="issuedBy" value="" data-validation="number"
												data-validation-error-msg=" "
												data-validation-optional="true">
											</td>

										</tr>
										<tr>
											<td>
												<h5>Issue Date(B.S.)</h5> <input type="text"
												class="form-control docissuedateNp" name="issuedDate" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="nepaliToEnglish('.docissuedateNp','.docissuedateen')">
											</td>
											<td>
												<h5>Issue Date(A.D.)</h5> <input type="text"
												class="form-control docissuedateen" name="issuedDateen" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="englishToNepali('.docissuedateNp','.docissuedateen')">
											</td>
											<td>
												<h5>Maturity Date(B.S.)</h5> <input type="text"
												class="form-control docmaturitydateNp" name="expiryDate" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="nepaliToEnglish('.docmaturitydateNp','.docmaturitydateen')">
											</td>
											<td>
												<h5>Maturity Date(A.D.)</h5> <input type="text"
												class="form-control docmaturitydateen" name="expiryDateen" value=""
												data-validation="birthdate" data-validation-error-msg=" "
												data-validation-optional="true" onblur="englishToNepali('.docmaturitydateNp','.docmaturitydateen')">
											</td>

										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
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

	<jsp:include page="/msgmodal"></jsp:include>


	<script type="text/javascript" src="template/js/ajaxFunctions.js"></script>
	<script type="text/javascript" src="template/js/form.js"></script>
	
	<script>
		
	<%if (request.getAttribute("msg") != null) {%>

		$('#myModal').modal('show');
	<%}%>
	$(".addjobbtn").on("click",function() {
				$(".jobtable").append(
						$(".jobtable").find("#jobrow").clone().removeAttr("id").find("input").val("").end());
			});

$(".addrealtionbtn").on("click",function() {
			$(".relationtable").append($(".relationtable").find("#relationrow").clone().removeAttr("id").find("input").val("").end());
		});

$(".adddocumentbtn").on("click",function() {
			$(".documenttbl").append($(".documenttbl").find("#documentrow").clone().removeAttr("id").find("input").val("").end());
		});


$(".addbankbtn").on("click",function() {
			$(".bankdetailtable").append(
					$(".bankdetailtable").find("#bankrow").clone().removeAttr("id").find("input").val("").end());
		});
	</script>
	
</body>
</html>
