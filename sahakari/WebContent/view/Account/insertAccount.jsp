<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		
			
			<div class="col-md-8 col-xs-12">
		<div class="x_panel">
			<form class="form-horizontal form-label-left input_mask"
				method="post" action="account.add">
<!--  action="account.add" -->
<!-- action="testjasper" -->
				<div class="x_title">
					<h2>Add New Account</h2>
					
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<br />
<input type="text" name="appl" id="appl" value="${appl }" hidden>
					<div class="form-group">
						<label class="control-label col-md-4 col-sm-4 col-xs-12">Member Id</label>
						<div class="col-md-2 col-sm-2 col-xs-12">
							 <input type="text" id="memberid"
									class="form-control sharecertmemberid memberid" name="pid"
									value="" data-validation="number" data-validation-error-msg=" ">
						</div>
		<!-- <p><span id="membername" name="membername">
         This is another paragraph</span></p>	 -->		
			
						
						
						
						
					</div>
					<div class="form-group">
						<label class="control-label col-md-4 col-sm-4 col-xs-12">Account 
							No</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							 <input type="text"
									class="form-control accountNumber" name="accountNumber"
									value="${accountno }" data-validation="number"
									data-validation-error-msg=" " required readonly>
						</div>
					</div>
					<div class="form-group" >
						<label class="control-label col-md-4 col-sm-4 col-xs-12">Alternate
							Account No</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text"
									class="form-control" name="alternativeAccounId" value=""
									data-validation="number" data-validation-error-msg=" ">
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 ">
							<span class="accountName"></span>
						</div>
					</div>
					<div class="form-group" id="cashDeposit">
						<label class="control-label col-md-4 col-sm-4 col-xs-12">
							Account Type</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="form-control categoryid black_color"
									name="categoryId" id="categories" required>
										<option value="">Select Category</option>
										<c:forEach items="${categorylist }" var="c">
											<option value="${c.categoryId }">${c.categoryId }-${c.categoryHead }</option>
										</c:forEach>
								</select>

						</div>
						<div class="col-md-6 col-sm-6 col-xs-12 ">
							<span class="accountName"></span>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-4 col-sm-4 col-xs-12">Account Name
						</label>
						<div class="col-md-5 col-sm-5 col-xs-12">
							<input type="text"
									class="form-control memberid" name="accountName" id="accountname" value="">

							
							
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-4 col-sm-4 col-xs-12">Limit Reference </label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text"
									class="form-control" name="limitRef" value="" ${readonly }>
						</div>
					</div>
				
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button class="btn btn-info" type="button" id="validate">Validate</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</div>


				</div>
			</form>
		</div>

									
									
							</div>
							

	</div>

			<div id="1" class="tab-pane fade in active"></div>

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
/* $("#validate").click(function() */
		$("#memberid").blur(function()
		{
			
		var id=$('.memberid').val();
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
/* $("#validate").click(function() */
		$("#memberid").blur(function()	 
        {

 var id=$('.memberid').val();
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
