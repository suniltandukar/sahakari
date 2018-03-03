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
<input type="hidden" value="<%=request.getAttribute("memberid")%>" class="inputmemberid">
<input type="hidden" value="<%=request.getAttribute("memberid")%>" class="inputmembername">

<script>

	
	$(document).ready(function() {
		var memberid=$(".inputmemberid").val();
		var membername=$(".inputmembername").val();
		 $('#datatableaa').DataTable( {
		        
		        "ajax": "customerSearchResultList.click?memberid="+memberid+"&membername="+membername,
		        "columns":[
		        	{"data":"pid"},
		        	{"data":"memberid"},
		        	{"data":"name"},
		        	
		        	{"data":"gender"},
		        	
		        	{"data":"address"},
		        ]
		    } );
	} );
</script>