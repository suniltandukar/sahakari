<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
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
				<h2>ADD MEMBER SHARE CERTIFICATE</h2>
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
								<td><select class="form-control" name="repayment" form="calculateForm">
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
							</tr>
							<tr>
								<td>Start Date: <input type="text" name="startdate"
									class="form-control" form="calculateForm"></td>
								<td>Maturity Date: <input type="text" name="mdate"
									class="form-control" form="calculateForm"></td>
							</tr>
							<tr>
								<td>Amount: <input type="text" name="amount"
									class="form-control" form="calculateForm"></td>
								<td>Interest Rate: <input type="text" name="irate"
									class="form-control" form="calculateForm"></td>
								<td>No. of Payments: <input type="text" name="payments"
									class="form-control" form="calculateForm"></td>
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