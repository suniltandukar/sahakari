<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>FILL DOCUMENT DETAILS</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<a href="viewmemberdocuments.click"class="btn btn-primary btn-xs pull-right">View documents</a>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form method="POST" action="document.upload" class="confirm"
					enctype="multipart/form-data">
					<table class="table">
						<tbody>
							<tr>
								<td><input type="submit" name="button" value="submit"
									class="btn btn-primary"></td>
							</tr>

							<tr>
								<td>
									<h5>Member ID</h5> <input type="text" name="memberid"
									class="form-control" required>
								</td>
								<td>
									<h5>Document Type</h5> <select name="documenttype"
									class="form-control" required>
										<option value="">Select Type</option>
										<option value="CNS">Citizenship</option>
										<option value="PSP">Passport</option>
								</select>
								</td>
								<td>
									<h5>Attach Image</h5> <input type="file" name="filename"
									class="form-control" value="" required>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
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
$(document).ready(function()
        {
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	   $('.confirm').submit(function(){
		  return confirm('sure?'); 
	   });
        });
</script>


</html>