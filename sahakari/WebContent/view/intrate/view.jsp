<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/includefile"></jsp:include>
<html>
<head></head>
<body class="background">
<div>
	<table id="table"
		class="table "
		style="font-size: 100%;">
		<thead>
			<tr>
				<th>Start Date</th>
				<th>Category</th>
				<th>Rate</th>
				<th>Edit</th>
			</tr>
		</thead>
	</table>
</div>
<script>
$(document).ready(function() {
	$.ajax({
		url : "http://localhost:8080/api/intrate/findAll"
	}).then(function(data) {
		$("#table").dataTable({
			paging : false,
			aaData : data.data,
			aoColumns : [ {
				"mData" : "intereststartdate"
			},{
				"mData" : "categoryid"
			},{
				"mData" : "intrate"
			},
			
			{ "mData": "image",
                "orderable": false,
                "searchable": false,
                "render": function(data,type,row,meta) { // render event defines the markup of the cell text 
                    var a = '<a href="updateintrate.click?id='+row.id+'">Edit</a>'; // row object contains the row data
                    return a;
                }
            },
			]
		});
       
    });
} );
</script>

</body>
</html>
