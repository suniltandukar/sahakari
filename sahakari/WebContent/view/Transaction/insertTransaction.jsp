<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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
				<li class="breadcrumb-item active" aria-current="page">Transaction</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Transaction</li>
			</ol>
		</nav>
	</div>
	<div class="panel panel-default panel-margin">
		<div class="panel-heading">
			<h4>Add Transaction</h4>
		</div>
		<div class="panel-body">

			<form class="form-horizontal shareCertForm" id="form1" method="post"
				action="transaction.add">
				<div id="1" class="tab-pane fade in active">
					<table class="table">
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Transaction Id</h5> <input type="text"
									class="form-control sharecertmemberid" name="Id" value="">
								</td>
								<td>
										<h5>Reference No</h5> <input type="text"
									class="form-control" name="refNo" value="" required>
									</td>
								<td>
									<h5>Transaction Type</h5> <input type="text"
									class="form-control" name="transactionType" value="">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Value Date</h5> <input type="text"
									class="form-control" name="valueDate" value="" >
								</td>
								<td>
									<h5>Booking Date</h5> <input type="text" class="form-control"
									name="bookingDate">
								</td>
								<td>
									<h5>Debit Account Number</h5> <input type="text"
									class="form-control" name="debitAccountNumber" value="">
								</td>
							</tr>
							<tr>
								
								<td>
									<h5>Debit Currency</h5> <input type="text"
									class="form-control" name="debitCurrency" value="">
								</td>
								<td>
									<h5>Debit Narrative</h5> <input type="text"
									class="form-control" name="debitNarrative" value="">
								</td>
								<td>
									<h5>Credit Account Number</h5> <input type="text"
									class="form-control" name="creditAccountNumber" value="">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Credit Currency</h5> <input type="text"
									class="form-control" name="creditCurrency" value="">
								</td>
								<td>
									<h5>Credit Narative</h5> <input type="text"
									class="form-control" name="creditNarative" value="">
								</td>
									<td>
									<h5>Amount</h5> <input type="text"
									class="form-control" name="amount" value="">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Commission Code</h5> <input type="text"
									class="form-control" name="commissionCode" value="">
								</td>
								<td>
									<h5>Commission Type</h5> <input type="text"
									class="form-control" name="commissionType" value="">
								</td>
								<td>
									<h5>Commission Amount</h5> <input type="text"
									class="form-control" name="commissionAmount" value="">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Cheque Number</h5> <input type="text"
									class="form-control" name="chequeNumber" value="">
								</td>
								<td>
									<h5>Processing Date</h5> <input type="text"
									class="form-control" name="processingDate" value="">
								</td>
								<td>
									<h5>Override</h5> <input type="text"
									class="form-control" name="Override" value="">
								</td>
							</tr>
							<tr>
								
								<td>
									<h5>Record Status</h5> <input type="text"
									class="form-control" name="recordStatus" value="">
								</td>
								<td>
									<h5>Branch Code</h5> <input type="text"
									class="form-control" name="branchCode" value="">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/msgmodal"></jsp:include>
	<script type="text/javascript" src="assets/js/form.js"></script>
	<script>
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	  
</script>
</body>
</html>
