<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Purchase Invoice</title>
<style>
.displaynone {
	display: none;
}

.itemdetailinput {
	width: 10%;
}

.inputdetails {
	width: 60%;
	float: right;
}

.top {
	width: 65%;
	float: right;
}
</style>
</head>
<body class="background">
	<div class="col-md-12">
		<form action="http://localhost:8080/api/multransaction/save"
			method="post">
			<input type="hidden" name="receivedby"
				value="${sessionScope.userDetail.username }">

			<div class="row">

				<div class="col-md-12">
					<header class="clearfix">

						<div id="logo"></div>
						<center>
							<h2 class="name">
								<strong>MULTIPLE TRANSACTION</strong>
							</h2>
						</center>
						<hr>
						<div id="notices">
							<div class="form-group">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

									<button class="btn btn-info" type="button" id="validate">Validate</button>
									<input type="submit" class="btn btn-success" value="Submit">

								</div>
							</div>
						</div>
						<hr>
						<div id="seller" class="col-md-3">
							<div>
								<span class="label label-default">Transaction Id*</span> <br>
								<input type="text" id="transactionId" class="form-control date"
									name="transactionId" value="">
							</div>
							<br>
							<div>
								<span class="label label-default ">Currency*</span> <br> <select
									id="currency" name="currency" class="form-control date">
									<option value="NPR">NPR</option>
								</select>
							</div>
							<br>
							<div>
								<span class="label label-default ">Booking Date*</span> <br>
								<input type="text" id="bookingDate" class="form-control date"
									name="bookingDate">
							</div>
						</div>

					</header>
					<main> <br>
					<table id="table"
						class="display table table-striped table-bordered">
						<thead>
							<tr>
								<th><a onclick="addRow()" id="newrow">Add Row+</a></th>
								<th>Account No</th>
								<th>Value Date</th>
								<th>Narration</th>
								<th>Trans. Code</th>
								<th>Amount</th>
								<th>Cheque Number</th>
								<th>Trans. Type</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<tr>
								<td class="col-md-1"><a class="btn btn-link removebtn">DEL</a></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="accountNumber" value=""></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="valueDate" value=""></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="narrative"></td>

								<td class="col-md-1"><input class="form-control"
									type="text" value="" name="transactionCode"></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="amount"></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="cheqNumber"></td>
								<td class="col-md-1"><select class="form-control"
									name="drcr">
										<option value="dr">Dr</option>
										<option value="cr">Cr</option>
								</select></td>
							</tr>
						</tbody>
					</table>
					</main>
				</div>
			</div>
		</form>
	</div>
	<div style="display: none">
		<table>
			<tr id="tablerow">
				<td class="col-md-1"><a class="btn btn-link removebtn">DEL</a></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="accountNumber" value=""></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="valueDate" value=""></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="narrative"></td>

								<td class="col-md-1"><input class="form-control"
									type="text" value="" name="transactionCode"></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="amount"></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="cheqNumber"></td>
								<td class="col-md-1"><select class="form-control"
									name="drcr">
										<option value="dr">Dr</option>
										<option value="cr">Cr</option>
								</select></td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript">
function addRow(){
	var tr = $("#tablerow").html();
	$('#table tbody').append('<tr>'+tr+'</tr>');
}

$('.removebtn').click(function(){
	$(this).closest("tr").remove();
    return false;
});

</script>

</html>