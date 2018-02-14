
<jsp:include page="/includefile"></jsp:include>
<html>
	<head>
	<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
	</head>
	<body>
	
	<table id="example" class="display" >
        <thead>
            <tr>
               <th>Name</th>
                <th>Id</th>
                <th>Type</th>
               
            </tr>
        </thead>
     
    </table>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable( {
        
        "ajax": "data.json",
        "columns":[
        	{"data":"name"},
        	{"data":"id"},
        	{"data":"type"}
        		
        	
        ]
      
    } );
} );

</script>
	</body>
</html>

