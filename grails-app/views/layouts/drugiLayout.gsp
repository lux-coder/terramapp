<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- Title and other stuffs -->
    <title>TerraMagnificaApp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <!-- Stylesheets -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome icon -->
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="/assets/css/jquery-ui.css">
    <!-- Calendar -->
    <link rel="stylesheet" href="/assets/css/fullcalendar.css">
    <!-- prettyPhoto -->
    <link rel="stylesheet" href="/assets/css/prettyPhoto.css">
    <!-- Star rating -->
    <link rel="stylesheet" href="/assets/css/rateit.css">
    <!-- Date picker -->
    <link rel="stylesheet" href="/assets/css/bootstrap-datetimepicker.min.css">
    <!-- CLEditor -->
    <link rel="stylesheet" href="/assets/css/jquery.cleditor.css">
    <!-- Data tables -->
    <link rel="stylesheet" href="/assets/css/jquery.dataTables.css">
    <!-- Bootstrap toggle -->
    <link rel="stylesheet" href="/assets/css/jquery.onoff.css">
    <!-- Main stylesheet -->
    <link href="/assets/css/style.css" rel="stylesheet">
    <!-- Widgets stylesheet -->
    <link href="/assets/css/widgets.css" rel="stylesheet">
    <link href="/assets/css/select2.min.css" rel="stylesheet">

    <!-- JS -->
    <script src="/assets/js/jquery.js"></script> <!-- jQuery -->
    <script src="/assets/js/select2.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script> <!-- Bootstrap -->
    <script src="/assets/js/jquery-ui.min.js"></script> <!-- jQuery UI -->
    <script src="/assets/js/moment.min.js"></script> <!-- Moment js for full calendar -->
    <script src="/assets/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
    <script src="/assets/js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
    <script src="/assets/js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
    <script src="/assets/js/jquery.slimscroll.min.js"></script> <!-- jQuery Slim Scroll -->
    <script src="/assets/js/jquery.dataTables.min.js"></script> <!-- Data tables -->

<!-- jQuery Flot -->
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/excanvas.min.js"></script>
    <script src="/assets/js/jquery.flot.js"></script>
    <script src="/assets/js/jquery.flot.resize.js"></script>
    <script src="/assets/js/jquery.flot.pie.js"></script>
    <script src="/assets/js/jquery.flot.stack.js"></script>

    <!-- jQuery Notification - Noty -->
    <script src="/assets/js/jquery.noty.js"></script> <!-- jQuery Notify -->
    <script src="/assets/js/themes/default.js"></script> <!-- jQuery Notify -->
    <script src="/assets/js/layouts/bottom.js"></script> <!-- jQuery Notify -->
%{--<script src="/assets/js/layouts/topRight.js"></script> <!-- jQuery Notify -->--}%
    <script src="/assets/js/layouts/top.js"></script> <!-- jQuery Notify -->
<!-- jQuery Notification ends -->

    <script src="/assets/js/sparklines.js"></script> <!-- Sparklines -->
    <script src="/assets/js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
    <script src="/assets/js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
    <script src="/assets/js/jquery.onoff.min.js"></script> <!-- Bootstrap Toggle -->
    <script src="/assets/js/filter.js"></script> <!-- Filter for support page -->
    <script src="/assets/js/custom.js"></script> <!-- Custom codes -->
    <script src="/assets/js/charts.js"></script> <!-- Charts & Graphs -->
    %{--<script src="/assets/js/respond.min.js"></script>--}%
    %{--<!--[if lt IE 9]>--}%
     %{--<script src="/assets/js/html5shiv.js"></script>--}%

   %{--<![endif]-->--}%

    <!-- Favicon -->
    <link rel="shortcut icon" href="/assets/img/favicon/favicon.png">
</head>

<body style="padding-top: 0px">


<!-- Header starts -->
<header style="padding: 5px 0px 5px 0px">
    <div class="container">
        <div class="row">

            <!-- Logo section -->
            <div class="col-md-4">
                <!-- Logo. -->
                <div class="logo">
                    <h1><a href="#">Terra<span class="bold">Magnifica</span></a></h1>
                    <p class="meta">something goes in meta area</p>
                </div>
                <!-- Logo ends -->
            </div>

            <!-- Button section -->
            <div class="col-md-4" style="float: right">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown pull-right">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="fa fa-user"></i> Admin <b class="caret"></b>
                        </a>

                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-cogs"></i> Settings</a></li>
                            <li><a href="login.html"><i class="fa fa-sign-out"></i> Logout</a></li>
                        </ul>
                    </li>

                </ul>
            </div>


            <!-- Data section -->

        </div>
    </div>
</header>

<!-- Header ends -->

<!-- Main content starts -->

<div class="content">

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

        <!--- Sidebar navigation -->
        <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
        <ul id="nav">
            <!-- Main menu with font awesome icon -->
        <li><g:link controller="main" action="index"> <i class="fa fa-home"></i> Dashboard </g:link> </li>
            <li class="has_sub"><a href="#"><i class="fa fa-file-o"></i> Ulaz  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                    <li><g:link controller="makeOrder" action="create">Novi ulaz</g:link></li>
                    <li><g:link controller="order" action="index">Svi ulazi</g:link></li>
                </ul>
            </li>
            <li class="has_sub"><a href="#"><i class="fa fa-file-o"></i> Izlaz <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                    <li><a href="post.html">Post</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="register.html">Register</a></li>
                    <li><a href="support.html">Support</a></li>
                    <li><a href="invoice.html">Invoice</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                </ul>
            </li>
            <li class="has_sub"><a href="#"><i class="fa fa-table"></i> Skladište  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                    <li><a href="media.html">Media</a></li>
                    <li><a href="statement.html">Statement</a></li>
                    <li><a href="error.html">Error</a></li>
                    <li><a href="error-log.html">Error Log</a></li>
                    <li><a href="calendar.html">Calendar</a></li>
                    <li><a href="grid.html">Grid</a></li>
                </ul>
            </li>
            <li class="has_sub"><a href="#"><i class="fa fa-list-alt"></i> Stavke  <span class="pull-right"><i class="fa fa-chevron-right"></i></span></a>
                <ul>
                    <li><g:link controller="article" action="index">Artikli</g:link></li>
                    <li><a href="dynamic-tables.html">Komitenti</a></li>
                    <li><a href="dynamic-tables.html">Korisnici</a></li>
                </ul>
            </li>
            <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Izvještaji</a></li>
        </ul>
    </div>

    <!-- Sidebar ends -->

    <!-- Main bar -->
    <div class="mainbar">

        <!-- Page heading -->
        <div class="page-head">
            <h2 class="pull-left"><i class="fa fa-home"></i> ${controllerName} - ${actionName}</h2>

            <!-- Breadcrumb -->
            <div class="bread-crumb pull-right">
                <a href="index.html"><i class="fa fa-home"></i> Home</a>
                <!-- Divider -->
                <span class="divider">/</span>
                <a href="#" class="bread-current">Dashboard</a>
            </div>

            <div class="clearfix"></div>

        </div>
        <!-- Page heading ends -->


        <!-- Matter -->

        <!-- Matter ends -->
        <g:layoutBody/>
    </div>

    <!-- Mainbar ends -->
    <div class="clearfix"></div>

</div>
<!-- Content ends -->

<!-- Footer starts -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Copyright info -->
                <p class="copy">Copyright &copy; 2018 | <a href="#">Luka Odak</a> </p>
            </div>
        </div>
    </div>
</footer>

<!-- Footer ends -->

<!-- Scroll to top -->
<span class="totop"><a href="#"><i class="fa fa-chevron-up"></i></a></span>



</body>
</html>