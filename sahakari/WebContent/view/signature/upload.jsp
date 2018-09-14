<html>
<head>
 <link href="../../template/css/bootstrap.min.css" rel="stylesheet">
<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
/* .borderless td, .borderless th {
    border-bottom-style: hidden;
     border-top-style: hidden;
} */
</style>
</head>
<body class="background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Signatures</li>
				<li class="breadcrumb-item active" aria-current="page">Add</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-8 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h3>ADD SIGNATURE</h3>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="form-horizontal" method="post" action="http://localhost:8080/api/media/upload" enctype="multipart/form-data">

					<table class="table borderless">
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Account Number</h5> <input type="text" class="form-control"
									name="accountNumber" value="" required>
								</td>
								<td>
									<h5>Image</h5> <input type="file" class="form-control "
									name="file"  accept="image/gif, image/jpeg, image/png" required>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>