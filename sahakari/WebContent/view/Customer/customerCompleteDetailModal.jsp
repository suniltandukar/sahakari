<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}

.tab-content {
	overflow-x: scroll;
}
</style>
<div class="modal fade bs-example-modal-lg" id="detailModal"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-body">
				<div class="" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
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
							role="tab" id="profile-tab3" data-toggle="tab"
							aria-expanded="false">Document Proof</a></li>

					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tab_content1" aria-labelledby="home-tab">
							<table class="table jambo_table table-striped table-bordered">
								<thead>
									<tr>
										<th>Member Id</th>
										<th>Legacy Id</th>
										<th>Registration Date</th>
										<th>Name</th>
										<th>Address</th>
										<th>Gender</th>
										<th>Citizenship No</th>
										<th>Citizenship Issued From</th>
										<th>Telephone No</th>
										<th>Mobile No</th>
										<th>VAT/PAN</th>
										<th>Spouse Name</th>
										<th>DOB</th>
										<th>Type</th>
										<th>Status</th>
										<th>P District</th>
										<th>P VDC/Muncipality</th>
										<th>P Ward No</th>
										<th>P City</th>
										<th>P Tole</th>
										<th>T District</th>
										<th>T VDC/Muncipality</th>
										<th>T Ward No</th>
										<th>T City</th>
										<th>T Tole</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${cdetail.pid }</td>
										<td>${cdetail.memberid}</td>
										<td>${cdetail.registrationDate}</td>
										<td>${cdetail.name }</td>
										<td>${cdetail.address }</td>
										<td>${cdetail.gender }</td>
										<td>${cdetail.cusCitizenshipNo }</td>
										<td>${cdetail.citidistName }</td>
										<td>${cdetail.telno }</td>
										<td>${cdetail.mobno }</td>
										<td>${cdetail.fatherName }</td>
										<td>${cdetail.spouseName }</td>
										<td>${cdetail.dob }</td>
										<td>${cdetail.typeName }</td>
										<td>${cdetail.statusName}</td>
										<td>${cdetail.pdistName }</td>
										<td>${cdetail.pvdcName }</td>
										<td>${cdetail.pwardno }</td>
										<td>${cdetail.pcity }</td>
										<td>${cdetail.ptole }</td>
										<td>${cdetail.tdistName }</td>
										<td>${cdetail.tvdcName }</td>
										<td>${cdetail.twardno }</td>
										<td>${cdetail.tcity }</td>
										<td>${cdetail.ttole }</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content2"
							aria-labelledby="profile-tab">

							<table class="table jambo_table table-striped table-bordered">
								<thead>
									<tr>
										<th>Relation</th>
										<th>Relation Name</th>
										<th>DOB</th>
										<th>Citizenship No</th>
										<th>Remarks</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach items="${cusFamilyDetail}" var="cfd">
									<tr>
										<td>${cfd.cusRelation }</td>
										<td>${cfd.cusRelName }</td>
										<td>${cfd.dateOfBirth }</td>
										<td>${cfd.fcitizenshipNo }</td>
										<td>${cfd.fremarks }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content3"
							aria-labelledby="profile-tab">
								<table class="table jambo_table table-striped table-bordered">
								<thead>
									<tr>
										<th>Job Name</th>
										<th>Institution</th>
										<th>Post</th>
										<th>Income per year</th>
										<th>Remarks</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach items="${cusJobDetail }" var="cjd">
									<tr>
										<td>${cjd.cusJob }</td>
										<td>${cjd.cusInstitution }</td>
										<td>${cjd.cusPost }</td>
										<td>${cjd.incomePeryear }</td>
										<td>${cjd.jremarks }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content4"
							aria-labelledby="profile-tab">
							<table class="table jambo_table table-striped table-bordered">
								<thead>
									<tr>
										<th>Bank Name</th>
										<th>Account Number</th>
										<th>Account Type</th>
										<th>Remarks</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach items="${customerBankDetail }" var="cbd">
									<tr>
										<td>${cbd.bankName }</td>
										<td>${cbd.accountNumber }</td>
										<td>${cbd.accountType }</td>
										<td>${cbd.bremarks }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content5"
							aria-labelledby="profile-tab">
							<table class="table jambo_table table-striped table-bordered">
								<thead>
									<tr>
										<th>Document Type</th>
										<th>Document Number</th>
										<th>Issued Date(B.S)</th>
										<th>Issued Date(A.D)</th>
										<th>Expiry Date(B.S)</th>
										<th>Expiry Date(A.D)</th>
									</tr>
									
								</thead>
								<tbody>
									<c:forEach items="${customerDocumentDetail }" var="doc">
									<tr>
										<td>${doc.documentType }</td>
										<td>${doc.documentNumber }</td>
										<td>${doc.issuedDate }</td>
										<td>${doc.issuedDateen }</td>
										<td>${doc.expiryDate }</td>
										<td>${doc.expiryDateen }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<div class="pull-left">
					<a class="btn btn-success" id="update"
						href="customereditdisplayform.click?id=${cdetail.pid}">Edit</a> <a
						class="btn btn-danger cm " href="customer.del?id=${cdetail.pid }">Delete</a>
				</div>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script>
$('.cm').click(function(){
	return confirm('Confirm?');
});
</script>