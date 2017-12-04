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
	   $(document).ready(function()
				{
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
		$("form").submit(function(){
			var memberidstatus=$('.memberidstatus').val();
			if(memberidstatus==='1'){
				$("#modalmsg").text("Member ID already Exists! Cannot Insert Customer!");
				 $('#memberidmsgmodal').modal('show');
				return false;
				}
		});
	});	