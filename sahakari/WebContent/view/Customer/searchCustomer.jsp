<jsp:include page="/includefile"></jsp:include>
<html>
<head>
</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Member</li>
				<li class="breadcrumb-item active" aria-current="page">Ammend
					Member</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2><b>SEARCH MEMBER</b></h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form class="col-md-12 col-sm-12 col-xs-12 form-group has-feedback" id="searchform" >
					<div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
						<input type="text" class="form-control has-feedback-left" name="memberid"
							placeholder="Member ID"> <span
							class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
						<input type="text" class="form-control has-feedback-left" name="membername"
							placeholder="Member Name"> <span
							class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12 form-group has-feedback">
						<button type="submit" class="btn btn-round btn-info">
							<i class="fa fa-search"></i> Search
						</button>
						<a type="button" href="viewAllCustomers.click" class="btn btn-round btn-primary">
							 View All
						</a>

					</div>

				</form>
			</div>
		</div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h2><b>SEARCH RESULT</b></h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content" id="searchResult"></div>
		</div>
	</div>
<div class="viewDetailModal"></div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p>${msg }</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
$('#searchform').submit(function() { // catch the form's submit event
    $.ajax({ // create an AJAX call...
        data: $(this).serialize(), // get the form data
        type: 'POST', // GET or POST
        url: 'customerSearchResult.click', // the file to call
        success: function(response) {// on success..
            $('#searchResult').html(response); // update the DIV
        }
    });
    return false; // cancel original event to prevent form submitting
});
$('#datatable').each(function() 
		{
		$(".resulttable").show();
			$(".loader").hide();
		});
	$('.clickbtn').click(function() {
		return confirm('CONFIRM?');
	}); 

	

</script>
</body>
</html>