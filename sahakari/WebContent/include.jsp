<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap -->
<link href="template/css/multiselecttick.css"
        rel="stylesheet" type="text/css" />
    <link href="template/css/bootstrap.min.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="template/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="template/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="template/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="template/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="template/css/scroller.bootstrap.min.css" rel="stylesheet">
    <link href="template/css/switchery.min.css" rel="stylesheet">
    <link href="template/css/bootstrap-tagsinput.css" rel="stylesheet">
    <!-- Jtable -->
    <link href="template/css/jtable.min.css" rel="stylesheet">
    
    
    <!-- Font Awesome -->
    <link href="template/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="template/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="template/css/custom.min.css" rel="stylesheet">
    <link href="template/css/jquery.tagsinput.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/scroller/1.4.4/css/scroller.dataTables.min.css" rel="stylesheet">
      <link href="template/nepaliDatePicker/nepali.datepicker.v2.2.min.css">
    <style>
    	.background{
    	background-color:#F7F7F7;}
    	body{
    	color:black}
    	
    	input[type=text] {
	font-size: 14px;
	font-weight: bold;
	color:#00030a;
}

textarea:focus, input:focus {
    color: #0206ef;
}

caption {
	font-size: 14px;
	font-weight: bold;
	color:#0206ef;
}


.black_color {
font-weight: bold;
  color: #00030a;
  font-size: 14px;
}
    </style>
</head>
<body>
 <!-- jQuery -->
    <script src="template/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="template/js/bootstrap.min.js"></script>
     <!-- Datatables -->
 
    <script src="template/js/jquery.dataTables.min.js"></script>
    <script src="template/js/dataTables.bootstrap.min.js"></script>
    <script src="template/js/dataTables.buttons.min.js"></script>
    <script src="template/js/buttons.bootstrap.min.js"></script>
    <script src="template/js/buttons.flash.min.js"></script>
    <script src="template/js/buttons.html5.min.js"></script>
    <script src="template/js/buttons.print.min.js"></script>
    <script src="template/js/dataTables.fixedHeader.min.js"></script>
    <script src="template/js/dataTables.keyTable.min.js"></script>
    <script src="template/js/dataTables.responsive.min.js"></script>
    <script src="template/js/responsive.bootstrap.js"></script>
    <script src="template/js/dataTables.scroller.min.js"></script>
    <script src="template/js/jszip.min.js"></script>
    <script src="template/js/pdfmake.min.js"></script>
    <script src="template/js/vfs_fonts.js"></script>
      <script src="template/js/switchery.min.js"></script>
         <script src="template/js/bootstrap-tagsinput.js"></script>
     
            <script src="https://cdn.datatables.net/scroller/1.4.4/js/dataTables.scroller.min.js"></script>
    
    <!-- FastClick -->
    <script src="template/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="template/js/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="template/js/custom.min.js"></script>
    
    <!-- Form Required Scripts -->
	<script type="text/javascript" src="template/nepaliDatePicker/nepali.datepicker.v2.2.min.js"></script>
	<script type="text/javascript" src="template/js/dateconvapi.js"></script>
	<!-- jQuery Tags Input -->
    <script type="text/javascript" src="template/js/jquery.tagsinput.js"></script>
    <!-- Jtable -->
    <script src="template/js/jquery.jtable.min.js"></script>
    <script src="template/js/datatable.rowGroup.min.js"></script>
     <script src="template/js/jquery.tabletoCSV.js"></script>
   
	<script>
	
  function printData(divname)
	 {
	    var divToPrint=document.getElementById(divname);
	    newWin= window.open("");
	    newWin.document.write(divToPrint.outerHTML);
	    newWin.print();
	    newWin.close();
	 }
</script> 
	
	
</body>
</html>