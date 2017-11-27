<html>
<head>
<link rel="import" href="include.jsp" />
</head>

<body>
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Collateral
					Right</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Collateral Right</li>
			</ol>
		</nav>
	</div>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="tab-content">
				<div id="menu2" class="tab-pane fade in active">
					<br>
					<ul class="nav nav-tabs">
						<li><button type="submit" class="btn btn-success" form="form"
								name="addCollateralRight">Submit</button>&nbsp;&nbsp;&nbsp;</li>
						<li class="active"><a data-toggle="tab" data-target="#1">Tab1</a></li>
						<li><a data-toggle="tab" data-target="#2">Tab2</a></li>
						<li><a data-toggle="tab" data-target="#3">Tab3</a></li>
					</ul>

					<form class="form-horizontal" method="post"
						action="CollateralRight_Servlet " id="form">

						<div class="tab-content">
							<div id="1" class="tab-pane fade in active">

								<table class="table">
									<tr>
										<td>
											<h6>
												<strong>ID</strong>
											</h6> <input class="form-control" type="text" name="crid" />
										</td>
										<td>
											<h6>
												<strong>COLLATERAL RIGHT</strong>
											</h6> <input class="form-control" type="text"
											name="collateral_right" />
										</td>
										<td>
											<h6>
												<strong>COLLATERAL CODE</strong>
											</h6> <input class="form-control" type="text"
											name="collateral_code" />
										</td>
									</tr>

									<tr>
										<td>
											<h6>
												<strong>COMPANY</strong>
											</h6> <input class="form-control" type="text" name="company" />
										</td>
										<td>
											<h6>
												<strong>LIMIT REFERENCE</strong>
											</h6> <input class="form-control" type="text"
											name="limit_reference" />
										</td>
										<td>
											<h6>
												<strong>PERCENTAGE COVER</strong>
											</h6> <input class="form-control" type="text"
											name="percentage_cover" />
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>VALIDITY DATE</strong>
											</h6> <input class="form-control" type="text" name="validity_date" />
										</td>
										<td>

											<h6>
												<strong>REVIEW DATE FQU</strong>
											</h6> <input class="form-control" type="text"
											name="review_date_fqu" />
										</td>
										<td>
											<h6>
												<strong>EXPIRY DATE</strong>
											</h6> <input class="form-control" type="text" name="expiry_date" />
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>NOTES</strong>
											</h6> <input class="form-control" type="text" name="notes" />
										</td>
										<td>
											<h6>
												<strong>CUSTOMER</strong>
											</h6> <input class="form-control" type="text" name="customer" />
										</td>
										<td>
											<h6>
												<strong>STATUS</strong>
											</h6> <input class="form-control" type="text" name="status" />
										</td>
									</tr>

								</table>
							</div>
							<div id="2" class="tab-pane">
								<table class="table">
									<tr>
										<td>
											<h6>
												<strong>LIMIT REFERENCE ID</strong>
											</h6> <input class="form-control" type="text"
											name="limit_reference_id" />
										</td>
										<td>
											<h6>
												<strong>OVERRIDE</strong>
											</h6> <input class="form-control" type="text" name="override" />
										</td>
										<td>
											<h6>
												<strong>RECORD STATUS</strong>
											</h6> <input class="form-control" type="text" name="record_status" />
										</td>
									</tr>
									<tr>
										<td>
											<h6>
												<strong>CURR NO</strong>
											</h6> <input class="form-control" type="text" name="curr_no" />
										</td>
										<td>

											<h6>
												<strong>INPUTTER</strong>
											</h6> <input class="form-control" type="text" name="inputter" />
										</td>
										<td>

											<h6>
												<strong>DATE TIME</strong>
											</h6> <input class="form-control" type="text" name="date_time1" />
										</td>
									</tr>
									<tr>

										<td>

											<h6>
												<strong>AUTHORISER</strong>
											</h6> <input class="form-control" type="text" name="authoriser" />
										</td>
										<td>

											<h6>
												<strong>DATE TIME</strong>
											</h6> <input class="form-control" type="text" name="date_time2" />
										</td>
										<td>

											<h6>
												<strong>CO CODE</strong>
											</h6> <input class="form-control" type="text" name="co_code" />
										</td>
									</tr>

									<tr>
										<td>

											<h6>
												<strong>DEPT CODE</strong>
											</h6> <input class="form-control" type="text" name="dept_code" />
										</td>
										<td>

											<h6>
												<strong>AUDITOR CODE</strong>
											</h6> <input class="form-control" type="text" name="auditor_code" />
										</td>
										<td>

											<h6>
												<strong>AUDIT DATE TIME</strong>
											</h6> <input class="form-control" type="text"
											name="audit_date_time" />
										</td>
									</tr>
								</table>

							</div>
							<div id="3" class="tab-pane">

								<table class="table">

									<tr>
										<td>

											<h6>
												<strong>LIMIT REF CUSTOMER</strong>
											</h6> <input class="form-control" type="text"
											name="limit_ref_customer" />
										</td>
										<td>

											<h6>
												<strong>PERCENT ALLOC</strong>
											</h6> <input class="form-control" type="text" name="percent_alloc" />
										</td>
										<td>

											<h6>
												<strong>RESERVED 3</strong>
											</h6> <input class="form-control" type="text" name="reserved3" />
										</td>
									</tr>

									<tr>
										<td>

											<h6>
												<strong>RESERVED 2</strong>
											</h6> <input class="form-control" type="text" name="reserved2" />
										</td>
										<td>

											<h6>
												<strong>RESERVED 1</strong>
											</h6> <input class="form-control" type="text" name="reserved1" />
										</td>
										<td>

											<h6>
												<strong>OS PERCENT COVER</strong>
											</h6> <input class="form-control" type="text"
											name="os_percent_cover" />
										</td>
									</tr>
								</table>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
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

