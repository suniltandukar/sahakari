<html>
	<head><title>Sahakari Login</title>
	<link rel="stylesheet" href="template/css/font-awesome.min.css">
	<link rel="stylesheet" href="template/css/bootstrap.min.css">
    <link rel="stylesheet" href="template/css/admin.css" type="text/css"></head>
    <body style="background-color: lightgrey;">
    	<div class="col-md-6 col-centered" style="text-align: center;" >
    		<img src="template/images/logo5.jpg" alt="logo" class="img-responsive" />
    		
    		<form class="login-form" action="login.log" method="post">
    		<p style="color:red;">${msg}</p>
    		<br>
    		<label>Staff Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="staffCode" 
								placeholder="Staff-Code" required="" /></label><br>
    		
	   			<label >Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="username" 
								placeholder="Username" required="" /></label><br>
	   			
				<label >Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" 
								placeholder="Password" required="" /></label><br />
	   			<div style="text-align: center; padding-bottom: 60px;">
	   				<button type="submit" class="btn btn-primary col-centered">Login</button>
    			</div>
	   		</form>
	    </div>
    </body>
</html>