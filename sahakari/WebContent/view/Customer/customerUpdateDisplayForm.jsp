<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>

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
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>UPDATE MEMBER</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<a href="viewcustomer.click" class="btn btn-info btn-sm pull-right">Go
					Back</a>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<c:if test="${cdetail!=null}">
					<form class="form-horizontal toggle-disabled" id="form1"
						method="post" action="customer.update">
						<div class="" role="tabpanel" data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
								<li><button type="submit" form="form1"
										class="btn btn-success">Update Member</button></li>
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
												<td><h5>Member Id</h5> <input type="text"
													class="form-control" value="${cdetail.pid }" name="pid"
													readonly></td>
												<td>
													<h5>Legacy Id</h5> <input type="text" class="form-control"
													name="memberid" value="${cdetail.memberid}"
													data-validation="number" data-validation-error-msg=" ">
												</td>
												<td>
													<h5>Registration Date</h5> <input type="text"
													class="form-control" name="registrationDate"
													value="${cdetail.registrationDate}">
												</td>

											</tr>
											<tr>
												<td>
													<h5>Name</h5> <input type="text" class="form-control"
													name="name" value="${cdetail.name }">
												</td>
												<td>
													<h5>Address</h5> <input type="text" class="form-control"
													name="address" value="${cdetail.address }">
												</td>
											</tr>
											<tr>
												<td>
													<h5>Gender</h5> <select class="form-control" name="gender">

														<option value="${cdetail.gender }">${cdetail.gender }</option>
														<option value="m">Male</option>
														<option value="f">Female</option>
														<option value="o">Other</option>
												</select>
												</td>
												<td>
													<h5>Citizenship No</h5> <input type="text"
													class="form-control" name="cusCitizenshipNo"
													value="${cdetail.cusCitizenshipNo }">
												</td>
												<td>
													<h5>Citizenship Issued From</h5> <select
													class="form-control" name="citizenshipIssuedFrom">
														<c:if test="${cdetail.citizenshipIssuedFrom==null }">
															<option value="0">Select District</option>
														</c:if>
														<option value="${cdetail.citizenshipIssuedFrom }">${cdetail.citidistName }</option>

														<c:forEach items="${districtlist}" var="district">
															<option value="${district.districtCode }">${district.districtName }</option>
														</c:forEach>
												</select>
												</td>
											</tr>
											<tr>
												<td>
													<h5>Telephone No</h5> <input type="text"
													class="form-control" name="telno" maxlength="10"
													value="${cdetail.telno }">
												</td>
												<td>
													<h5>Mobile No</h5> <input type="text" class="form-control"
													name="mobno" maxlength="10" value="${cdetail.mobno }">
												</td>
												<td>
													<h5>VAT/PAN</h5> <input type="text" class="form-control"
													name="fatherName" value="${cdetail.fatherName }">
												</td>
											</tr>
											<tr>
												<td>
													<h5>Spouse Name</h5> <input type="text"
													class="form-control" name="spouseName"
													value="${cdetail.spouseName }">
												</td>
												<td>
													<h5>Date of birth (DOB)</h5> <input type="text"
													class="form-control" name="dob" value="${cdetail.dob }">
												</td>
											</tr>
											<tr>
												<td>
													<h5>Type</h5> <select class="form-control" name="typeid">
														<c:if test="${cdetail.typeid==null }">
															<option value="0">Select Type</option>
														</c:if>
														<option value="${cdetail.typeid }">${cdetail.typeName }</option>
														<c:forEach items="${typelist}" var="type">
															<option value="${type.typeid}">${type.typeName}</option>
														</c:forEach>
												</select>
												</td>
												<td>
													<h5>Status</h5> <select class="form-control"
													name="statusid">
														<c:if test="${cdetail.statusid==null }">
															<option value="0">Select Status</option>
														</c:if>
														<option value="${cdetail.statusid }">${cdetail.statusName}</option>
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
														<c:if test="${cdetail.pdistid==null }">
															<option value="0">Select District</option>
														</c:if>
														<option value="${cdetail.pdistid }">${cdetail.pdistName }</option>
														<c:forEach items="${districtlist}" var="district">
															<option value="${district.districtCode }">${district.districtName }</option>
														</c:forEach>
												</select>
												</td>
												<td>
													<h5>VDC/Muncipality</h5> <select type="text"
													class="form-control pvdcmun" name="pvdcmunid">
														<c:if test="${cdetail.pvdcmunid==null }">
															<option value="0">Select VDC/Muncipality</option>
														</c:if>
														<option value="${cdetail.pvdcmunid }">${cdetail.pvdcName }</option>
												</select>
												</td>
												<td>
													<h5>Ward No.</h5> <select type="text"
													class="form-control pwardno" name="pwardno">
														<c:if test="${cdetail.pwardno==null }">
															<option value="0">Select Ward No.</option>
														</c:if>
														<option value="${cdetail.pwardno }">${cdetail.pwardno }</option>
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
														<c:if test="${cdetail.tdistid==null }">
															<option value="0">Select District</option>
														</c:if>
														<option value="${cdetail.tdistid }">${cdetail.tdistName }</option>
														<c:forEach items="${districtlist}" var="district">
															<option value="${district.districtCode }">${district.districtName }</option>
														</c:forEach>
												</select>
												</td>
												<td>
													<h5>VDC/Muncipality</h5> <select type="text"
													class="form-control tvdcmun" name="tvdcmunid">
														<c:if test="${cdetail.tvdcmunid==null }">
															<option value="0">Select VDC/Muncipality</option>
														</c:if>
														<option value="${cdetail.tvdcmunid }">${cdetail.tvdcName }</option>
												</select>
												</td>
												<td>
													<h5>Ward No.</h5> <select type="text"
													class="form-control twardno" name="twardno">
														<c:if test="${cdetail.twardno==null }">
															<option value="0">Select Ward No.</option>
														</c:if>
														<option value="${cdetail.twardno }">${cdetail.twardno }</option>
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
								<div role="tabpanel" class="tab-pane fade" id="tab_content2"
									aria-labelledby="profile-tab">
									<input type="button" name="button" value="+ Add Relation"
										class="btn btn-primary addrealtionbtn">
									<table class="table" id="relationtable">
										<tbody>
											<c:if test="${cusFamilyDetail==null }">
												<tr class="tr_clone">
													<td>
														<h5>Relation</h5> <select class="form-control"
														name="cusRelation">
															<option value="">Select Relation</option>
															<c:forEach items="${familyrelationlist}" var="relation">
																<option value="${relation.relationName}">${relation.relationName}</option>
															</c:forEach>
													</select>
													</td>
													<td>
														<h5>Relation Name</h5> <input type="text"
														class="form-control" name="cusRelName" value="">
													</td>
													<td>
														<h5>DOB</h5> <input type="text" class="form-control"
														name="dateOfBirth" value="">
													</td>
													<td>
														<h5>citizenshipNo</h5> <input type="text"
														class="form-control" name="fcitizenshipNo" value="">
													</td>
													<td>
														<h5>Remarks</h5> <input type="text" class="form-control"
														name="fremarks" value="">
													</td>
													<td><a><i class='fa fa-times' aria-hidden='true'
															style='color: red;'></i></a></td>
												</tr>
											</c:if>
											<c:forEach items="${cusFamilyDetail}" var="cfd">
												<tr class="tr_clone">
													<td>
														<h5>Relation</h5> <select class="form-control"
														name="cusRelation">
															<option value="${cfd.cusRelation }">${cfd.cusRelation }</option>
															<c:forEach items="${familyrelationlist}" var="relation">
																<option value="${relation.relationName}">${relation.relationName}</option>
															</c:forEach>
													</select>
													</td>
													<td>
														<h5>Relation Name</h5> <input type="text"
														class="form-control" name="cusRelName"
														value="${cfd.cusRelName }">
													</td>
													<td>
														<h5>DOB</h5> <input type="text" class="form-control"
														name="dateOfBirth" value="${cfd.dateOfBirth }">
													</td>
													<td>
														<h5>citizenshipNo</h5> <input type="text"
														class="form-control" name="fcitizenshipNo"
														value="${cfd.fcitizenshipNo }">
													</td>
													<td>
														<h5>Remarks</h5> <input type="text" class="form-control"
														name="fremarks" value="${cfd.fremarks }">
													</td>
													<td><a><i class='fa fa-times' aria-hidden='true'
															style='color: red;'></i></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="tab_content3"
									aria-labelledby="profile-tab">
									<input type="button" name="button" value="+ Add Job"
										class="btn btn-primary addjobbtn">
									<table class="table" id="jobtable">
										<tbody>
											<c:if test="${cusJobDetail==null }">
												<tr>
													<td>
														<h5>Job Name</h5> <input type="text" class="form-control"
														name="cusJob" value="">
													</td>
													<td>
														<h5>Instituion</h5> <input type="text"
														class="form-control" name="cusInstitution" value="">
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
											</c:if>
											<c:forEach items="${cusJobDetail }" var="cjd">
												<tr>
													<td>
														<h5>Job Name</h5> <input type="text" class="form-control"
														name="cusJob" value="${cjd.cusJob }">
													</td>
													<td>
														<h5>Instituion</h5> <input type="text"
														class="form-control" name="cusInstitution"
														value="${cjd.cusInstitution }">
													</td>
													<td>
														<h5>Post</h5> <input type="text" class="form-control"
														name="cusPost" value="${cjd.cusPost }">
													</td>
													<td>
														<h5>Income per year</h5> <input type="text"
														class="form-control" name="incomePeryear"
														value="${cjd.incomePeryear }">
													</td>
													<td>
														<h5>Remarks</h5> <input type="text" class="form-control"
														name="jremarks" value="${cjd.jremarks }">
													</td>
													<td><a><i class='fa fa-times' aria-hidden='true'
															style='color: red;'></i></a></td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="tab_content4"
									aria-labelledby="profile-tab">
									<input type="button" name="button" value="+ Add Bank"
										class="btn btn-primary addbankbtn">
									<table class="table" id="bankdetailtable">
										<tbody>
											<c:if test="${customerBankDetail==null }">
												<tr>
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
											</c:if>
											<c:forEach items="${customerBankDetail }" var="cbd">
												<tr>
													<td>
														<h5>Bank Name</h5> <input type="text" class="form-control"
														name="bankName" value="${cbd.bankName }">

													</td>
													<td>
														<h5>Account Number</h5> <input type="text"
														class="form-control" name="accountNumber"
														value="${cbd.accountNumber }">
													</td>
													<td>
														<h5>Account Type</h5> <input type="text"
														class="form-control" name="accountType"
														value="${cbd.accountType }">
													</td>
													<td>
														<h5>Remarks</h5> <input type="text" class="form-control"
														name="bremarks" value="${cbd.bremarks }">
													</td>
													<td><a><i class='fa fa-times' aria-hidden='true'
															style='color: red;'></i></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="tab_content5"
									aria-labelledby="profile-tab">
									<input type="button" name="button" value="New Document"
										class="btn btn-primary adddocumentbtn">
									<table class="table" id="documenttbl">
									
										<tbody>
											<c:forEach items="${customerDocumentDetail}" var="doc">
												<tr class="tr_clone">
													<td>
														<h5>Document Type</h5> <select class="form-control"
														name="documentType">
															<option value="${doc.documentType }">${doc.documentType }</option>
															
													</select>
													</td>
													<td>
														<h5>Document No</h5> <input type="text"
														class="form-control" name="documentNumber"
														value="${doc.documentNumber }" data-validation="number"
														data-validation-error-msg=" "
														data-validation-optional="true">
													</td>
													<td>
														<h5>Issued By</h5> <input type="text" class="form-control"
														name="issuedBy" value="${doc.issuedBy }"
														data-validation="number" data-validation-error-msg=" "
														data-validation-optional="true">
													</td>

												</tr>
												<tr>
													<td>
														<h5>Issue Date(B.S.)</h5> <input type="text"
														class="form-control" name="issuedDate"
														value="${doc.issuedDate }" data-validation="birthdate"
														data-validation-error-msg=" "
														data-validation-optional="true">
													</td>
													<td>
														<h5>Issue Date(A.D.)</h5> <input type="text"
														class="form-control" name="issuedDateen"
														value="${doc.issuedDateen }" data-validation=""
														data-validation-error-msg=" "
														data-validation-optional="true">
													</td>
													<td>
														<h5>Maturity Date(B.S.)</h5> <input type="text"
														class="form-control" name="expiryDate"
														value="${doc.expiryDate }" data-validation=""
														data-validation-error-msg=" "
														data-validation-optional="true">
													</td>
													<td>
														<h5>Maturity Date(A.D.)</h5> <input type="text"
														class="form-control" name="expiryDateen"
														value="${doc.expiryDateen }" data-validation=""
														data-validation-error-msg=" "
														data-validation-optional="true">
													</td>
												</tr>
											</c:forEach> 
										</tbody>
										
									</table>
									
								</div>
							</div>
						</div>

					</form>
				</c:if>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="template/js/ajaxFunctions.js"></script>
	<script>
		$('.addrealtionbtn').click(
				function() {

					$('#relationtable tbody').append(
							$('#relationtable tbody tr:last').clone());

				});
		$('.addbankbtn').click(
				function() {

					$('#bankdetailtable tbody').append(
							$('#bankdetailtable tbody tr:last').clone());

				});
		$('.addjobbtn').click(function() {

			$('#jobtable tbody').append($('#jobtable tbody tr:last').clone());

		});
		$('table').on('click', 'tr a', function(e) {
			e.preventDefault();
			$(this).parents('tr').remove();
		});

		$('form').submit(function() {
			return confirm("CONFIRM?");
		});
	</script>
	<!-- <script>
  $.validate({
    lang: 'en',
     modules : 'date,toggleDisabled',
     disabledFormFilter : 'form.toggle-disabled',
     showErrorDialogs : false
     });
</script> -->
</body>
</html>
