<jsp:include page="/includefile"></jsp:include>
<body class="background">
<div class="breadcrumb-line">
			<nav aria-label="breadcrumb" role="navigation">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Member</a></li>
			      <li class="breadcrumb-item active" aria-current="page">Ammendment Of Member</li>
			    <li class="breadcrumb-item active" aria-current="page">Ammend Member</li>
			  </ol>
			</nav>
		</div>
<div class="panel panel-default" style="width: 100%; margin: auto;">
    <div class="panel-heading">
    	<h6><strong>Insert Member ID</strong></h6>
    	<%String pid= request.getParameter("pid");%>
    	<form method="post" action="customereditdisplayform.click">
    	<%if(pid!=null){ %>
    	<input type="text" class="form-control" style="width:20%;" value="<%=pid%>" name="pid"> 
    	<%}else{ %> 
    	<input type="text" class="form-control" style="width:20%;" name="pid"> 
    	<%} %>
    	<br>
    	<input type="submit" class="btn btn-info searchbtn" value="SEARCH" >
    	</form>
    </div>
     </div>
<div class="displayform">
</div>

</body>