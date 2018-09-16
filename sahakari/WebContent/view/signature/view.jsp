<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
.background {
	background-color: #F7F7F7;
}
</style>
</head>
<body class="background">
	<nav aria-label="breadcrumb" role="navigation">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><i class="fa fa-home"
				aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Signatures</li>
			<li class="breadcrumb-item active" aria-current="page">View</li>
		</ol>
	</nav>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h4>UPLOADED SIGNATURES</h4>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="table"
					class="table jambo_table table-striped table-bordered resulttable display nowrap"
					style="font-size: 100%;">
					<thead>
						<tr>
							<th>Account No</th>
							<th>Signature</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<script>
		$(document)
				.ready(
						function() {
							$
									.ajax(
											{
												url : "http://localhost:8080/api/media/findAll"
											})
									.then(
											function(data) {
												$("#table")
														.dataTable(
																{
																	paging : false,
																	aaData : data.data,
																	aoColumns : [
																			{
																				"mData" : "accountNumber"
																			},
																			{
																				"mData" : "image",
																				"orderable" : false,
																				"searchable" : false,
																				"render" : function(
																						data,
																						type,
																						row,
																						meta) { // render event defines the markup of the cell text 
																					var a = '<a href="http://localhost:8080/api/media/displayImage/'+row.signatureid+'" target="_blank"> View Signature</a>'; // row object contains the row data
																					return a;
																				}
																			}, ]
																});

											});
						});
	</script>
</body>
</html>
