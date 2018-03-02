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
				method="post" action="limit.add">

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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Loan
							Product</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="loanProduct" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Series
							Number(01,02,03,..)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="seriesNumber" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Limit
							Reference</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="limitReference" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Secured/Unsecured</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<select class="form-control" name="limitType">
								<option value="y">Secured</option>
								<option value="n">Unsecured</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Application
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control applicationdatenep" placeholder=""
								name="applicationDate" value="" onblur="nepaliToEnglish('.applicationdatenep','.applicationdateen')">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Application
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control applicationdateen" placeholder=""
								name="applicationDateen" value="" onblur="englishToNepali('.applicationdatenep','.applicationdateen')">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Approved
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control approveddatenep" placeholder=""
								name="approvedDate" value="" onblur="nepaliToEnglish('.approveddatenep','.approveddateen')">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Approved
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control approveddateen" placeholder=""
								name="approvedDateen" value="" onblur="englishToNepali('.approveddatenep','.approveddateen')">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Maturity
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control maturitydatenep" placeholder=""
								name="maturityDate" value="" onblur="nepaliToEnglish('.maturitydatenep','.maturitydateen')">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Maturity
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control maturitydateen" placeholder=""
								name="maturityDateen" value="" onblur="englishToNepali('.maturitydatenep','.maturitydateen')">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Review
							Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control reviewdatenep" placeholder=""
								name="reviewDate" value="" onblur="nepaliToEnglish('.reviewdatenep','.reviewdateen')">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Review
							Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control reviewdateen" placeholder=""
								name="reviewDateen" value="" onblur="englishToNepali('.reviewdatenep','.reviewdateen')">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Last
							Draw Date(B.S.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control lastdrawdatenep" placeholder=""
								name="lastDrawDate" value="" onblur="nepaliToEnglish('.lastdrawdatenep','.lastdrawdateen')">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Last
							Draw Date(A.D.)</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control lastdrawdateen" placeholder=""
								name="lastDrawDateen" value="" onblur="englishToNepali('.lastdrawdatenep','.lastdrawdateen')">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Limit
							Available</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" name="limitAvailable" placeholder=""
								>
											</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Reducing
							Limit</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<select class="form-control" name="reducingLimit">
								<option value="y">Yes</option>
								<option value="n">No</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Approved
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="approvedAmount" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Maximum
							withdrawal Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="maximumWithdrawalAmount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Utilized
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="utilizedAmount" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Balance
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="balanceAmount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Repayment
							Amount</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="repaymentAmount" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Limit
							Transferred To</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="limitTransferredTo" value="">
						</div>
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Limit
							Transferred From</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<input type="text" class="form-control" placeholder=""
								name="limitTransferredFrom" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Limit
							Status</label>
						<div class="col-md-3 col-sm-3 col-xs-12">
							<select class="form-control" 
								name="limitStatus" >
								<option value="new">New</option>
								<option value="renew">Renew</option>
								<option value="maintained">Maintained</option>
								<option value="other">Other</option>
								</select>
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
