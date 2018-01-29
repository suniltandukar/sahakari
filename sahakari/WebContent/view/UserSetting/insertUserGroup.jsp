<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<head>
<title></title>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Settings</li>
				<li class="breadcrumb-item active" aria-current="page">User
					Settings</li>
				<li class="breadcrumb-item active" aria-current="page">Add User
					Group</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					<strong>ADD NEW USER</strong>
				</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form method="post" id="form" name="Form1">
					<table class="table">
						<tbody>
							<tr>

								<td>
									<h6>Username</h6> <input type="hidden" form="form"
									value="${userid}" name="useridforupdate"> <input
									type="text" name="username" class="form-control" form="form"
									data-validation="number" value="${username }">
								</td>
							</tr>
						</tbody>
					</table>
				</form>


			</div>
		</div>
	</div>


</body>
</head>