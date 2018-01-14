<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="background">
<input type="text" name="englishDate" id="englishDate" placeholder="English date">
<input type="text" name="nepaliDate" id="nepaliDate" placeholder="Nepali date">
<script>
$("#englishDate").blur(function()
		{
		var date=$(this).val();
		var dataString = 'date='+ date;
		$.ajax
		({
		type: "POST",
		url: "englishToNepali.convertDate",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#nepaliDate").val(html);
		} 
		});
	});
$("#nepaliDate").blur(function()
		{
		var date=$(this).val();
		var dataString = 'date='+ date;
		$.ajax
		({
		type: "POST",
		url: "nepaliToEnglish.convertDate",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#englishDate").val(html);
		} 
		});
	});
</script>

</body>
</html>