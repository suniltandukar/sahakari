<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home"
				aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Reports</li>
			<li class="breadcrumb-item active" aria-current="page">Daily
				Reports</li>
			<li class="breadcrumb-item active" aria-current="page">Emi</li>
		</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>EMI REPORT GENERATOR</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<form id="calculateForm" method="post" action="calculate.add">
				<div class="x_content">

					<table class="table">

						<tbody>
							<tr>
								<td>Account No: <input type="text" name="accountno"
									class="form-control" form="calculateForm" required>
								</td>
								<td>Account Holder <input type="text" name="accountholder"
									class="form-control" form="calculateForm" required>
								</td>
							</tr>
							<tr>
								<td>Principal <input type="text" name="amount"
									class="form-control" form="calculateForm" value="0" required>
								</td>
								<td>EMI Liquidation Account
								 <input type="text" name="emiliquidation"
									class="form-control" form="calculateForm"  required>
									</td>
							</tr>
							 <tr>
                                  <td>
                                       <h5>Loan Start Date(B.S.)</h5> <input type="text"
                                                name="startdate" class="form-control" id="nepaliDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                   </td>
                                   <td>
                                                <h5>Loan Start Date (A.D.)</h5> <input type="text"
                                                name="startdateen" class="form-control" id="englishDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm">
                                  </td>
                             </tr>
                              <tr>
                                  <td>
                                       <h5>Loan Maturity Date(B.S.)</h5> <input type="text"
                                                name="loanmaturitydate" class="form-control" id="nepaliDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                   </td>
                                   <td>
                                                <h5>Loan Maturity Date (A.D.)</h5> <input type="text"
                                                name="loanmaturitydateen" class="form-control" id="englishDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                  </td>
                             </tr>
                             <tr>
                             		<td>Interest Rate
                             		 <input type="text" name="irate"
									class="form-control" form="calculateForm" value="0" required>
									</td>
									<!-- <td>Interest Type <input type="radio" name="fixed" class="form-control"> Fixed
									   			<input type="radio" name="variable" class="form-control">Variable
									   												</td> -->
							</tr>	
							<tr>
                                  <td>
                                       <h5>EMI Start Date(B.S.)</h5> <input type="text"
                                                name="emistart" class="form-control" id="nepaliDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                   </td>
                                   <td>
                                                <h5>EMI Start Date (A.D.)</h5> <input type="text"
                                                name="emistarten" class="form-control" id="englishDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                  </td>
                             </tr>
							<tr>
								<td>Payment Frequency<select id="pf" class="form-control" name="repayment" form="calculateForm">
										<option value="365">Daily</option>
										<option value="52">Weekly</option>
										<option value="26">Biweekly</option>
										<option value="12">Monthly</option>
										<option value="24">Semi Monthly</option>
										<option value="6">Bimonthly</option>
										<option value="4">Semi Yearly</option>
										<option value="2">Half Yearly</option>
										<option value="1">Yearly</option>
								</select></td>
								
									<td>Payments
									<input type="text" name="payments"
									class="form-control" form="calculateForm" value="0" required>
									</td>
									<td><input type="text" placeholder="dynamic box" id="db" value=""></td>
									
							</tr>
<tr>
								<td><input type="submit" value="Calculate"
									class="btn btn-primary" form="calculateForm"></td>
							</tr>
							
						</tbody>

					</table>
				</div>
			</form>
		</div>
	</div>
	<script>
$('#pf').change(function() {
	var selectvalue=$(this).val();
	 if(selectvalue=="52"){
		var week='7';	
	
		$("#db").val(week);
	}
	else{
		var none='0';	
		
		$("#db").val(none);
	}
    
});
</script>
	<!-- <script>

	    $('#calculateForm').submit(function (e) {
		    {
		    	
		    alert('hello');
		 $.ajax
	        ({
	        	alert('hello');
	        data: $(this).serialize(),
	        type: 'POST',
	        url: 'calculate.add',
	        success: function(response)
	        {
	        	 $('.x_panel').find('.displayform').html(response);
	        } 
	        });
		 
	});
	    return false;
</script> -->

</body>
</html>