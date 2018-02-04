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
#${type}{
display:none;
}
</style>
</head>
<body class="hiddenscroll bgcolor background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Transaction</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Teller Transaction</li>
			</ol>
		</nav>
	</div>
	<%--  <div class="panel panel-default " style="width: 95%; margin: auto;">
		<div class="panel-heading">
			<h4>Add Teller Transaction</h4>
		</div>
		<div class="panel-body">

			<form class="form-horizontal shareCertForm" id="form1" method="post"
				action="teller.add">
				<div id="1" class="tab-pane fade in active">
					<table class="table">
						<tbody>
						<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td><h5>Transaction Id</h5> <input type="text"
									class="form-control" name="transactionid" data-validation="alphanumeric" 
									data-validation-error-msg=" " value="${tellerid }">
								</td>
							</tr>
							<tr>
								<td><h5>Branch Id</h5> <input type="text"
									class="form-control" name="branchid" data-validation="number" 
									data-validation-error-msg=" " value="">
								</td>
								<td><h5>Booking Date</h5> <input type="text"
									class="form-control" name="bookingdate" 
									data-validation="date" 
									data-validation-error-msg=" " value=""
									data-validation-optional="true">
								</td>
								<td><h5>Value Date</h5> <input type="text"
									class="form-control" data-validation="date" 
									data-validation-error-msg=" " name="valuedate" value=""
									data-validation-optional="true">
								</td>
							</tr>
							<tr>
								<td><h5>Process Date</h5> <input type="text"
									class="form-control" name="processdate" 
									data-validation="date" 
									data-validation-error-msg=" " value=""
									data-validation-optional="true">
								</td>
								<td id="cashDeposit"><h5>Debit Account Number</h5> <input type="text"
									class="form-control" name="debitaccountnumber" value=""
									data-validation="number" 
									data-validation-error-msg=" "
									data-validation-optional="true" >
								</td>
								<td id="cashWithdraw"><h5>Credit Account Number</h5> <input type="text"
									class="form-control" name="creditaccountnumber" 
									data-validation="number" 
									data-validation-error-msg=" "  value=""
									data-validation-optional="true">
								</td>
							</tr>
							<tr>
								<td><h5>Narrative</h5> <input type="text"
									class="form-control" name="narrative" value=""
									>
								</td>
								<td><h5>Cheque Number</h5> <input type="text"
									class="form-control" data-validation="number" 
									data-validation-error-msg=" "  name="chequenumber" value=""
									data-validation-optional="true">
								</td>
								<td><h5>Amount</h5> <input type="text"
									class="form-control" name="amount" data-validation="number" 
									data-validation-error-msg=" " value=""
									data-validation-optional="true">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div> --%>
	<div class="col-md-8 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Cash Deposit 
									</h2>
									<div class="col-md-3 col-sm-3 col-xs-12 pull-right">
												<input type="text" class="form-control"
													placeholder="" name="transactionid" value="${tellerid }" readonly>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form class="form-horizontal form-label-left input_mask" method="post"
				action="teller.add">

										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12" >Customer</label>
											<div class="col-md-2 col-sm-2 col-xs-12">
												<input type="text" class="form-control memberid"
													placeholder="" val="" readonly>
											</div>
											<div class="col-md-8 col-sm-8 col-xs-12 ">
											<span id="customername"></span></div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Booking Date</label>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<input type="text" class="form-control"
													placeholder="">
											</div>
										</div>
										<div class="form-group" id="cashWithdraw">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Credit Account</label>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<input type="text" class="form-control" name="creditaccountnumber" id="creditaccountnumber"
													placeholder="">
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12 " ><span class="accountName"></span>
											</div>
										</div>
										<div class="form-group" id="cashDeposit">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Debit Account</label>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<input type="text" id="debitaccountnumber" class="form-control" name="debitaccountnumber"
													placeholder="">
											</div>
											<div class="col-md-6 col-sm-6 col-xs-12 "><span class="accountName"></span>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Value Date </label>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<input type="date" name="valuedate" class="form-control"
													placeholder="">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Cheque No</label>
											<div class="col-md-7 col-sm-7 col-xs-12">
												<input type="text" class="form-control" name="chequenumber"
													placeholder="">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Narrative</label>
											<div class="col-md-7 col-sm-7 col-xs-12">
												<input type="text" class="form-control" name="narrative"
													placeholder="">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">New Current Balance</label>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<input type="text" class="form-control" disabled
													placeholder="">
											</div>
										</div>
										
										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
											<button class="btn btn-info" type="button" id="validate">Validate</button>
												<button class="btn btn-primary" type="reset">Reset</button>
												<button type="submit" class="btn btn-success">Submit</button>
											</div>
										</div>

									</form>
								</div>
							</div>
							
	</div>
	<div class="scriptdiv"></div>
	<jsp:include page="/msgmodal"></jsp:include>
	<script>
  $.validate({
    lang: 'en',
    modules : 'date,toggleDisabled',
	  disabledFormFilter : 'form.toggle-disabled',
	 showErrorDialogs : false

    });
</script> 
	<script type="text/javascript" src="assets/js/form.js"></script>
	<script>
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	  
</script>
<script>
//Ajax
$("#validate").click(function()
		{
		var craccount=$('#creditaccountnumber').val();
		var draccount=$('#debitaccountnumber').val();
		var dataString = {'craccount':craccount,'draccount':draccount};/* 'craccount='+ craccount & 'draccount='+draccount; */
		
		$.ajax
		({
		type: "POST",
		url: "showaccountname.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
			$('.scriptdiv').html(html);
		} 
		});
});
</script>
</body>
</html>
