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
		<form action="${formUrl }" method="post">
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
					<table border="0" cellspacing="0" cellpadding="0"
						class="display table table-striped table-bordered">
						<thead>
							<tr>
								<th class="desc"><a onclick="addRow()" id="newrow">Add
										Row+</a></th>
								<th colspan="1">Trans. S.No</th>
								<th class="desc" colspan="1">Account No</th>
								<th class="desc" colspan="1">Value Date</th>
								<th class="total itemdetailinput " colspan="1">Narration</th>
								<th class="total itemdetailinput " colspan="1">Trans. Code</th>
								<th class="total itemdetailinput " colspan="1">Trans. Type</th>
								<th class="total itemdetailinput " colspan="1">Amount</th>
								<th class="total itemdetailinput " colspan="1">Cheque
									Number</th>

							</tr>
						</thead>
						<tbody>
							<tr id="tablerow">

								<td><a onclick="deleteRow(this)" class="removebutton">X</a></td>
								<td colspan="1"></td>

								<td class="desc" colspan="1"><input type="text"
									class="form-control one" name="accountNumber" value=""></td>
								<td class="desc" colspan="1"><input type="text"
									class="form-control two" name="valueDate" value=""></td>
								<td class="total" colspan="1"><input class="form-control"
									type="text" value="" name="narration"></td>
								<td class="total" colspan="1"><input class="form-control"
									type="text" value="" name="transactionCode"></td>
								<td colspan="1"><select class="form-control"
									name="transactionType">
										<option value="dr">Dr</option>
										<option value="cr">Cr</option>
								</select></td>
								<td class="total" colspan="1"><input class="form-control"
									type="text" value="" name="amount"></td>
								<td class="total" colspan="1"><input class="form-control"
									type="text" value="" name="chequeNumber"></td>


							</tr>
						</tbody>

					</table>



					</main>
				</div>

				<div class="col-md-1"></div>
			</div>
		</form>
	</div>
</body>

</html>