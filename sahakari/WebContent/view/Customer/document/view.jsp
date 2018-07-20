<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
			<li class="breadcrumb-item active" aria-current="page">View</li>
		</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>MEMBER DOCUMENT DETAILS</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<a href="memberdocument.click"
					class="btn btn-primary btn-xs pull-right">Go Back</a>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="datatable"
					class="table jambo_table table-striped table-bordered resulttable"
					style="font-size: 100%;">
					<thead>
						<tr>
							<th>Member Id</th>
							<th>Document Type</th>
							<th><i class="fa fa-cog" aria-hidden="true"></i></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${documentlist}" var="list">
							<tr>
								<td>${list.memberid }</td>
								<td>${list.documenttype }</td>
								<td><a class="btn btn-info btn-xs" href="viewPhoto.pic?documentname=${list.generatedfilename }" target="_blank">view file</a>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="modal fade" id="trslphotos" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">
					<img src="" class="img-responsive ">
				</div>
				<div class="modal-footer">
					<a href="" class="downloadbtn" download><button
							class="btn btn-success">Download</button></a>
				</div>
			</div>
		</div>

	</div>
	<script>
	$('#trslphotos').on('shown.bs.modal', function (a, b,c) {
		 var clickedImageUrl = a.relatedTarget.childNodes[0].src;
		  displayPhotos(clickedImageUrl);
		})
	function displayPhotos(url) {
		 $('.modal-body img').attr('src',url);
		 $('.downloadbtn').attr('href',url);
		 
		 $('#trslphotos').modal();
		}
	</script>
</body>
</html>
