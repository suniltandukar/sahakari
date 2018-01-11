//Ajax function
//permanent address
		$(".pdistrict").change(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "view/onselectpages/viewMuncipality.jsp",
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
				url: "view/onselectpages/viewWardNo.jsp",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$(".pwardno").html(html);
				} 
				});
				});
//temporary address
		$(".tdistrict").change(function()
				{
				var id=$(this).val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "view/onselectpages/viewMuncipality.jsp",
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
						url: "view/onselectpages/viewWardNo.jsp",
						data: dataString,
						cache: false,
						success: function(html)
						{
						$(".twardno").html(html);
						} 
						});
						});