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
							 <tr data-column="2">
                                  <td>
                                       <h5>Loan Start Date(B.S.)</h5> <input type="text"
                                                name="startdate" class="form-control nepaliDate" id="nepaliDate2"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                   </td>
                                   <td>
                                                <h5>Loan Start Date (A.D.)</h5> <input type="text"
                                                name="startdateen" class="form-control englishDate" id="englishDate2"
                                                placeholder="YYYY-MM-DD"  form="calculateForm">
                                  </td>
                             </tr>
                              <tr data-column="1" >
                                  <td>
                                       <h5>Loan Maturity Date(B.S.)</h5> <input type="text"
                                                name="loanmaturitydate" class="form-control nepaliDate" id="nepaliDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10" >
                                   </td>
                                   <td>
                                                <h5>Loan Maturity Date (A.D.)</h5> <input type="text"
                                                name="loanmaturitydateen" class="form-control englishDate" id="englishDate1"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10" data-column="1">
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
							<tr data-column="3" >
                                  <td>
                                       <h5>EMI Start Date(B.S.)</h5> <input type="text"
                                                name="emistart" class="form-control nepaliDate" id="nepaliDate3"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                   </td>
                                   <td>
                                                <h5>EMI Start Date (A.D.)</h5> <input type="text"
                                                name="emistarten" class="form-control englishDate" id="englishDate3"
                                                placeholder="YYYY-MM-DD"  form="calculateForm" maxlength="10">
                                  </td>
                             </tr>
							<tr>
								<td>Payment Frequency<select id="pf" class="form-control" name="repayment" form="calculateForm">
										<option value="365,1">Daily</option>
										<option value="52,7">Weekly</option>
										<option value="26,14">Biweekly</option>
										<option value="12,30">Monthly</option>
										<option value="24,45">Semi Monthly</option>
										<option value="6,60">Bimonthly</option>
										<option value="4,120">Semi Yearly</option>
										<option value="2,180">Half Yearly</option>
										<option value="1,365">Yearly</option>
								</select></td>
								
									
									
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
	<script type="text/javascript">
	
	$('input.englishDate').on( 'blur', function () {
		var i=$(this).parents('tr').attr('data-column');
		
		var date=$(this).val();
		var dataString = 'date='+ date;
		$.ajax
		({
		type: "POST",
		url: "englishToNepali.convertDate",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#nepaliDate"+i).val(html);
		} 
		
		  } );
	});

	$('input.nepaliDate').on( 'blur', function () {
		
		var i=$(this).parents('tr').attr('data-column');
			var date=$(this).val();
			var dataString = 'date='+ date;
			$.ajax
			({
			type: "POST",
			url: "nepaliToEnglish.convertDate",
			data: dataString,
			cache: false,
			success: function(html)
			{
			$("#englishDate"+i).val(html);
			} 
			});
		});
</script>
</body>
</html>