<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Digi Nepal - Login</title>

<link rel="stylesheet" href="assets/css/style.css" media="screen"
	type="text/css" />

</head>

<body>
	<span href="#" class="button" id="toggle-login"><h3>Digi
			Nepal</h3></span>

	<div id="login">
		<div id="triangle"></div>

		<h1>Log in</h1>
		
		<form method="post" action="login.log">
		<h5 style="color: red;">${msg }</h5>
			<input type="password" name="username" id="username" placeholder="Username"
				required /> <input type="password" name="password"
				placeholder="Password" id="password" required /> 
				<label><input type="checkbox" onclick="myFunction1()"> Show Username</label><br>
				<label><input type="checkbox" onclick="myFunction()"> Show Password</label><br><br>
				<input type="submit"
				value="Log in" />
				
		</form>
	</div>
	<script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

	<script src="assets/js/index.js"></script>
<script type="text/javascript">
function myFunction() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function myFunction1() {
    var x = document.getElementById("username");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>
</body>

</html>
