<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
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
</head>
<body class="hiddenscroll bgcolor background">

	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Transaction</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Teller Transaction</li>
			</ol>
		</nav>
	</div>
	
	<div class="col-md-8 col-xs-12">
		<div class="x_panel">
			<form class="form-horizontal form-label-left input_mask"
				method="post" action="newtel.add ">

				<div class="x_title">
					<h2>Teller Operation</h2>
				
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button class="btn btn-info" type="button" id="validate">Validate</button>
							<button class="btn btn-primary" type="reset">Reset</button>
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</div>
					<div class="ln_solid"></div>


					
					<div class="form-group">
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Teller Id</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="tellerId" id="tellerId"
								placeholder="" value="${tellerid}" readonly>
						</div>
						
						
					</div>
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">User Id</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="userId"
								placeholder="" value="" >
						</div>
					</div>
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Category</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="form-control" name="categoryid" id="categoryid">
								<option value="">Select category</option>
								
								<c:forEach items="${catlist }" var="cat">
								<option value="${cat.categoryId }">${cat.categoryHead }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Account Name</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="accountName"
								placeholder="" value="" >
						</div>
					</div>
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Account Number</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control" name="accountNumber"
								placeholder="" value="" >
						</div>
					</div>
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Open Date(B.S.)</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control openDateNep" name="openDateN"
								placeholder="" value="" onblur="nepaliToEnglish('.openDateNep','.openDateen')">
						</div>
					</div>
					<div class="form-group">
						
						<label class="control-label col-md-2 col-sm-2 col-xs-12">Open Date(A.D.)</label>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<input type="text" class="form-control openDateen" name="openDate"
								placeholder="" value="" onblur="englishToNepali('.openDateNep','.openDateen')" >
						</div>
					</div>
					
					

				</div>
			</form>
		</div>
</div>
	<div class="scriptdiv"></div>
	<jsp:include page="/msgmodal"></jsp:include>
	<script>
		
	
	
	 $("#validate").click(function() {
			var categoryId = $("#categoryid").val();
			 var dataString = 'categoryId='+ categoryId;
			$.ajax({
				type : "POST",
				url : "generateTellerId.click",
				data : dataString,
				cache : false,
				success : function(html) {
					$("#tellerId").val(html);
				}
			});
		});
	 
	 </script>
	<script type="text/javascript" src="template/js/form.js"></script>
	<script type="text/javascript" src="template/js/dateconverter.js"></script>
	<script>
	<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	</script>
</body>
</html>
