<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head>
<style>
.green {
	color: green
}

.red {
	color: red
}

.updatebtn {
	display: none;
}
h6{
font-weight:bold;}

<%--
<%
if (request.getAttribute ("updatebtn ") != null ) { %> .updatebtn {
	display: block;
}

.submitbtn {
	display: none;
}
<%
}
%>
--%>
</style>
</head>
<body class="background">


	<div class="breadcrumb-line">
		<nav aria-label="breadcrumb" role="navigation">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><i class="fa fa-home"
					aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Settings</li>
				<li class="breadcrumb-item active" aria-current="page">User
					Settings</li>
				<li class="breadcrumb-item active" aria-current="page">Add
					Users</li>
			</ol>
		</nav>
	</div>

	<div class="panel panel-default" style="width: 100%; margin: auto;">

		<div class="panel-body">
			<div class="panel panel-default" style="width: 100%;">
				<div class="panel-heading count">
					<strong>Add New User</strong>
				</div>
				<div class="panel-body">
					<form method="post" action="updateuser.user" name="form" id="form" >
						<table class="table">
							<tbody>
								<tr>

									<td>
										<h6>Username</h6> <input type="hidden" form="form"
										value="${useredit.userid}" name="useridforupdate"> <input
										type="text" name="username" class="form-control" form="form"
										data-validation="number" value="${useredit.username }" required>
									</td>
									<td>
										<h6>Role Name</h6> <select class="form-control"
										name="givenRole" form="form">
										<c:if test="${update eq 'update' }">
											<c:forEach items="${rolename }" var="role">
												<option value="${role }" >${role }</option>
											</c:forEach>
											</c:if>
											<option value="" >Select Role</option>
											<option value="${role }" <c:if test="${role eq 'admin' }">selected</c:if> >${role }</option>
											<option value="${role }" <c:if test="${role eq 'staff' }">selected</c:if> >${role }</option>
											
											
										
										
										
											

									</select>
									</td>
									<td>
										<h6>Full Name</h6> <input type="text" class="form-control"
										name="fullName"  form="form" value="${useredit.fullName }">
									</td>

								</tr>
								<tr>
									<td>
										<h6>Post</h6> <input type="text" class="form-control"
										name="post"  form="form" value="${useredit.post }">
									</td>
									<td>
										<h6>Staff Code</h6> <input type="text" class="form-control"
										name="staffCode" form="form" value="${ useredit.staffCode}" required>
									</td>
									<td>
										<h6>Branch Code</h6> <input type="text" class="form-control"
										name="branchCode" form="form"  value="${ useredit.branchCode}" required>
									</td>
								</tr>
								<tr>
									<td>
										<h6>Start Date</h6> <input type="text" class="form-control"
										name="startDate" form="form" value="${ useredit.startDate}">
									</td>
									<td>
										<h6>End Date</h6> <input type="text" class="form-control"
										name="endDate" form="form" value="${ useredit.endDate}" required >
									</td>
									<td>
										<h6>Branch Allowed</h6> <select multiple id="branches"
									name="branchAllowed">
									<c:forEach items="${branchlist }" var="b">
										<option value="${b.branchCode }-${b.branchName}">${b.branchCode }-${b.branchName}</option>
									</c:forEach>
								</select>
									</td>
								</tr>

								<tr>
									<td>

										<h6>Function Allowed</h6> <input form="form"  type="text"
										name="functionAllowed" class="form-control " value="${ useredit.functionAllowed}"
										  />


									</td>
								</tr>
							</tbody>
						</table>
						<table>
						<caption><h4>Additional Functions</h4></caption>
						<tr>

							<td><label><input type="checkbox" id="dashboard"
									name="additionalFunctions" value="#dashboard" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#dashboard')}"> checked="checked"</c:if>>
									Dashboard &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="member"
									name="additionalFunctions" value="#member" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#member')}"> checked="checked"</c:if>>
									Member &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="shareholder"
									name="additionalFunctions" value="#shareholder" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#shareholder')}"> checked="checked"</c:if>>
									Shareholder &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="retailoperation"
									name="additionalFunctions" value="#retailoperation" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#retailoperation')}"> checked="checked"</c:if>>
									Retail Operations &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="generaltransaction"
									name="additionalFunctions" value="#generaltransaction" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#generaltransaction')}"> checked="checked"</c:if>>
									General Transaction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="loanmodule"
									name="additionalFunctions" value="#loanmodule" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#loanmodule')}"> checked="checked"</c:if>>
									Loan Module &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							</tr>
							<tr><td><label><input type="checkbox" id="nonfundbusiness"
									name="additionalFunctions" value="#nonfundbusiness" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#nonfundbusiness')}"> checked="checked"</c:if>>
									Non-fund Business &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="otherutilities"
									name="additionalFunctions" value="#otherutilities" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#otherutilities')}"> checked="checked"</c:if>>
									Other Utilities &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="reports"
									name="additionalFunctions" value="#reports" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#reports')}"> checked="checked"</c:if>>
									Reports &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
							<td><label><input type="checkbox" id="adminsettings"
									name="additionalFunctions" value="#adminsettings" class="js-switch"
									<c:if test="${fn:contains(functionAllowed,'#adminsettings')}"> checked="checked"</c:if>>
									Admin Settings &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
						</tr>
					</table>
						
							

						<input type="submit" name="button" value="Update"
							class="btn btn-primary">

					

					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-default" style="width: 100%; margin: auto;">

		<div class="panel-body">
			<div class="panel panel-default" style="width: 100%;">
				<div class="panel-heading count">
					<strong>Existing Users</strong>
				</div>
				<div class="panel-body">
				
					<table
						class="table display jambo_table table-striped table-bordered"
						id="datatable">
						<thead>
							<tr>
								<th>User Name</th>
								<th>Actions</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userInfo}" var="user">
								<tr>
									<td>${user.username }</td>

									<td><a href="edituser.user?userid=${user.userid }&username=${user.username}"><i
											class="fa fa-pencil-square-o"></i></a> <a class="confirmbtn"
										href="deleteuser.user?userid=${user.userid }&username=${user.username}"><i
											class="fa fa-trash" id="deletebtn" aria-hidden="true"
											style="color: red"></i></a></td>


								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
<!-- 	<script>
		$.validate({
			lang : 'en',
			modules : 'date,toggleDisabled,sanitize',
			disabledFormFilter : 'form.toggle-disabled',
			showErrorDialogs : false

		});
	</script> -->

	<script>
		$(document).ready(function() {

			$('#button').click(function() {
				$('input[type="text"]').val('');
			});
			var $others = $('input[name="role"]').not('#admin')
			$('#admin').change(function() {
				if (this.checked) {
					$others.bootstrapToggle('off')
				}
			});
			$others.change(function() {
				if (this.checked) {
					$('#admin').bootstrapToggle('off')
				}
			})

			var t = $('#table').DataTable({
				"iDisplayLength" : 50
				
			});
			t.on('order.dt search.dt', function() {
				t.column(0, {
					search : 'applied',
					order : 'applied'
				}).nodes().each(function(cell, i) {
					var c = cell.innerHTML = i + 1;
				});
			}).draw();

			$(".username").blur(function() {
				var id = $(this).val();
				var dataString = 'id=' + id;
				$.ajax({
					type : "POST",
					url : "checkusername.check",
					data : dataString,
					cache : false,
					success : function(html) {
						$(".usercheck").html(html);
					}
				});

			});
			$(".confirmbtn").click(function(event) {
				return confirm("CONFIRM?");
			});
			$(".staffcode").blur(function() {
				var id = $(this).val();
				var dataString = 'id=' + id;
				$.ajax({
					type : "POST",
					url : "checkstaffcode.check",
					data : dataString,
					cache : false,
					success : function(html) {
						$(".staffcheck").html(html);
						var user = $('.staffcheck').html().val();
						if (user = "Unavailable!") {
							alert('hello');
						}
					}
				});

			});
		});
	</script>
	

	<c:if test="${msg!=null }">
		<script>
			$('#myModal').modal('show');
		</script>
	</c:if>
	<!-- <script>
$('.hash').on('keypress',function(e){
	var value=$(this).val();
	$('.hash').val('#'+value);
});
</script> -->

	<script
		src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$('#branches').multiselect({
				includeSelectAllOption : true
			});
			$('#btnSelected').click(function() {
				var selected = $("#lstFruits option:selected");
				var message = "";
				selected.each(function() {
					message += $(this).text() + " " + $(this).val() + "\n";
				});
				alert(message);
			});
		});
	$('form').submit(function(){
		return confirm('Confirm Submission?');
	})
	</script>
</body>

</html>
