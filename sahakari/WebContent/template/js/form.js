$(".addjobbtn").on(
			"click",
			function() {
				$(".jobtable").append(
						$(".jobtable").find("#jobrow").clone().removeAttr("id")
								.find("input").val("").end());
			});

$(".addrealtionbtn").on(
		"click",
		function() {
			$(".relationtable").append(
					$(".relationtable").find("#relationrow").clone()
							.removeAttr("id").find("input").val("").end());
		});

$(".adddocumentbtn").on(
		"click",
		function() {
			$(".documenttbl").append(
					$(".documenttbl").find("#documentrow").clone().removeAttr("id")
							.find("input").val("").end());
		});


$(".addbankbtn").on(
		"click",
		function() {
			$(".bankdetailtable").append(
					$(".bankdetailtable").find("#bankrow").clone().removeAttr("id")
							.find("input").val("").end());
		});


$('table').on('click', 'tr a', function(e) {
	e.preventDefault();
	$(this).parents('tr').remove();
});

$('form').submit(function() {
	return confirm("CONFIRM?");
});
$(".memberid").keyup(function() {
	var id = $(this).val();
	var dataString = 'id=' + id;
	$.ajax({
		type : "POST",
		url : "checkmemberid.click",
		data : dataString,
		cache : false,
		success : function(html) {
			$(".memberidstatus").val(html);
		}

	});
});
$(".customerForm").submit(
		function() {
			var memberidstatus = $('.memberidstatus').val();
			alert(memberidstatus);
			if (memberidstatus == 1) {
				$("#modalmsg").text(
						"Member ID already Exists! Cannot Insert Customer!");
				$('#memberidmsgmodal').modal('show');
				return false;
			}
		});
$(".sharecertmemberid").keyup(function() {
	var id = $(this).val();
	var dataString = 'id=' + id;
	$.ajax({
		type : "POST",
		url : "sharecertcheckmemberid.click",
		data : dataString,
		cache : false,
		success : function(html) {
			$(".memberidstatus").val(html);
		}

	});
});
$(".shareCertForm").submit(
		function() {
			var memberidstatus = $('.memberidstatus').val();
			if (memberidstatus == 0) {

				$("#modalmsg").text(
						"Member ID doesn't Exists! Enter Valid Member ID.");
				$('#memberidmsgmodal').modal('show');
				return false;
			}
		});
