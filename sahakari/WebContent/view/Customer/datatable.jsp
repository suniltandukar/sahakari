<jsp:include page="/includefile"></jsp:include>
<html>
	<head>
	<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
	</head>
	<body>
	
	<table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>First name</th>
                <th>Last name</th>
               
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>First name</th>
                <th>Last name</th>
               
            </tr>
        </tfoot>
    </table>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable( {
        
        "ajax": "datas.json",
        "columns": [
                    {"data":"firstname"},
                    {"data":"lastname"}
                    ],
        scrollY:        200,
        scroller:       true
    } );
} );

</script>
	</body>
</html>
