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
<div id="server-results"></div>
	<div class="col-md-12">
		<form action="http://localhost:8080/api/multransaction/save" id="my_form"
			method="post">
			<input type="hidden" name="inputter"
				value="${sessionScope.userDetail.username }">
				<input type="hidden" name="branchId"
				value="${sessionScope.currentBranchCode }">

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
									name="transactionId" value="${mid }" readonly>
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
									name="bookingDate" required>
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
							<tr id="tablerow">
								<td class=""><a class="removebtn">DEL</a></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="accountNumber" value="" required></td>

								<td class="col-md-2"><input type="text"
									class="form-control" name="valueDate" value=""></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="narrative"></td>

								<td class="col-md-1"><input class="form-control"
									type="text" value="" name="transactionCode"></td>

								<td class="col-md-2"><input class="form-control amount"
									type="text" value="" name="amount"></td>

								<td class="col-md-2"><input class="form-control"
									type="text" value="" name="cheqNumber"></td>
								<td class="col-md-2"><select class="form-control drcr"
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
</body>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/template/js/ajaxformsubmit.js"></script>
 --%><script type="text/javascript">
function addRow(){
	var tr = $("#tablerow").html();
	$('#table tbody').append('<tr>'+tr+'</tr>');
}

$("#my_form").submit(function(event){

    event.preventDefault(); //prevent default action 
    var post_url = $(this).attr("action"); //get form action url
    var request_method = $(this).attr("method"); //get form GET/POST method
    var form_data = $(this).serialize(); //Encode form elements for submission
    
    $.ajax({
        url : post_url,
        type: request_method,
        data : form_data
    }).done(function(response){ //
    	if(response.status == 'OK'){
    	alert("Status: "+response.status);
        location.reload(true);
    	}
    	else{
    		alert("Status: "+response.status);
    	}
    });

});

$(".removebtn").click(function(){
	var closest = $(this).closest("tr");
	alert(closest.length);
	if(closest.length>1){
	closest.remove();
	}
});

</script>

</html>