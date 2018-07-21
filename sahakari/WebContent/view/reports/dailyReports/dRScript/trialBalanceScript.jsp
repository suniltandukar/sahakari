<script>
	$(document).ready(function(){
		 $('#datatbl').DataTable( {
			
		    	"paging":  false,
		        "ajax": "tbdatas.click",
		        "columns":[
		        	
		        	{"data":"CATEGORYID"},
		        	{"data":"CATEGORYHEAD"},
		        	{"data":"DRBAL"},
		        	{"data":"CRBAL"},
		        	
		        ],
		        rowGroup: {
		        	   startRender: null,
		               endRender: function ( rows, group ) {
		            	  
		            	   return $('<tr/>')
		                    .append( '<td colspan="4">MAIN = '+group+'</td>' );
		                   
		               },
		               dataSrc: 'MAIN',
	            },
		        "footerCallback": function ( row, data, start, end, display ) {
		            var api = this.api(), data;
		            // Remove the formatting to get integer data for summation
		            var intVal = function ( i ) {
		                return typeof i === 'string' ?
		                    i.replace(/[\Rs,]/g, '')*1 :
		                    typeof i === 'number' ?
		                        i : 0;
		            };
		            // Total over this page
		            drTotal = api
		                .column( 2, { page: 'current'} )
		                .data()
		                .reduce( function (a, b) {
		                    return (intVal(a) + intVal(b)).toFixed(2);
		                }, 0 );
		            
		            crTotal = api
	                .column( 3, { page: 'current'} )
	                .data()
	                .reduce( function (a, b) {
	                    return (intVal(a) + intVal(b)).toFixed(2);
	                }, 0 );
		 
		            // Update footer
		            $( api.column( 2 ).footer() ).html(
		                ' '+drTotal +' '
		            );
		            $( api.column( 3 ).footer() ).html(
			                ' '+crTotal +' '
			            );
		           
		        },
		        dom:'Bfrtip',
		        buttons: [
		            { 
						text: 'PRINT',
						action: function(){
							printData('datatbl');
						}
						
		            },
		            {
		                text: 'CSV',
		                action: function () {
		                	
		                		$("#datatbl").tableToCSV();
		                }
		            },
		        ]
		    	
		     
		    } );
		 
		} );
		
	</script>