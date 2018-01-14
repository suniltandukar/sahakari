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

	
	
	<div class="row">
	<div class="col-md-5 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Basic Elements <small>different form elements</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                   <div class="x_content">
                   
                   	<form method="post" id="form" name="Form1">
								<table class="table">
									<tbody>
										<tr>

											<td>
												
												<label class="control-label col-md-3 col-sm-3 col-xs-12">Username
												<span class="usercheck"></span></label>
										 <div class="col-md-12 col-sm-6 col-xs-6 form-group has-feedback">
										<input type="hidden" form="form" value="${userid}" name="useridforupdate">
												<input type="text" name="username"
												class="form-control datepicker username has-feedback-left" form="form"
												value="${username }">
												<span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
														</div>
											</td>

										</tr>
									
						
									</tbody>
								</table>
								<table id="table1">
									<caption>Check User Roles</caption>
										<c:set var="givenrole" value="${givenrole }" />
										<td><label><input type="checkbox"    id="view"
												name="role" value="#nav1" class="js-switch"
												<c:if test="${fn:contains(givenrole,'#nav1')}"> checked="checked"</c:if>>
												Insert Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td><label><input type="checkbox" id="add"   
												name="role" value="#nav2" class="js-switch"
												<c:if test="${fn:contains(givenrole,'#nav2')}"> checked="checked"</c:if>>
												View Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>

									</tr>
									<tr>
										<td><label><input type="checkbox"    id="add"
												name="role" value="#nav3" class="js-switch"
												<c:if test="${fn:contains(givenrole,'#nav3')}"> checked="checked"</c:if>>
												Edit Customer</label></td>
										<td><label><input type="checkbox" class="js-switch"
												   id="staff" name="role"
												value="#share">

												Share Certificate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
									</tr>
									<tr>

										<td><label><input type="checkbox"  class="js-switch"    id="admin"
												name="role"
												value="#nav1, #nav2, #nav3, #nav4, #nav5, #nav6, #nav7, #nav8, #nav9, #nav10, #nav11, #nav12, #nav13, #nav14, #nav15, #nav16, #nav17, #change, #remove, #share"
												<c:if test="${givenrole eq '#nav1, #nav2, #nav3, #nav4, #nav5, #nav6, #nav7, #nav8, #nav9, #nav10, #nav11, #nav12, #nav13, #nav14, #nav15, #nav16, #nav17, #change, #remove, #share
'}"> checked="checked"</c:if>>Admin(all)</label></td>
										<td><label><input type="checkbox"  class="js-switch"   id="transfer"
												name="role" value="#nav4" 
												<c:if test="${fn:contains(givenrole,'#nav4')}"> checked="checked"</c:if>> Insert Certificate</label></td>
										

									</tr>
									<tr>
									<td><label><input type="checkbox"   class="js-switch"   id="update"
												name="role" value="#nav5"
												<c:if test="${fn:contains(givenrole,'#nav5')}"> checked="checked"</c:if>>View Certificate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td>
										<label><input type="checkbox"   class="js-switch"   name="role"
												value="#nav6"
												<c:if test="${fn:contains(givenrole,'#nav6')}"> checked="checked"</c:if>>Insert Account</label></td>
										
									</tr>
										<tr>
									<td><label><input type="checkbox"  class="js-switch"    id="update"
												name="role" value="#nav7"
												<c:if test="${fn:contains(givenrole,'#nav7')}"> checked="checked"</c:if>>View Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td>
										<label><input type="checkbox"  class="js-switch"   name="role"
												value="#nav8"
												<c:if test="${fn:contains(givenrole,'#nav8')}"> checked="checked"</c:if>>Edit Account</label></td>
										
									</tr>
										<tr>
									<td><label><input type="checkbox"  class="js-switch"   id="update"
												name="role" value="#nav9"
												<c:if test="${fn:contains(givenrole,'#nav9')}"> checked="checked"</c:if>>Insert Transaction&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										<td>
										<label><input type="checkbox"  class="js-switch"   name="role"
												value="#nav10"
												<c:if test="${fn:contains(givenrole,'#nav10')}"> checked="checked"</c:if>>View Transaction</label></td>
										
									</tr>
										<tr>
											<td>
										<label><input type="checkbox"  class="js-switch"   name="role"
												value="#nav11"
												<c:if test="${fn:contains(givenrole,'#nav11')}"> checked="checked"</c:if>>Edit Transaction</label></td>
										
										<td>
										<label><input type="checkbox"  class="js-switch"   name="role"
												value="#nav12"
												<c:if test="${fn:contains(givenrole,'#nav12')}"> checked="checked"</c:if>>Multi Level</label></td>
										
									</tr>
									<tr>
										<td><label><input type="checkbox"  class="js-switch" id="createuser"
												name="role" value="#nav17"
												<c:if test="${fn:contains(givenrole,'#nav17')}"> checked="checked"</c:if>>Create
												User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
										
										<td><label><input type="checkbox" class="js-switch"   id="deluser"
												name="role" value="#delete" 
												<c:if test="${fn:contains(givenrole,'#delete')}"> checked="checked"</c:if>>Delete User</label></td>
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
             <div class="col-md-7 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 	 <strong>Existing Users</strong>
                 	 <h2>Form Basic Elements <small>different form elements</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                     <div class="x_content">
                     	
                     	<table class="table display jambo_table table-striped table-bordered" id="table">
								<thead>
									<tr>
										<th>S No.</th>
										<th>User Name</th>
										<th>Actions</th>
										
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${userInfo}" var="user">
									<tr>
										<td></td>
										<td>${user.username }</td>

										<td>

										<a href="edituser.user?userid=${user.userid })"  ><i class="fa fa-pencil-square-o"></i></a>
										<a class="confirmbtn" href="deleteuser.user?userid=${user.userid }"   ><i  class="fa fa-trash" id="deletebtn" aria-hidden="true" style="color:red"></i></a>
										</td>
							
										
									</tr>
									</c:forEach>
								</tbody>
							</table>
                     </div>
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
			$('#admin').change(function () {
			    if (this.checked) {
			    	$others.bootstrapToggle('off')
			    }
			});
			$others.change(function () {
			    if (this.checked) {
			    	$('#admin').bootstrapToggle('off') 
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
