<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>

<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
#${
type




}
{
display




:none




;
}
</style>
</head>
<body class="hiddenscroll bgcolor background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Loan
					Module</li>
				<li class="breadcrumb-item active" aria-current="page">Limit</li>
			</ol>
		</nav>
	</div>

	<div class="col-md-8 col-xs-12">
		<div class="x_panel">
			<form class="form-horizontal form-label-left input_mask"
				method="post" action="teller.add">

				<div class="x_title">
					<h2>CREATE LIMIT</h2>

					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br />

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Customer
							Id</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder="" name="pid"
								value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Account
							Number</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="accountNumber" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Interest
							Rate Fixed</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="interestRateFixed" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tax
							Rate</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="taxRate" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="amount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Start
							Date(B.S)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="startDate" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Start
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="startDateen" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Maturity
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="maturityDate" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Maturity
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="maturityDateen" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Interest
							Freq</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<select class="form-control" name="interestFreq">
								<option value="">Select Freq</option>
							</select>
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Interest
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="interestAmount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Total
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="totalAmount" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Principal
							Dr Account</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="principalDrAccount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Interest
							Cr Account</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="interestCrAccount" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Principal
							Cr Account</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="principalCrAccount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Close
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="closeDate" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Close
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="closeDateen" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeDate" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeDateen" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Category</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeCategory" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeAmount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Rate</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeRate" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Total
							Charge Days</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="totalChargeDays" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Charge
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="chargeAmount" value="">
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button class="btn btn-info" type="button" id="validate">Validate</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</div>


				</div>
			</form>
		</div>
	</div>

</body>
</html>
