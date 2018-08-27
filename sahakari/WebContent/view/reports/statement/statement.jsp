
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body class="background">
	<div id="output"></div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>STATEMENT</h2>
				<button id="cmd" class="btn btn-success">generate CSV</button>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content" id="content">
				<table id="table1"
					class="table jambo_table table-striped table-bordered">
					<tbody>
						<tr>
							<td>Account Number: <span id="accountNo"></span></td>
							<td>Account Name: <span id="accountName"></span></td>
							<td>Customer Name: <span id="name"></span></td>
							<td>Printed Date: <span id="curdate"></span></td>
						</tr>
					</tbody>
				</table>
				<table id="tablee"
					class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
					<thead>
						<tr>
							<th>Value Date</th>
							<th>Booking Date</th>
							<th>Debit</th>
							<th>Credit</th>
							<th>Balance</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	<input type="hidden" value="${url }" id="url">


	<script type="text/javascript">
	$(document).ready(function() {
		var url = $("#url").val();
		$.ajax({
			url : url
		}).then(function(data) {
				//datatable		   
				$("#tablee").dataTable({
					paging : false,
					aaData : data.data.statement,
					aoColumns : [ {
						"mData" : "valueDate"
					}, {
						"mData" : "bookingDate"
					}, {
						"mData" : "debitamount"
					}, {
						"mData" : "creditamount"
					}, {
						"mData" : "balanceamount"
					}, ]
				});

				var accountNo = document.getElementById('accountNo');
				accountNo.innerHTML = data.data.accountNumber;

				var accountName = document.getElementById('accountName');
				accountName.innerHTML = data.data.customer.accountName;

				var name = document.getElementById('name');
				name.innerHTML = data.data.customer.name;

				var curdate = document.getElementById('curdate');
				curdate.innerHTML = data.data.customer.curdate;
			});
	
	});
	
	 	$("#cmd").click(function() {
			$("#tablee").tableToCSV();
		}); 
	</script>
</body>
</html>