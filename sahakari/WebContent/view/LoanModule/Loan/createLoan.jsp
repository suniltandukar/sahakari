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
body {
	font-size: 14px;
	font-weight: bold;
	color: #00030a;
}

.black_color {
	font-size: 14px;
	font-weight: bold;
	color: #0206ef;
}

textarea:focus, input:focus {
	color: #0206ef;
}

/* input[type=text] {
	font-size: 14px;
	font-weight: bold;
	color:#00030a;
}



caption {
	font-size: 14px;
	font-weight: bold;
	color:#0206ef;
}
 */
</style>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
</head>
<body class="hiddenscroll background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Loan
					Module</li>
				<li class="breadcrumb-item active" aria-current="page">New Loan
				</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>CREATE NEW LOAN</h2>
				<p style="color: blue;">${msg }</p>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal customerForm toggle-disabled"
					id="form1" method="post" action="loan.add">
					<div class="" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
							<li><button type="submit" form="form1"
									class="btn btn-success form">Save</button></li>
							<li role="presentation" class="active"><a
								href="#tab_content1" id="home-tab" role="tab" data-toggle="tab"
								aria-expanded="true">Loan</a></li>
							<li role="presentation" class=""><a href="#tab_content2"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Charges</a></li>
							<li role="presentation" class=""><a href="#tab_content3"
								role="tab" id="profile-tab" data-toggle="tab"
								aria-expanded="false">Limit</a></li>

						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in"
								id="tab_content1" aria-labelledby="home-tab">
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Member
										ID</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="${pid }" name="memberid" id="memberid"
											required>
									</div>


									<label class="control-label col-md-2 col-sm-2 col-xs-12">Customer
										Name</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" id="membername" class="form-control"
											name="membername" value="${accountName }" readonly>
									</div>
								</div>



								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Loan
										ID Number</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control accountNumber"
											name="accountNumber" value="${accountNumber }"
											data-validation="number" data-validation-error-msg=" "
											required>
									</div>


									<label class="control-label col-md-2 col-sm-2 col-xs-12">Principal
										Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="principalAmount" required>
									</div>
								</div>



								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest
										Type</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<select class="form-control black_color" id="interestType"
											name="interestType">
											<option value="1">Fixed</option>
											<option value="2">Variable</option>
										</select>
									</div>


									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest
											Rate</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control" id="interestRate"
												placeholder="" value="" name="interestRate" required>
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Start
											Date(B.S.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control startdatenep"
												placeholder="" value="" name="startDate"
												onblur="nepaliToEnglish('.startdatenep','.startdateen')">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Start
											Date(A.D.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control startdateen"
												placeholder="" value="" name="startdateen"
												onblur="englishToNepali('.startdatenep','.startdateen')">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity
											Date(B.S.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control maturityDatenep"
												placeholder="" value="" name="maturityDate"
												onblur="nepaliToEnglish('.maturityDatenep','.maturityDateen')">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Maturity
											Date(A.D.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control maturityDateen"
												placeholder="" value="" name="maturityDateen"
												onblur="englishToNepali('.maturityDatenep','.maturityDateen')">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Repayment
											Date(B.S)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control repaymentdatenep"
												placeholder="" value="" name="repaymentDate"
												onblur="nepaliToEnglish('.repaymentdatenep','.repaymentdateen')">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Repayment
											Date(A.D.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control repaymentdateen"
												placeholder="" value="" name="repaymentDateen"
												onblur="englishToNepali('.repaymentdatenep','.repaymentdateen')">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Loan
											Drawdown Account</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control memberid"
												placeholder="" value="" name="loanDrawdownAccount">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Principal
											Liq Account</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control memberid"
												placeholder="" value="" name="principalLiqAccount">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Interest
											Liq Account</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control memberid"
												placeholder="" value="" name="interestLiqAccount">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Frequency</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control memberid"
												placeholder="" value="" name="frequency">
										</div>
									</div>

								</div>

							</div>



							<div role="tabpanel" class="tab-pane fade" id="tab_content2"
								aria-labelledby="profile-tab">

								<div class="clonediv">
									<input type="button" name="button" value="+ Add Charge"
										class="btn btn-primary copy">
									<div class="chargesdiv">
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
												Debit Amount</label>
											<div class="col-md-3 col-sm-3 col-xs-12">
												<input type="text" class="form-control " placeholder=""
													value="" name="chargeDebitAccount">
											</div>
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
												Amount</label>
											<div class="col-md-3 col-sm-3 col-xs-12">
												<input type="text" class="form-control " placeholder=""
													value="" name="chargeAmount">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
												Payment Date(B.S.)</label>
											<div class="col-md-3 col-sm-3 col-xs-12">
												<input type="text" class="form-control" placeholder=""
													value="" name="chargePaymentDate">
											</div>
											<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
												Payment Date(A.D.)</label>
											<div class="col-md-3 col-sm-3 col-xs-12">
												<input type="text" class="form-control" placeholder=""
													value="" name="chargeDebitAmount">
											</div>
										</div>
									</div>
								</div>
							</div>


							<div role="tabpanel" class="tab-pane fade" id="tab_content3"
								aria-labelledby="profile-tab">

								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit
										Reference Number</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="limitReferenceNumber">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit
										Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="LimitAmount">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Maximum
										Withdrawal Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="maximumWithdrawalAmount">
									</div>
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Utilized
										Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="utilizedAmount">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-2 col-sm-2 col-xs-12">Balance
										Amount</label>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<input type="text" class="form-control memberid"
											placeholder="" value="" name="balanceAmount">
									</div>

								</div>

							</div>

						</div>
<<<<<<< HEAD
=======



						<div role="tabpanel" class="tab-pane fade" id="tab_content2"
							aria-labelledby="profile-tab">

							<div class="clonediv">
								<input type="button" name="button" value="+ Add Charge"
									class="btn btn-primary copy">
								<div class="chargesdiv">
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
											Debit Amount</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control " placeholder=""
												value="" name="chargeDebitAccount">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
											Amount</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control " placeholder=""
												value="0" name="chargeAmount">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
											Payment Date(B.S.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control" placeholder=""
												value="" name="chargePaymentDate">
										</div>
										<label class="control-label col-md-2 col-sm-2 col-xs-12">Charge
											Payment Date(A.D.)</label>
										<div class="col-md-3 col-sm-3 col-xs-12">
											<input type="text" class="form-control" placeholder=""
												value="" name="chargeDebitAmount">
										</div>
									</div>
								</div>
							</div>
						</div>


						<div role="tabpanel" class="tab-pane fade" id="tab_content3"
							aria-labelledby="profile-tab">

							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit
									Reference Number</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control memberid" placeholder=""
										value="" name="limitReferenceNumber">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Limit
									Amount</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control memberid" placeholder=""
										value="" name="LimitAmount">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Maximum
									Withdrawal Amount</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control memberid" placeholder=""
										value="" name="maximumWithdrawalAmount">
								</div>
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Utilized
									Amount</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control memberid" placeholder=""
										value="" name="utilizedAmount">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-2 col-sm-2 col-xs-12">Balance
									Amount</label>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="text" class="form-control memberid" placeholder=""
										value="" name="balanceAmount">
								</div>

							</div>

						</div>

					</div>
>>>>>>> branch 'master' of https://github.com/hackersdelima/sahakari.git
					</div>
				</form>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="assets/js/autoSelection.js"></script>
	<script type="text/javascript" src="assets/js/form.js"></script>
	<script>
		$(document).ready(function() {
			$('.copy').click(function() {
				$('.clonediv').append($('.chargesdiv').html())
			})
		})
	</script>

	<script>
		$("#form1").submit(function() {
			return confirm("Submit?");
		})
		/* $("#validate").click(function() */
		$("#memberid").blur(function() {

			var id = $('.memberid').val();
			var dataString = 'id=' + id;
			$.ajax({
				type : "POST",
				url : "getmembername.click",
				data : dataString,
				cache : false,
				success : function(html) {

					$("#membername").val(html);
					/* 	$("#accountname").val(html); */
				}
			});
		});
		$("#categories").change(function() {
			var id = $(this).val();
			var dataString = 'id=' + id;

			$.ajax({
				type : "POST",
				url : "showaccounttype.click",

				data : dataString,
				cache : false,
				success : function(html) {
					$("#accounttype").html(html);
				}
			});

		});
		/* $("#validate").click(function() */
		$("#memberid").blur(function() {

			var id = $('.memberid').val();
			var dataString = 'memberid=' + id;
			$.ajax({
				type : "POST",
				url : "generateaccountno.click",
				data : dataString,
				cache : false,
				success : function(html) {
					$(".accountNumber").val(html);
				}
			});

		});
		$("#interestType").change(function() {
			var interestType = $(this).val();
			if (interestType == 'variable') {
				$("#interestRate").prop('required', false);
			} else {
				$("#interestRate").prop('required', true);
			}
		})
	</script>



</body>
</html>
