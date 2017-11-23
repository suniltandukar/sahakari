
<!DOCTYPE html>
<html lang="en-US" ng-app="myApp">
    <head>
        <link rel="import" href="include.jsp">

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
                    <span class="navbar-text bg-info"><strong>ARTHIK BARSA (2073-2074)</strong></span>
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
                                            <a href="logout.adbl" class="btn btn-default btn-flat">Sign out</a>
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

                                <li><a href="customerinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="CustomerServlet2?customerView" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-lastfm"></i>
                                <span>Limit</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="Limit.jsp" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="Limit_Servlet?viewLimtData" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-industry"></i>
                                <span>Customer Income Detail</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                    
                            <ul class="treeview-menu">
                                <li><a href="customerincomedetailinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i> Insert</a></li> 
                                <li><a href="CustIncDetail_Servlet?viewCustIncDetail" target="iframe_a"><i class="fa fa-circle-o"></i> View</a></li> 
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-male"></i>
                                <span>Customer Relation Officer</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="customerrelationofficerinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="CustRelOffDetail_Servlet?View_relOfficerDetail" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        
                          <li class="treeview">
                            <a href="#">
                                <i class="fa fa-shield"></i>
                                <span>Guarantor</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="Guarantor.jsp" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="Guarantor_Servlet?viewGuarantor" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share-alt"></i>
                                <span>Fund Transfer</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="Fund_Transfer.jsp" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="FundTransfer_Servlet?viewFundTransfer" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file"></i>
                                <span>KYC</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="KYC.jsp" target="iframe_a"><i class="fa fa-circle-o"></i>Insert</a></li>
                                <li><a href="KYC_Servlet2?viewKYC" target="iframe_a"><i class="fa fa-circle-o"></i>View </a></li>                                
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-male"></i>
                                <span>Collateral Right</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            
                            <ul class="treeview-menu">
                                <li><a href="collateralrightinsert.click" target="iframe_a"><i class="fa fa-circle-o"></i> Insert</a></li> 
                                <li><a href="CollateralRight_Servlet?viewCollateralRightDetail" target="iframe_a"><i class="fa fa-circle-o"></i> View</a></li> 
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-adn"></i>
                                <span>Account</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            
                            <ul class="treeview-menu">
                                <li><a href="accountform.jsp" target="iframe_a"><i class="fa fa-circle-o"></i> Insert</a></li> 
                                <li><a href="accountServlet?viewListAccount" target="iframe_a"><i class="fa fa-circle-o"></i> View</a></li> 
                            </ul>
                        </li>
                        
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-child"></i>
                                <span>Collateral</span>

                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            
                            <ul class="treeview-menu">
                                <li><a href="collateralform.jsp" target="iframe_a"><i class="fa fa-circle-o"></i> Insert</a></li> 
                                <li><a href="collateralServlet?viewListCollateral" target="iframe_a"><i class="fa fa-circle-o"></i> View</a></li> 
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
                                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                        <li class="treeview">
                                            <a href="#"><i class="fa fa-circle-o"></i> Level Two
                                                <span class="pull-right-container">
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>
                                            <ul class="treeview-menu">
                                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                                <li><a class="click"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>


                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>


            <div class="content-wrapper view" >
                <iframe height="1300px" width="100%" src="" id="Iframe" name="iframe_a">
                </iframe>
            </div>
        </div>
    </body>
</html>