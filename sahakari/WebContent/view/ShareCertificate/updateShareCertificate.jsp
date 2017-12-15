<style>
h5{
font-size:80%;
font-weight:bold;}
</style>
<jsp:include page="/includefile"></jsp:include>
<div class="panel panel-default" style="width: 95%; margin: auto;">
		<div class="panel-heading">
			<h4>Customer Share Certificate</h4>
			<h5><b>Member Id:</b> ${shareCert.memberid }</h5>
		</div>
		<div class="panel-body">

			<form class="form-horizontal" id="form1" method="post"
				 action="sharecertificate.update">
				
						<table class="table">
							<tbody>
								<tr>
									<td>
										<input type="submit" class="btn btn-success" value="Update">
										<input type="hidden" value="${shareCert.shareCertificateId }" name="shareCertificateId" >
									</td>
								</tr>
								<tr>
									
									<td>
										<h5>Share Certificate No</h5> <input type="text"
										class="form-control" name="shareCertNo" value="${shareCert.shareCertNo }">
									</td>
									<td>
										<h5>Share From</h5> <input type="text" class="form-control"
										name="shareFrom" value="${shareCert.shareFrom }">
									</td>
									<td>
										<h5>Share To</h5> <input type="text" class="form-control"
										name="shareTo" value="${shareCert.shareTo }">
									</td>
								</tr>
								<tr>
									<td>
										<h5>Total Share No</h5> <input type="text" class="form-control"
										name="totalShareNos" value="${shareCert.totalShareNos }">
									</td>
									<td>
										<h5>Share Rate</h5> <input type="text" class="form-control"
										name="shareRate" value="${shareCert.shareRate }">
									</td>
									<td>
										<h5>Share Amount</h5> <input type="text" class="form-control"
										name="shareAmount" value="${shareCert.shareAmount }">
									</td>
									<td>
										<h5>Share Date</h5> <input type="text" class="form-control"
										name="shareDate" value="${shareCert.shareDate }">
									</td>
									
								</tr>
							</tbody>
						</table>
			</form>
		</div>
	</div>
	<script>
		$('form').submit(function(){
			return confirm('Confirm?');
		});
	</script>