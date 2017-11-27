<jsp:include page="/includefile"></jsp:include>
<html>
<head>

</head>
<div class="breadcrumb-line">
			<nav aria-label="breadcrumb" role="navigation">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			      <li class="breadcrumb-item active" aria-current="page">Customer</li>
			    <li class="breadcrumb-item active" aria-current="page">View</li>
			  </ol>
			</nav>
		</div>
<div class="panel panel-default" style="width: 100%; margin: auto;">
    
    <div class="panel-body">
					<div class="panel panel-default" style="width: 100%;">
					                        <div class="panel-heading">
					                            <h6>
					                                <strong>Customer Details</strong>
					                            </h6>
					                        </div>
					                        <div class="panel-body">
					                            <table id="example" class="table table-striped table-bordered"
					                                cellspacing="0" width="100%">
					                                <thead>
					                                    <tr>
					                                        <th>Header</th>
					                                        <th>Header</th>
					                                        <th>Header</th>
					                                        <th>Header</th>
					                                        <th>Header</th>
					                                        <th>Header</th>
					                                        <th><i class="fa fa-cog" aria-hidden="true"></i></th>
					                                    </tr>
					                                </thead>
					                                <tbody>
					                                   
					                                    <tr>
					                                        <td><a href=""></a></td>
					                                        <td></td>
					                                        <td></td>
					                                        <td></td>
					                                        <td></td>
					                                        <td></td>
					                                        <td><div class="dropdown">
		    													<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Action
		    													<span class="caret"></span></button>
															    <ul class="dropdown-menu">
															    	<li><a  href="editcustomer.click"  style="color:blue;"><i class="fa fa-eye" aria-hidden="true"></i> Show Detail</a></li>
															    	<li><a class="clickbtn" href="customer.del"  style="color:red;"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</a></li>
															    </ul>
															  </div>
															</td>
					                                    </tr>
					                                </tbody>
					                            </table>
					                        </div>
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
		$(document).ready(function() {
			   $('#example').DataTable();
			   <%if(request.getAttribute("msg")!=null){%>
			   $('#myModal').modal('show');
			   <%}%>
			} );
		$('.clickbtn').click(function(){
			return confirm('CONFIRM?');
		});
		
</script>	
</html>
