<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style type="text/css">
/* Add ajax preloader when server is being requested */
.validating-server-side {
	background: url(img/ajax-preloader.gif) no-repeat center right;
	opacity: 0.6
}
</style>
<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
</style>
</head>
<body class="hiddenscroll background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Customer</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Customer</li>
			</ol>
		</nav>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>ADD Initial Setup</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">

				<div class="" role="tabpanel" data-example-id="togglable-tabs">

					<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">


						<li role="presentation" class="active"><a
							href="#tab_content2" role="tab" id="profile-tab"
							data-toggle="tab" aria-expanded="false">Status</a></li>
						<li role="presentation" class=""><a href="#tab_content3"
							role="tab" id="profile-tab2" data-toggle="tab"
							aria-expanded="false">Type</a></li>
						<li role="presentation" class=""><a href="#tab_content4"
							role="tab" id="profile-tab3" data-toggle="tab"
							aria-expanded="false">Relationship Officer</a></li>
						<li role="presentation" class=""><a href="#tab_content5"
							role="tab" id="profile-tab4" data-toggle="tab"
							aria-expanded="false">Document Type</a></li>

					</ul>
					<div id="myTabContent" class="tab-content">

						<div role="tabpanel" class="tab-pane fade active in"
							id="tab_content2" aria-labelledby="profile-tab">
							<form class="form-horizontal customerForm toggle-disabled"
								id="form1" method="post" action="customerStatus.add">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

									<button class="btn btn-info" type="button" id="validate"
										form="form1">Validate</button>
									<button class="btn btn-primary" type="reset" form="form1">Reset</button>
									<input type="submit" class="btn btn-success" form="form1"
										value="Submit">
								</div>
								<table class="table" id="relationtable" style="width: 20%">
									<tbody>
										<tr>
											<td>
												<h5>Status</h5> <input type="text" class="form-control"
												name="statusName" value="">
											</td>


										</tr>
									</tbody>
								</table>
							</form>


						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content5"
							aria-labelledby="profile-tab">
							<form class="form-horizontal customerForm toggle-disabled"
								id="form4" method="post" action="documentType.add">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

									<button class="btn btn-info" type="button" id="validate"
										form="form4">Validate</button>
									<button class="btn btn-primary" type="reset" form="form4">Reset</button>
									<input type="submit" class="btn btn-success" form="form4"
										value="Submit">
								</div>
								<table class="table" id="relationtable" style="width: 50%">
									<tbody>
										<tr>
											<td>
												<h5>Type Id</h5> <input type="text" class="form-control"
												name="typeId" value="">
											</td>
											<td>
												<h5>Type Name</h5> <input type="text" class="form-control"
												name="typeName" value="">
											</td>


										</tr>
									</tbody>
								</table>
							</form>


						</div>
						<div role="tabpanel" class="tab-pane fade" id="tab_content3"
							aria-labelledby="profile-tab">
							<form class="form-horizontal customerForm toggle-disabled"
								id="form2" method="post" action="customerType.add">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

									<button class="btn btn-info" type="button" id="validate"
										form="form2">Validate</button>
									<button class="btn btn-primary" type="reset" form="form2">Reset</button>
									<input type="submit" class="btn btn-success" form="form2"
										value="Submit">
								</div>
								<table class="table" id="relationtable" style="width: 20%">
									<tbody>
										<tr>
											<td>
												<h5>Type</h5> <input type="text" class="form-control"
												name="typeName" value="" form="form2">
											</td>


										</tr>
									</tbody>
								</table>
							</form>
						</div>


						<div role="tabpanel" class="tab-pane fade" id="tab_content4"
							aria-labelledby="profile-tab">

							<form class="form-horizontal customerForm toggle-disabled"
								id="form3" method="post" action="customerAgent.add">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">

									<button class="btn btn-info" type="button" id="validate"
										form="form3">Validate</button>
									<button class="btn btn-primary" type="reset" form="form3">Reset</button>
									<input type="submit" class="btn btn-success" form="form3"
										value="Submit">
								</div>
								<table class="table" id="relationtable">
									<tbody>
										<tr>
											<td>
												<h5>Agent name</h5> <input type="text" class="form-control"
												name="agentname" value="">

											</td>
											<td>
												<h5>Agent Address</h5> <input type="text"
												class="form-control" name="agentaddress" value="">
											</td>
											<td>
												<h5>Agent Phone</h5> <input type="text" class="form-control"
												name="accountphone" value="">
											</td>
											<td>
												<h5>Staff Code</h5> <input type="text" class="form-control"
												name="staffcode" value="">
											</td>
										</tr>
									</tbody>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>Available Initial Details</h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table
					class="table jambo_table table-striped table-bordered resulttable display nowrap"
					style="font-size: 100%;">
					<thead>
						<tr>
							<th>Status</th>
							<th>Type</th>
							<th>Document Type(Id/Name)</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><c:forEach items="${typelist }" var="tlist">
									<c:if test="${tlist.typeName!='none' }">
										<h6>${tlist.typeName }</h6>
									</c:if>

								</c:forEach></td>
							<td><c:forEach items="${statuslist }" var="slist">
									<c:if test="${slist.statusName!='none' }">
										<h6>${slist.statusName }</h6>
									</c:if>

								</c:forEach></td>
							<td><c:forEach items="${doctype }" var="dlist">
									<h6>${dlist.doctypeId }/${dlist.doctypeName }</h6>
								</c:forEach></td>

						</tr>

					</tbody>

				</table>
			</div>


		</div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_title">
				<h4>Relationship Officer</h4>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table
					class="table jambo_table table-striped table-bordered resulttable display nowrap"
					style="font-size: 100%;">
					<thead>
						<tr>
							<th>Name</th>
							<th>Address</th>
							<th>Phone</th>
							<th>Staff Code</th>
						</tr>
					</thead>
					<tbody>


						<c:forEach items="agentlist" var="r">
							<tr>
								<td>${r.agentname}</td>
								<td>${r.agentaddress}</td>
								<td>${r.agentphone}</td>
								<td>${r.staffcode}</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>

	<div class="modal fade" id="memberidmsgmodal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p id="modalmsg"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" class="memberidstatus" value="">

	<jsp:include page="/msgmodal"></jsp:include>


	<script type="text/javascript" src="template/js/ajaxFunctions.js"></script>
	<script type="text/javascript" src="template/js/form.js"></script>
	<!-- <script>
		$(document).ready(function(){
  $.validate({
    lang: 'en',
    modules : 'date,toggleDisabled',
	  disabledFormFilter : 'form.toggle-disabled',
	 showErrorDialogs : false

    });
</script>
<script type="text/javascript" src="template/js/ajaxFunctions.js"></script>
	<script type="text/javascript" src="template/js/form.js"></script>

     modules : 'date,toggleDisabled',
   disabledFormFilter : 'form.toggle-disabled',
    	  
     showErrorDialogs : false
    
     });
		});
</script> -->
	<script>
		
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
		
	</script>


</body>
</html>
