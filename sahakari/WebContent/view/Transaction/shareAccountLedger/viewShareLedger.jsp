<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<body class="background">
<div>
	<table id="datatable"
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
		
		<tbody>
		<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.pid }</td>
				<td>${list.accountNo }</td>
				<td>${list.balanceAmount }</td>
				<td>${list.balanceQuantity }</td>
				<td>${list.narration }</td>
			
			
			
			<tr>
			</c:forEach>
				
			
			
		
		
		
		</tbody>
		
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
</body>