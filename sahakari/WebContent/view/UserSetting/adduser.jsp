<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<%
if (request.getAttribute ("updatebtn") != null ) { %> .updatebtn {
	display:block;
	
}

.submitbtn {
	display: none;
}
<%
}
%>
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
			<div class="row">
				<div class="col-md-5">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>User Detail</strong>
						</div>
						<div class="panel-body">
							<form method="post" id="form" name="Form1">
								<table class="table">
									<tbody>
										<tr>

											<td>
												<h5>Username</h5> <span class="usercheck"></span> <input
												type="hidden" form="form" value="" name="useridforupdate">
												<input type="text" name="username"
												class="form-control datepicker username" form="form"
												value="${username }">

											</td>

										</tr>
									
									</tbody>
								</table>
								<table id="table1">
									<caption>Check User Roles</caption>
									<tr>
										<c:set var="givenrole" value="${givenrole }" />
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="view"
												name="role" value="#nav1"
												<c:if test="${fn:contains(givenrole,'#nav1')}"> checked="checked"</c:if>>
												View Inventory &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><label><input type="checkbox" id="add" data-toggle="toggle" data-size="small" 
												name="role" value="#nav2"
												<c:if test="${fn:contains(givenrole,'#nav2')}"> checked="checked"</c:if>>
												Add Inventory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>

									</tr>
									<tr>
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="add"
												name="role" value="#nav2"
												<c:if test="${fn:contains(givenrole,'#nav3')}"> checked="checked"</c:if>>
												Edit Inventory</label></td>
										<td><label><input type="checkbox"
												data-toggle="toggle" data-size="small"  id="staff" name="role"
												value="#nav1,#nav2,#nav3,#nav4,#nav5,#nav6,#nav7,#nav8,#nav9,#nav10">

												Staff(all)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									</tr>
									<tr>

										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="admin"
												name="role"
												value="#nav1, #nav2, #nav3, #nav4, #nav5, #nav6, #nav7, #nav8, #nav9, #nav10, #nav11, #nav12, #nav13, #nav14, #change, #remove"
												<c:if test="${givenrole eq '#nav1, #nav2, #nav3, #nav4, #nav5, #nav6, #nav7, #nav8, #nav9, #nav10, #nav11, #nav12, #nav13, #nav14, #change, #remove'}"> checked="checked"</c:if>>Admin(all)</label></td>
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="transfer"
												name="role" value="#nav4"> Transfer Items</label></td>
										

									</tr>
									<tr>
									<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="update"
												name="role" value="#nav6"
												<c:if test="${fn:contains(givenrole,'#nav2')}"> checked="checked"</c:if>>Update&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  name="role"
												value="#remove"
												<c:if test="${fn:contains(givenrole,'#remove')}"> checked="checked"</c:if>>Delete</label></td>
										
									</tr>
									<tr>
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small"  id="createuser"
												name="role" value="#nav10"
												<c:if test="${fn:contains(givenrole,'#nav10')}"> checked="checked"</c:if>>Create
												User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><label><input type="checkbox" data-toggle="toggle" data-size="small" data-offstyle="warning" id="deluser"
												name="role" value="#remove">Delete User</label></td>
									</tr>
								</table>
								<br> <input type="submit" name="button" value="submit"
									class="btn btn-primary submitbtn" onclick="return OnButton1()">

								<input type="submit"   name="updatebtn"
									class="updatebtn btn btn-primary" value="update"
									onclick="return OnButton2()">

							</form>

						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Existing Users</strong>
						</div>
						<div class="panel-body">
							<table class="table display" id="table">
								<thead>
									<tr>
										<th>S No.</th>
										<th>User Name</th>
										<th id="remove">Actions</th>
										<!-- 
									<th><i class="fa fa-cog" aria-hidden="true"></i></th> -->
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${userInfo}" var="user">
									<tr>
										<td></td>
										<td>${user.username }</td>
										<td></td>
										
									</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
				
					<p>
						<b>${msg}</b>
					</p>
					<br> Username:${username }<br> 

				
				</div>
				<div class="modal-footer">
					<button type="button" id="button" class="btn btn-default"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {

			$('#button').click(function() {
				$('input[type="text"]').val('');
			});
			var $others = $('input[name="role"]').not('#admin')
			$('#admin').change(function() {
				if (this.checked) {
					$others.prop('checked', false)
				}
			});
			$others.change(function() {
				if (this.checked) {
					$('#admin').prop('checked', false)
				}
			})

			var t=$('#table').DataTable({
				"iDisplayLength" : 50
			});
			  t.on( 'order.dt search.dt', function () {
			        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
			            var c=cell.innerHTML = i+1;
			        } );
			    } ).draw();
	
			 
	

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
	<script>
		function OnButton1() {
			document.Form1.action = "adduseraction.user"
			document.Form1.submit();
			return true;
		}

		function OnButton2() {
			document.Form1.action = "updateuser.user"

			document.Form1.submit();
			return true;
		}
		
	</script>
	
	<c:if test="${msg!=null }">
	<script>
	
	$('#myModal').modal('show');
	</script>
	</c:if>
	
</body>

</html>