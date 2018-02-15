<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<div>
	<table id="datatableaa"
		class="table jambo_table table-striped table-bordered resulttable display nowrap"
		style="font-size: 100%;">
		<thead>
			<tr>
				<th>Member Id</th>
				<th>Legacy Member Id</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Address</th>
			</tr>
		</thead>
		
	</table>
</div>
<div class="modal fade bs-example-modal-lg" id="detailModal"
	role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-body viewDetailModal"></div>
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
	 $('#datatableaa').DataTable( {
	        
	        "ajax": "customerdetailjson.click",
	        "columns":[
	        	{"data":"pid"},
	        	{"data":"memberid"},
	        	{"data":"name"},
	        	
	        	{"data":"gender"},
	        	
	        	{"data":"address"},
	        ]
	    } );
} );
$('#datatableaa').each(function() 
		{
	$(".resulttable").show();
			$(".loader").hide();
		});
	$('.viewmemberdetail').click(function(){
		var id=$(this).data("value");
		var dataString = 'id='+ id;
		$.ajax
		({
		type: "POST",
		url: "viewcustomerModal.click",
		data: dataString,
		cache: false,
		success: function(html)
		{
		$(".viewDetailModal").html(html);
		$('#detailModal').modal('show');
		} 
		});
	});
</script>