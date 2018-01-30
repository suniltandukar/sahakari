<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
h5 {
	font-size: 80%;
	font-weight: bold;
}
</style>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
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
	<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
			<div class="x_title">
				<h4><strong>ADD NEW ACCOUNT</strong></h4>
				<input type="text" id="membername"
									class="form-control" name="membername"
									value="" readonly style="width:30%;">
			</div>
			<div class="x_content">
				<form class="form-horizontal shareCertForm toggle-disabled"
					id="form1" method="post" action="account.add">
					<table class="table">
						<tbody>
							<tr>
								<td><input type="submit" class="btn btn-success"
									value="Save"></td>
							</tr>
							<tr>
								<td>
									<h5>Member Id</h5> <input type="text" id="memberid"
									class="form-control sharecertmemberid memberid" name="memberid"
									value="" data-validation="number" data-validation-error-msg=" ">
								</td>
								<td>
									<h5>Account No</h5> <input type="text"
									class="form-control accountNumber" name="accountNumber"
									value="${accountno }" data-validation="number"
									data-validation-error-msg=" " required>
								</td>
								<td>
									<h5>Alternative Account ID</h5> <input type="text"
									class="form-control" name="alternativeAccounId" value=""
									data-validation="number" data-validation-error-msg=" ">
								</td>
							</tr>
							<tr>
								<td>
									<h5>Category</h5> <select class="form-control categoryid"
									name="categoryId" id="categories">
										<option value="">Select Category</option>
										<c:forEach items="${categorylist }" var="c">
											<option value="${c.categoryId }">${c.categoryHead }</option>
										</c:forEach>
								</select>
								</td>
								<td>
									<h5>Account Type</h5> <select class="form-control accounttype"
									name="accountType" id="accounttype">
										<option value="">Select Account Type</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<h5>Account Name</h5> <input type="text"
									class="form-control memberid" name="accountName" id="accountname" value=""
									data-validation="letternumeric" data-validation-error-msg=" ">

								</td>
								<td>
									<h5>Limit Reference</h5> <input type="text"
									class="form-control" name="limitRef" value="">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>

			<div id="1" class="tab-pane fade in active"></div>
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
	<script type="text/javascript" src="assets/js/autoSelection.js"></script>
	<script type="text/javascript" src="assets/js/form.js"></script>
	<script>
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	  
</script>
	<!-- <script>
  $.validate({
    lang: 'en',
    modules : 'date,toggleDisabled',
	  disabledFormFilter : 'form.toggle-disabled',
	 showErrorDialogs : false

    });
</script> -->
<script>
$(".memberid").blur(function()
		{
		var id=$(this).val();
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
		$("#accountname").val(html);
		} 
		});
		});
$("#categories").change(function()
		{
		var id=$(this).val();
		var dataString = 'id='+ id;

		$.ajax
		({
		type: "POST",
		url: "showaccounttype.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$("#accounttype").html(html);
		} 
		});

		});
$(".memberid").blur(function()
		 
        {

 var id=$(this).val();
 var dataString = 'memberid='+ id;
 $.ajax
    ({
    type: "POST",
    url: "generateaccountno.click",
    data: dataString,
    cache: false,
    success: function(html)
    {
    $(".accountNumber").val(html);
    } 
    });
 
});
</script>
</body>
</html>
