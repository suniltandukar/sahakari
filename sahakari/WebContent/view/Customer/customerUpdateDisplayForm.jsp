<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<jsp:include page="/includefile"></jsp:include>
<c:if test="${cdetail!=null}">
<div class="panel panel-default" style="width: 95%; margin: auto;">
		<div class="panel-body">

			<form class="form-horizontal" id="form1" method="post"
				 action="customer.update">
				<ul class="nav nav-tabs">
					<li><button type="submit" class="btn btn-success" form="form1"
							name="customerForm">Update</button>&nbsp;&nbsp;&nbsp;</li>
					<li class="active"><a data-toggle="tab" data-target="#1">General
							Information</a></li>
					<li><a data-toggle="tab" data-target="#2">Family
							Information</a></li>
					<li><a data-toggle="tab" data-target="#3">Job
							Information</a></li>
					<li><a data-toggle="tab" data-target="#4">Bank Account
							Information</a></li>
				</ul>
				<br>
				<div class="tab-content">
					<div id="1" class="tab-pane fade in active">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<input type="hidden" value="${cdetail.pid }" name="pid">
										<h5>Member Id</h5> <input type="text" class="form-control"
										name="memberid" value="${cdetail.memberid}" readonly>
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
											
											<option value="${cdetail.gender }">${cdetail.gender }</option>
											<option value="m" >Male</option>
											<option value="f"  >Female</option>
											<option value="o" >Other</option>
									</select>
									</td>
									<td>
										<h5>Citizenship No</h5> <input type="text"
										class="form-control" name="cusCitizenshipNo" value="${cdetail.cusCitizenshipNo }">
									</td>
									<td>
										<h5>Citizenship Issued From</h5> <select class="form-control"
										name="citizenshipIssuedFrom">
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
										name="typeid">
										<option value="${cdetail.typeid }">${cdetail.typeName }</option>
											<c:forEach items="${typelist}" var="type">
												<option value="${type.typeid}">${type.typeName}</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>Status</h5> <select class="form-control"
										name="statusid">
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
											<option value="${cdetail.pdistid }">${cdetail.pdistName }</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control pvdcmun"
										name="pvdcmunid">
											<option value="${cdetail.pvdcmunid }">${cdetail.pvdcName }</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control pwardno"
										name="pwardno">
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
											<option value="${cdetail.tdistid }">${cdetail.tdistName }</option>
											<c:forEach items="${districtlist}" var="district">
												<option value="${district.districtCode }">${district.districtName }</option>
											</c:forEach>
										</select>
									</td>
									<td>
										<h5>VDC/Muncipality</h5> <select type="text" class="form-control tvdcmun"
										name="tvdcmunid">
											<option value="${cdetail.tvdcmunid }">${cdetail.tvdcName }</option>
										</select>
									</td>
									<td>
										<h5>Ward No.</h5> <select type="text" class="form-control twardno"
										name="twardno">
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
					<div id="2" class="tab-pane fade in">
					<input type="button" name="button"  value="+ Add Relation" class="btn btn-primary addrealtionbtn">
						<table class="table" id="relationtable">
							<tbody>
								<%-- <c:if test="${cusFamilyDetail==null }">
									<tr class="tr_clone">
									<td>
										<h5>Relation</h5> <select class="form-control"
										name="cusRelation">
											<option value="son">Son</option>
										</select>
									</td>
									<td>
										<h5>Relation Name</h5> <input type="text" class="form-control"
										name="cusRelName" value="">
									</td>
									<td>
										<h5>DOB</h5> <input type="text" class="form-control"
										name="dateOfBirth" value="">	
									</td>
									<td>
										<h5>citizenshipNo</h5> <input type="text" class="form-control"
										name="fcitizenshipNo" value="">	
									</td>
									<td>
										<h5>Remarks</h5> <input type="text" class="form-control"
										name="fremarks" value="">	
									</td>
									<td><a><i class='fa fa-times' aria-hidden='true' style='color:red;'></i></a></td>
								</tr>
								</c:if> --%>
								<c:forEach items="${cusFamilyDetail}" var="cfd">
								<tr class="tr_clone">
									<td>
										<h5>Relation</h5> <select class="form-control"
										name="cusRelation">
											<option value="${cfd.cusRelation }">${cfd.cusRelation }</option>
											<option value="son">Son</option>
										</select>
									</td>
									<td>
										<h5>Relation Name</h5> <input type="text" class="form-control"
										name="cusRelName" value="${cfd.cusRelName }">
									</td>
									<td>
										<h5>DOB</h5> <input type="text" class="form-control"
										name="dateOfBirth" value="${cfd.dateOfBirth }">	
									</td>
									<td>
										<h5>citizenshipNo</h5> <input type="text" class="form-control"
										name="fcitizenshipNo" value="${cfd.fcitizenshipNo }">	
									</td>
									<td>
										<h5>Remarks</h5> <input type="text" class="form-control"
										name="fremarks" value="${cfd.fremarks }">	
									</td>
									<td><a><i class='fa fa-times' aria-hidden='true' style='color:red;'></i></a></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						
					</div>
					<div id="3" class="tab-pane fade in">
						<table class="table" >
							<tbody>
								<tr>
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
								</tr>
								<tr>
									<td>
										<h5>Income per year</h5> <input type="text" class="form-control"
										name="incomePeryear" value="">	
									</td>
									<td>
										<h5>Remarks</h5> <input type="text" class="form-control"
										name="jremarks" value="">	
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="4" class="tab-pane fade in">
					<input type="button" name="button"  value="+ Add Bank" class="btn btn-primary addbankbtn">
						<table class="table" id="bankdetailtable">
							<tbody>
								<c:forEach items="${customerBankDetail }" var="cbd">
								<tr>
									<td>
										<h5>Bank Name</h5> <input type="text" class="form-control"
										name="bankName" value="${cbd.bankName }">
											
									</td>
									<td>
										<h5>Account Number</h5> <input type="text" class="form-control"
										name="accountNumber" value="${cbd.accountNumber }">
									</td>
									<td>
										<h5>Account Type</h5> <input type="text" class="form-control"
										name="accountType" value="${cbd.accountType }">	
									</td>
									<td>
										<h5>Remarks</h5> <input type="text" class="form-control"
										name="bremarks" value="${cbd.bremarks }">	
									</td>
									<td><a><i class='fa fa-times' aria-hidden='true' style='color:red;'></i></a></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="assets/js/dynamicselector.js"></script>
	<script>
	 $('.addrealtionbtn').click(function () {
			
		    $('#relationtable tbody').append($('#relationtable tbody tr:last').clone());
		    
	   });
	   $('.addbankbtn').click(function () {

		    $('#bankdetailtable tbody').append($('#bankdetailtable tbody tr:last').clone());
		    
	   });
		$('table').on('click','tr a',function(e){
		    e.preventDefault();
		   $(this).parents('tr').remove();
		 });
		
	 $('form').submit(function(){
		  return confirm("CONFIRM?"); 
	   });
	</script>
	</c:if>
