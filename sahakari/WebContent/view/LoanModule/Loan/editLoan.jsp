<jsp:include page="/includefile"></jsp:include>
<body class="background">
<div class="breadcrumb-line">
			<nav aria-label="breadcrumb" role="navigation">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Loan Module</a></li>
			      <li class="breadcrumb-item active" aria-current="page">Loan</li>
			    <li class="breadcrumb-item active" aria-current="page">Edit Loan</li>
			  </ol>
			</nav>
		</div>
<div class="panel panel-default" style="width: 100%; margin: auto;">
    <div class="panel-heading">
    	<h6><strong>Insert Account Number</strong></h6>
    	<%String accountNo= request.getParameter("accountNumber");%>
    	<form method="post" action="editLoan.update">
    	<%if(accountNo!=null){ %>
    	
    	<input type="text" class="form-control accountNo" style="width:20%;" value="<%=accountNo%>" name="accountNo"> 
    	<%}else{ %> 
    	
    	<input type="text" class="form-control" style="width:20%;" name="accountNo"> 
    	<%} %>
    	<br>
    	<input type="submit" class="btn btn-info searchbtn" value="SEARCH" >
    	</form>
    </div>
     </div>
<div class="displayform">
</div>

</body>