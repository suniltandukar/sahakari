<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Digi Nepal | Sahakari</title>

<!-- Bootstrap -->
<link href="template/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="template/css/font-awesome.min.css" rel="stylesheet">
<!-- NProgress -->
<link href="template/css/nprogress.css" rel="stylesheet">
<!-- Animate.css -->
<link href="template/css/animate.min.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="template/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
			id="signin"></a>
		
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					
					<form method="post" action="login.log">
						<h5><strong>LOGIN HERE</strong></h5>
						<img alt="" src="template/images/sahakarilogo.jpg"  class="img-rounded img-responsive" style="width:40%;margin:auto;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
						<h5 style="color: red;">${msg }</h5>
						<div>
							<input type="password" name="username" class="form-control"
								placeholder="Username" required="" />
						</div>
						<div>
							<input type="password" name="password" class="form-control"
								placeholder="Password" required="" />
						</div>

						<div>
							<button class="btn btn-default submit pull-left" >Log in</button>
							
						</div>
					</form>
					<div class="clearfix"></div>

					<div class="separator">
						<p class="change_link">
							New to site? <a href="#signup" class="to_register"> Create
								Account </a>
						</p>

						<div class="clearfix"></div>
						<br />

						<div>
							<p>Copyright 2018 All Rights Reserved.</p>
						</div>
					</div>

				</section>
			</div>

			<div id="register" class="animate form registration_form">
				<section class="login_content">
					<form>
						<h1>Create Account</h1>
						
						<p>Contact us for the new account.</p>

						<div class="clearfix"></div>

						<div class="separator">
							<p class="change_link">
								Already a member ? <a href="#signin" class="to_register">
									Log in </a>
							</p>
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
