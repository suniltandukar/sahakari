<%if(session.getAttribute("userDetail")!=null){ %>
<jsp:include page="/includefile"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en-US">
    <head>
    </head>

    <body   class="hold-transition skin-blue sidebar-mini" >

        <div class="wrapper"  >

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>S</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b></b>&nbsp;SAHAKARI</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a  class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <span class="navbar-text bg-info"><strong>ARTHIK BARSA (2073-2074)
                    <input type="text" value="${userrole}"></strong></span>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a class="dropdown-toggle clickable" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">1</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 1 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a>
                                                    <div class="pull-left">
                                                        <a href="#"><i class="fa fa-user"></i> Shishir Karki</a>
                                                    </div>

                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">See All Messages</a></li>
                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a class="dropdown-toggle clickable" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">1</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 1 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> abc
                                                </a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li class="footer"><a class="clickable">View all</a></li>
                                </ul>
                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a class="dropdown-toggle clickable" data-toggle="dropdown">
                                    <i class="fa fa-user"></i>
                                    <span class="hidden-xs"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <div class="row">
                                            <div class="col-xs-4 text-center">
                                                <a class="clickable">Setting1</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a class="clickable">Setting2</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a class="clickable">Setting3</a>
                                            </div>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a  class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="logout.log" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <h4><i class="fa fa-user"></i></h4>
                        </div>
                        <div class="pull-left info">
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-home"></i>
                                <span>Dashboard</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="header"><a href="#/!"><i class="fa fa-circle-o"></i> Dashboard</a></li>            
                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-child"></i>
                                <span>Customer</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li id="nav1"><a href="customerinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li id="nav2"><a href="viewcustomer.click" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>
                                <li id="nav3"><a href="editcustomer.click" target="iframe_a"><i class="fa fa-circle-o"></i>Edit </a></li>                                  
                            </ul>
                        </li>
                        <li id="share" class="treeview">
                            <a href="#">
                                <i class="fa fa-child"></i>
                                <span>Share Certificate</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li id="nav4"><a href="sharecertificateinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li id="nav5"><a href="viewsharecertificate.click" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-child"></i>
                                <span>Account</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li id="nav6" ><a href="insertaccount.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li id="nav7"><a href="viewaccount.click" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>
                                <li id="nav8"><a href="editaccount.click" target="iframe_a"><i class="fa fa-circle-o"></i>Edit </a></li>                                  
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-child"></i>
                                <span>Transaction</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li id="nav9"><a href="inserttransaction.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li id="nav10"><a href="viewtransaction.click" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>
                                <li id="nav11"><a href="edittransaction.click" target="iframe_a"><i class="fa fa-circle-o"></i>Edit </a></li>                                  
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i> <span>Multilevel</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="treeview">
                                    <a href="#"><i class="fa fa-circle-o"></i> Level One
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li id="nav12"><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                        <li id="nav13" class="treeview">
                                            <a href="#"><i class="fa fa-circle-o"></i> Level Two
                                                <span class="pull-right-container">
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>
                                            <ul class="treeview-menu">
                                                <li id="nav14"><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                                <li id="nav15"><a class="click"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i> <span>User Settings</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                            	<li id="nav17"><a href="adduser.user" target="iframe_a"><i class="fa fa-circle-o"></i> Add Users</a></li>
                                
                            </ul>
                        </li>


                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>


            <div class="content-wrapper " >
            	
                <iframe height="1300px" width="100%" src="" id="Iframe" name="iframe_a" style=" margin:auto ">
                </iframe>
                	
            </div>
        </div>
       
    </body>
</html>
<%
}else{
	out.println("No Session Found! Please Login Again! ");
}%>
