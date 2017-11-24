
<%-- 
    Document   : header
    Created on : Nov 2, 2017, 3:32:41 PM
    Author     : Khatiwada
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="import" href="include.jsp"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Brand and toggle get grouped for better mobile display -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"> ADBL</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
               
              
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">Profile</a>
                        </li>
                       
                        <li>
                            <a href="#">Edit Pasword</a>
                        </li>
						<li>
                            <a href="#">Create Admin</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="Limit.jsp" target="iframe"><i class="fa fa-fw fa-dashboard"></i> Limit Form</a>
                    </li>
                    <li>
                        <a href="collateralform.jsp" target="iframe"><i class="fa fa-fw fa-bar-chart-o"></i>Collateral</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-table"></i> Staffs</a>
                    </li >
                    <li>
                        <a href="#"><i class="fa fa-fw fa-edit"></i> Library</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-desktop">Stock</i> </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-fw fa-file"></i>Other Admin</a>
                    </li>
                </ul>
				</div>
        </nav>
            <!-- /.navbar-collapse -->
    </body>
</html>





