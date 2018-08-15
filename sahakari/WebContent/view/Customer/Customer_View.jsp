<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
.resulttable{
display:none;}
</style>
</head>
<body class="background">
	<div class="col-md-12 col-sm-12 col-xs-12 ">
	
		<div class="x_panel">
			<div class="x_title">
				<h2>MEMBER DETAILS</h2>
				
				<a href="customerinsert.click" class="btn btn-primary pull-right btn-sm" >Add New Member</a>
				<a href="viewcustomer.click" class="btn btn-round btn-info pull-right btn-sm" ><i class="fa fa-arrow-left" aria-hidden="true"></i> Go Back</a>
				
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
			<div class="loader"><p>Loading Please Wait......</p></div>
				<jsp:include page="customerDetailTable.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<p>${msg }</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function(){
		<%if (request.getAttribute("msg") != null) {%>
		$('#myModal').modal('show');
	<%}%>
	});
	$('.clickbtn').click(function() {
		return confirm('CONFIRM?');
	}); 
	</script>
</body>
</html>
