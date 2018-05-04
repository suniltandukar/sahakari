
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="background">
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2>TRIAL BALANCE</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="datatbl"
					class="table jambo_table table-striped table-bordered"
					style="font-size: 95%;">
					<thead>
						<tr>
						
							<th>Category Id</th>
							<th>Category Head</th>
							<th>Dr Balance</th>
							<th>Cr Balance</th>
						</tr>
					</thead>
					<tfoot>
            <tr>
           
                <th></th>
                <th>Total:</th>
                <th></th>
                 <th></th>
            </tr>
        </tfoot>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="dRScript/trialBalanceScript.jsp"></jsp:include>
</body>
</html>