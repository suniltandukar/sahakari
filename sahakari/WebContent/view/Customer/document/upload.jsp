<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
	
<html>
<head>
<title>Customer Bill Upload</title>

</head>
<body class="background">
	<jsp:include page="/includefile"></jsp:include>
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Member
					Documents</li>
				<li class="breadcrumb-item active" aria-current="page">Upload</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-8 col-sm-8 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>UPLOAD DOCUMENTS</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<a href="viewmemberdocuments.click"
					class="btn btn-primary btn-xs pull-right">View documents</a>
					<div class="clearfix"></div>
				
			</div>
			
			<form method="POST" action="http://localhost:8080/api/memberdocument/upload" class="confirm"
					role="form" enctype="multipart/form-data" >
			
				<div class="form-group">
					<div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-3">
						<a onclick="addRow()" id="newrow" class="btn btn-primary">Add Row</a>
						<button class="btn btn-info" type="button" id="validate">Validate</button>
							<input type="submit" class="btn btn-success" value="Upload">

					</div>
				</div>

			<div class="x_content">
				
					<table class="table">
						<tbody>
							<tr>
								<td>
									<h5>Member ID</h5> <input type="text" name="pid"
									class="form-control pid" required>
								</td>
								<td>
									<h5>Member Name</h5> <input type="text" name="name"
									class="form-control membername" required readonly>
								</td>
							</tr>
							<tr>
								<td>
								<h5>Document Type</h5> <select name="document_type"
									class="form-control" required>
										<option value="">Select Type</option>
										<option value="CNS">Citizenship</option>
										<option value="PSP">Passport</option>
										<option value="LAL">Lalpurja</option>
										<option value="TAX">Tiro Rasid</option>

								</select>
								</td>
								<td>
									<h5>Attach Image</h5> <input type="file" name="file"
									class="form-control" value="">
								</td>
								<td><h5>Remove</h5><button onclick="deleteRow(this)"
										class="removebutton btn btn-danger">X</button></td>
							</tr>
						</tbody>
					</table>
			</div>
			</form>

		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p>
						<b>${msg }</b>
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>




</body>
<script src="assets/js/dateConverter.js"></script>
<script>
$("#validate").click(function() {
	 var id=$('.pid').val();
	 alert(id);
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

$(document).ready(function()
        {
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	   $('.confirm').submit(function(){
		  return confirm('sure?'); 
	   });
        });
        
function deleteRow(btn) {
	var row = btn.parentNode.parentNode;
	row.parentNode.removeChild(row);
};
function addRow() {
	var tbody = $("table tbody");
	tbody.find("tr:eq(1)").clone().appendTo(tbody)
			.find("input, select").val("");
};

</script>


</html>