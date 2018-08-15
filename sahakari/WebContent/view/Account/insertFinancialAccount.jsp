<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<jsp:include page="/includefile"></jsp:include>

<html>
<head>
	<style>

body {
	font-size: 14px;
	font-weight: bold;
	color:#00030a;
}


textarea:focus, input:focus {
    color: #0206ef;
}


.black_color {
font-weight: bold;
  color: #00030a;
  font-size: 14px;
}

</style>

</head>
<body class="background">
	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Account</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Account</li>
			</ol>
		</nav>
	</div>
	<div class="panel panel-default" style="width: 95%; margin: auto;">
		<div class="panel-heading">
			<h4>Add Account</h4>
		</div>
		<div class="panel-body">

			<form class="form-horizontal shareCertForm toggle-disabled" id="form1" method="post"
				action="account.add">
				<div id="1" class="tab-pane fade in active">
					<table class="table">
						<tbody>
							<tr>
							
							<td><input type="button" id="validate" class="btn btn-success" value="validate"></button>
								<input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
									<td>
										<h5>Account No</h5> <input type="text"
									class="form-control" name="accountNumber" value="" >
									
										<input type="text" name="appl" id="appl" value="${appl }" hidden>
									</td>
								<td>
									<h5>Alternative Account ID</h5> <input type="text"
									class="form-control" name="alternativeAccounId" value="" data-validation="number" data-validation-error-msg=" " data-validation-optional="true">
								</td>
							</tr>
							<tr>
								 <td>
									<h5>Category</h5> <select class="form-control categoryid black_color"
									name="categoryId">
										<option value="">Select Category</option>
										<c:forEach items="${categorylist }" var="c">
										<option value="${c.categoryId }">${c.categoryId }-${c.categoryHead }</option>
										</c:forEach>
								</select>
								</td> 
								 <td>
									<h5>Account Type</h5> <select class="form-control accounttype black_color"
									name="accountType">
										<option value="FIN">FIN-Financial account</option>
								</select>
								</td> 
							</tr>
							<tr>
								<td>
									<h5>Account Name</h5> <input type="text"
									class="form-control memberid" name="accountName" value="" data-validation="alphanumeric" data-validation-error-msg=" ">
								</td>
<!-- 								<td>
									<h5>Limit Reference</h5> <input type="text"
									class="form-control" name="limitRef" value="">
								</td> -->
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/msgmodal"></jsp:include>
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
	<script type="text/javascript" src="assets/js/dynamicselector.js"></script>
	<script type="text/javascript" src="assets/js/form.js"></script>
	<script>
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	  
</script>
<script>
  $.validate({
    lang: 'en',
    modules : 'date,toggleDisabled',
	  disabledFormFilter : 'form.toggle-disabled',
	 showErrorDialogs : false

    });
</script>
</body>
</html>
