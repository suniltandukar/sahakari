<jsp:include page="/includefile"></jsp:include>

<div class="breadcrumb-line" >
			<nav aria-label="breadcrumb" role="navigation">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			      <li class="breadcrumb-item active" aria-current="page">Customer</li>
			    <li class="breadcrumb-item active" aria-current="page">Edit</li>
			  </ol>
			</nav>
</div>
<div class="panel panel-default"  >
    <div class="panel-heading">
    	<h6><strong>Insert Customer ID</strong></h6>
    	<%String itemcode= request.getParameter("id");%>
    	<%if(itemcode!=null){ %>
    	<input type="text" class="form-control itemcode" style="width:20%;" value="<%=itemcode%>"> 
    	<%}else{ %> 
    	<input type="text" class="form-control itemcode" style="width:20%;"> 
    	<%} %>
    	<br>
    	<input type="submit" class="btn btn-info searchbtn" value="SEARCH" >
    </div>
     </div>
<div class="displayform">
</div>
<script>
$(document).ready(function()
        {
	 $(".searchbtn").click(function()
		        {
		 var id=$(".itemcode").val();
		 var dataString = 'id='+ id;
		 $.ajax
	        ({
	        type: "POST",
	        url: "customereditdisplayform.click",
	        data: dataString,
	        cache: false,
	        success: function(html)
	        {
	        $(".displayform").html(html);
	        } 
	        });
		 
	});
});
</script>