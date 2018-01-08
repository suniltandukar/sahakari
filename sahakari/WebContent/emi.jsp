<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<body class="background">
<div class="displayform">
</div>
<div class="panel panel-default">
	<div class="panel-body">
	
		
		
		<select class="form-control" name="repayment">
		<option value="365">Daily</option>
		<option value="52">Weekly</option>
		<option value="26">Biweekly</option>
		<option value="12">Monthly</option>
		<option value="24">Semi Monthly</option>
		<option value="6">Bimonthly</option>
		<option value="4">Semi Yearly</option>
		<option value="2">Half Yearly</option>
		<option value="1">Yearly</option>
		</select>
		<br>
		
		Start Date: <input type="text" name="startdate" class="form-control">
		<br>
		Maturity Date: <input type="text" name="mdate" class="form-control">
		<br>
		Amount: <input type="text" name="amount" class="form-control">
		<br>
		Interest Rate: <input type="text" name="irate" class="form-control">
		<br>
		No. of Payments: <input type="text" name="payments" class="form-control">
		<br>
		<input type="submit" value="Calculate" class="btn btn-primary calculate">
		
		
		
	
	
	
	
</div>

</div>

<script>
$(document).ready(function()
        {
	 $(".calculate").click(function()
		    {
		 $.ajax
	        ({
	        type: "POST",
	        url: "calculate.add",
	        cache: false,
	        success: function(html)
	        {
	        $(".displayform").html(html);
	        } 
	        });
		 
	});
});
</script>
</body>
</html>