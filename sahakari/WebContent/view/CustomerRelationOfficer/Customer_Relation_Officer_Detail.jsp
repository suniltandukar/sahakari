<jsp:include page="/includefile"></jsp:include>
<!DOCTYPE html>
<html>
    <head>
        <link rel="import" href="include.jsp"/>       
    </head>
    <body>
        <div class="breadcrumb-line">
            <nav aria-label="breadcrumb" role="navigation">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;<a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Customer Relation Officer</li>
                    <li class="breadcrumb-item active" aria-current="page">Add Customer Relation Officer</li>
                </ol>
            </nav>
        </div>
 <div class="panel panel-default">
    	<div class="panel-body">
            <div class="tab-content">
                <div id="menu2" class="tab-pane fade in active">
                    <br>
                    <ul class="nav nav-tabs">
                        <li><button type="submit" class="btn btn-success" form="form" name="addCustomerRelationOfficerDetail">Submit</button>&nbsp;&nbsp;&nbsp;</li>
                        <li class="active"><a data-toggle="tab" data-target="#1">Basic Details</a></li>                        
                    </ul>

                    <div class="tab-content">
                        <div id="1" class="tab-pane fade in active">
                        
                            <table class="table">
                                <tr>
                                    <td>
                                            <label for="relationshipOfficerName">Relationship Officer Name</label>
                                            <input class="form-control" type="text" name="relationshipOfficerName"/>
                                    </td>

                                    <td>
                                            <label for="address">Address</label>
                                            <input class="form-control" type="text" name="address"/>
                                    </td>

                                    <td>
                                            <label for="mobileNumber">Mobile Number </label>
                                            <input class="form-control" type="text" name="mobileNumber"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                            <label for="position">Position</label>
                                            <input class="form-control" type="text" name="position"/>
                                    </td>

                                    <td>
                                            <label for="office">Office</label>
                                            <input class="form-control" type="text" name="office"/>
                                    </td>

                                    <td>
                                            <label for="officePhnNum">Office Phone Number </label>
                                            <input class="form-control" type="text" name="officePhnNum"/>
                                    </td> 
                                </tr>

                                <tr>
                                    <td>
                                            <label for="officeFaxNum">office Fax number </label>
                                            <input class="form-control" type="text" name="officeFaxNum"/>
                                    </td>

                                    <td>
                                            <label for="officeEmail">Office Email</label>
                                            <input class="form-control" type="text" name="officeEmail"/>
                                    </td>
                                </tr>
                            </table>
                              </form>
                        </div>
                    </div>	
                </div>
            </div>
            </div></div>
      
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-body">
                        <p><b>${msg }</b></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            <%if (request.getAttribute("msg") != null) {%>
            $('#myModal').modal('show');
            <%}%>
        </script>  
    </body>
</html>








