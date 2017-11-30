	$(document).ready(function()
			{
		$(".pdistrict").change(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "viewmuncipality.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$(".pvdcmun").html(html);
		} 
		});
});
		$(".pvdcmun").change(function()
				{
				var id=$(this).val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "viewwardno.click",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$(".pwardno").html(html);
				} 
				});
				});
		
		$(".tdistrict").change(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "viewmuncipality.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$(".tvdcmun").html(html);
		} 
		});
});
		$(".tvdcmun").change(function()
				{
				var id=$(this).val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "viewwardno.click",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$(".twardno").html(html);
				} 
				});
				});
		});
	