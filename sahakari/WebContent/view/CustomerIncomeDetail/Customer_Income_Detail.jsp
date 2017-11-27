<jsp:include page="/includefile"></jsp:include>
<!DOCTYPE html>
<html>
<head>

</head>
<body class="bgcolor">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Customer
					Income Details</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Customer Income Details</li>
			</ol>
		</nav>
	</div>
	<form class="form-horizontal" method="post"
		action="CustIncDetail_Servlet" id="form">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="tab-content">
					<div id="menu2" class="tab-pane fade in active">
						<br>
						<ul class="nav nav-tabs">
							<li><button type="submit" class="btn btn-success"
									form="form" name="addCustomerIncomeDetail">Submit</button>&nbsp;&nbsp;&nbsp;</li>
							<li class="active"><a data-toggle="tab" data-target="#1">Basic
									Details</a></li>
						</ul>
						<div class="tab-content">
							<div id="1" class="tab-pane fade in active">
								<table class="table">
									<tr>
										<td><label for="officeName">Office Name</label> <input
											class="form-control" type="text" name="officeName" /></td>
										<td><label for="staffCode">Staff Code Number</label> <input
											class="form-control" type="text" name="staffCode" /></td>
										<td><label for="officePhnNum">Office Phone Number</label>
											<input class="form-control" type="text" name="officePhnNum" />
										</td>
									</tr>
									<tr>
										<td><label for="officeFaxNum">Office Fax Number</label> <input
											class="form-control" type="text" name="officeFaxNum" /></td>
										<td><label for="officeEmail">Office Email</label> <input
											class="form-control" type="text" name="officeEmail" /></td>
										<td><label for="position">Position</label> <input
											class="form-control" type="text" name="position" /></td>
									</tr>
									<tr>
										<td><label for="annualSalary">Annual Salary</label> <input
											class="form-control" type="text" name="annualSalary" /></td>
										<td><label for="appointmentDate">Appointment Date</label>
											<input class="form-control" type="date"
											name="appointmentDate" /></td>
										<td><label for="retirementDate">Retirement Date</label> <input
											class="form-control" type="date" name="retirementDate" /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p>
						<b>${msg }</b>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<script>
            <%if (request.getAttribute("msg") != null) {%>
                    $('#myModal').modal('show');
            <%}%>
        </script>
</body>
</html>
