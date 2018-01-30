$(".memberid").blur(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "getmembername.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#membername").val(html);
		} 
		});
		});
$("#categories").change(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;

		$.ajax
		({
		type: "POST",
		url: "showaccounttype.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#accounttype").html(html);
		} 
		});

		});
$(".memberid").blur(function()
		 
        {

 var id=$(this).val();
 var dataString = 'memberid='+ id;
 $.ajax
    ({
    type: "POST",
    url: "generateaccountno.click",
    data: dataString,
    cache: false,
    success: function(html)
    {
    $(".accountNumber").val(html);
    } 
    });
 
});