 $('.addrealtionbtn').click(function () {
			
		    $('#relationtable tbody').append($('#relationtable tbody tr:last').clone());
		    
	   });
	   $('.addbankbtn').click(function () {

		    $('#bankdetailtable tbody').append($('#bankdetailtable tbody tr:last').clone());
		    
	   });
		$('table').on('click','tr a',function(e){
		    e.preventDefault();
		   $(this).parents('tr').remove();
		 });
		
	   $('form').submit(function(){
		  return confirm("CONFIRM?"); 
	   });
	   $(".memberid").keyup(function()
				{
				var id=$(this).val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "checkmemberid.click",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$(".memberidstatus").val(html);
				} 
				
				});
			});	
	   $(".customerForm").submit(function(){
			var memberidstatus=$('.memberidstatus').val();
			alert(memberidstatus);
			if(memberidstatus==1){
				$("#modalmsg").text("Member ID already Exists! Cannot Insert Customer!");
				 $('#memberidmsgmodal').modal('show');
				return false;
				}
		});			
	   $(".sharecertmemberid").keyup(function()
				{
				var id=$(this).val();
				var dataString = 'id='+ id;
				$.ajax
				({
				type: "POST",
				url: "sharecertcheckmemberid.click",
				data: dataString,
				cache: false,
				success: function(html)
				{
				$(".memberidstatus").val(html);
				} 
				
				});
			});	
	   $(".shareCertForm").submit(function(){
			var memberidstatus=$('.memberidstatus').val();
			if(memberidstatus==0){
				
				$("#modalmsg").text("Member ID doesn't Exists! Enter Valid Member ID.");
				 $('#memberidmsgmodal').modal('show');
				return false;
				}
		});	
	   
		
	