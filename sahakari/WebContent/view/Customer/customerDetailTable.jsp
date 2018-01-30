<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<div>
	<table id="datatable"
		class="table jambo_table table-striped table-bordered resulttable"
		style="font-size: 100%;">
		<thead>
			<tr>
				<th>Member Id</th>
				<th>Legacy Member Id</th>
				<th>Name</th>
				<th>Registration Date</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Address</th>
				<th><i class="fa fa-cog" aria-hidden="true"></i></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">

				<tr>
					<td>${list.pid }</td>
					<td>${list.memberid }</td>
					<td>${list.name }</td>
					<td>${list.registrationDate }</td>
					<td>${list.gender }</td>
					<td>${list.dob }</td>
					<td>${list.address }</td>

					<td><a data-value="${list.pid}"
						class="viewmemberdetail btn btn-primary btn-xs"
						style="color: white;">View </a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="viewDetailModal"></div>
<script>
$('#datatable').each(function() 
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