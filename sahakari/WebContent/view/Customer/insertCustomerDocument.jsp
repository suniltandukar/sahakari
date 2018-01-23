<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Bill Upload</title>

</head>
<body class="background">
<jsp:include page="/includefile"></jsp:include> 
<div class="breadcrumb-line">
			<nav aria-label="breadcrumb" role="navigation">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Member Documents</li>
			    <li class="breadcrumb-item active" aria-current="page">Upload Bill</li>
			  </ol>
			</nav>
		</div>
<div class="panel">
	
    				<div class="panel-heading">
    					<strong>Fill Bill Detail</strong>
    				</div>
    				<div class="panel-body">
    				<form method="POST" action="bill.upload" class="confirm" enctype="multipart/form-data">
    				
    				
						<table class="table">
							<tbody>
								<tr>
									<td>
										<input type="submit" name="button"  value="submit" class="btn btn-primary"  >
									</td>
								</tr>
								
								<tr>
								<td>
                                       <h5>Member ID</h5>
                                       <input type="text" name="memid" class="form-control"  required>
                                   	</td>
								
									<td>
                                       <h5>Member Name</h5>
                                       <input type="text" name="memname" class="form-control"  required>
                                   	</td>
                                   	
								</tr>
								
								<tr>
									<td>
                                       <h5>Input Date(B.S.)</h5><span class="staffcheck"></span>
                                       <input type="text" name="date" class="form-control" id="nepaliDate1"  value="" required>
                                   	</td>
                                   	<td>
                                       <h5>Input Date(A.D.)</h5><span class="staffcheck"></span>
                                       <input type="text" name="dateen" class="form-control" id="englishDate1"  value="" required>
                                   	</td>
                                   
								</tr>
								<tr>
									<td>
                                       <h5>Attach Bill Image</h5> 
                                       <input type="file" name="filename" class="form-control"   value="" required>
									</td> 
									<td>
                                      <h5>Company Name</h5> <select class="form-control"
                                            name="companyid"  required>
                                                <option value="" selected>Select company</option>
                                               
                                        </select>
                                   	</td>
                                   	</tr>
							</tbody>
						</table> 
					   </form>	
					   			
    				</div>
    			</div>
    			<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-body">
          <p><b>${msg }</b></p>
          Bill No.:: ${billno }<br>
          Company Name:: ${companyname }<br>
          Image Name:: ${billname }<br>
          
          <a href="view/uploadedbills/${billname }" target="_blank">View</a>
         
          
         
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
</div>
    		
    	
    	

</body>
<script src="assets/js/dateConverter.js"></script>
<script>
$(document).ready(function()
        {
	<%if(request.getAttribute("msg")!=null){%>
	   $('#myModal').modal('show');
	   <%}%>
	   $('.confirm').submit(function(){
		  return confirm('sure?'); 
	   });
        });
</script>	


</html>