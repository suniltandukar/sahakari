
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:include page="/includefile"></jsp:include>
    <html>
    	<head></head>
    	<body class="background">
    		<div class="col-md-12 col-sm-12 col-xs-12">

		<div class="x_panel">
		
			<div class="x_title">
			
              <button class="pull-left btn btn-primary" onclick="goBack()"><i class="fa fa-chevron-left" aria-hidden="true"></i> Go Back</button>

				<h3 align="center">CALCULATED EMI RESULT</h>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="datatable-buttons"
					class="table jambo_table table-striped table-bordered dt-responsive nowrap display"
					cellspacing="0" width="100%" style="font-size: 95%;'">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Interest</th>
						<th>Principal</th>
						<th>Balance</th>
					</tr>
				</thead>
				<tbody>
					<%int sno=1; %>
				<c:forEach items="${list}" var="list">
											
					<tr>
						<td><%=sno %></td>
						<td>${list.interest }</td>
						<td>${list.principal }</td>
						<td>${list.balance }</td>
					</tr>
					<%sno++; %>
					</c:forEach>
				</tbody>
			</table>
			</div>

		</div>
	</div>
    		
    		<script>
function goBack() {
    window.history.back();
}
</script>
    	</body>
    </html>
			
	