<%@ page import="grails.plugin.springsecurity.SpringSecurityService; terramapp.OrderStatus" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- Title and other stuffs -->
    <title>TerraMagnifica</title>
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

    <script src="/assets/js/respond.min.js"></script>
    <!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>

   <![endif]-->

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
                    <p class="meta">BLA BLA BLAS</p>
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
                    <li><g:link controller="customer" action="index">Komitenti</g:link></li>
                    <li><g:link controller="user" action="search">Korisnici</g:link></li>
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

        <div class="matter">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="widget">
                            <div class="widget-head">
                                <div class="pull-left">Aktivne ulazne ponude</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <div class="padd">
                                    <!-- Content goes here -->
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Datum</th>
                                                    <th>Komitent</th>
                                                    <th>Broj ponude</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <g:each in="${terramapp.Order.findAllByOrderStatus(OrderStatus.findAllByIsActive("Aktivno")) }" var="order">
                                                %{--<g:each in="${terramapp.OrderStatus.findAllByIsActive("Aktivno")}" var="order">--}%
                                                    <tr>
                                                        <td>${terramapp.Order.get(order.id).orderDate.format("dd-MM-yyyy")}</td>
                                                        <td>${terramapp.Order.get(order.id).customer.name}</td>
                                                        <td><g:link controller="order" action="show" id="${order.id}"> ${terramapp.Order.get(order.id).orderType.type}</g:link> </td>
                                                    </tr>
                                                </g:each>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="widget">
                            <div class="widget-head">
                                <div class="pull-left">Aktivne izlazne ponude</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <div class="padd">
                                    <!-- Content goes here -->
                                </div>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row">

                    <!-- Task widget -->
                    <div class="col-md-6">
                        <div class="widget">
                            <!-- Widget title -->
                            <div class="widget-head">
                                <div class="pull-left">Zadaci</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <!-- Widget content -->
                                <!-- Task list starts -->
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Naslov</th>
                                                <th>Autor</th>
                                                <th>Kategorija</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in="${terramapp.Task.list()}" var="task">
                                            <tr>
                                                <td><g:link controller="task" action="show" id="${task.id}">${terramapp.Task.get(task.id).taskTitle}</g:link> </td>
                                                <td>${terramapp.Task.get(task.id).user.username}</td>
                                                <td> ${terramapp.Task.get(task.id).taskCategory.type}</td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>

                                </div>



                                <ul class="task">
                                    %{--<g:each in="${terramapp.Task.list()}" var="task">--}%
                                        %{--<li>${task.taskTitle}</li>--}%

                                    %{--</g:each>--}%

                                    <li>
                                        <!-- Checkbox -->
                                        <span class="uni"><input value="check1" type="checkbox"></span>
                                        <!-- Task -->
                                         Procitati Zakon o tržištu vrijednosnih papira! <span class="label label-warning">Važno</span>
                                        <!-- Delete button -->
                                        <a href="#" class="pull-right"><i class="fa fa-times"></i></a>
                                    </li>



                                </ul>
                                <div class="clearfix"></div>

                                <div class="widget-foot">
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="widget">
                            <div class="widget-head">
                                <div class="pull-left">Dodaj novi zadatak</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <g:form action="save" controller="task">
                                    <div class="padd">
                                        <div class="form quick-post">
                                            <!-- Edit profile form (not working)-->
                                            <form class="form-horizontal">
                                            <div class="row">
                                                <!-- Title -->
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2" for="taskTitle">Naslov</label>
                                                        <g:textField name="taskTitle" class="col-lg-9" /><br/>
                                                </div>
                                            </div>
                                                <!-- Content -->
                                            <div class="row">
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2" for="taskText">Sadržaj</label>
                                                        <g:textArea name="taskText" class="col-lg-9"/><br/><br/><br/>
                                                </div>
                                            </div>
                                                <!-- Cateogry -->
                                            <div class="row">
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2">Kategorija</label>
                                                    <div >
                                                        <g:select name="taskCategory" from="${terramapp.TaskCategory.getAll().id }"  class="col-lg-3" /><br/>
                                                    </div>
                                                </div>
                                            </div>
                                                <!-- Date -->
                                            <div class="row">
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2" for="taskDate">Datum</label>
                                                    <div >
                                                        <g:datePicker name="taskDate" value="${new java.util.Date()}" precision="day"  class="col-lg-5"/>
                                                    </div>
                                                </div>
                                            </div>
                                                <!-- Buttons -->
                                            <div class="row">
                                                <div class="form-group">
                                                    <!-- Buttons -->
                                                    <div class="col-lg-6">
                                                        <g:submitButton name="addTask" action="save" value="Objavi" />

                                                        <button type="reset" class="btn btn-sm btn-default">Resetiraj</button>
                                                    </div>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </g:form>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-6">
                        <!-- Bar Chart -->
                        <div class="widget">

                            <div class="widget-head">
                                <div class="pull-left">Najprodavaniji artikli</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>


                            <div class="widget-content">
                                <div class="padd">
                                    <!-- Barchart. jQuery Flot plugin used. -->
                                    <div id="bar-chart" style="padding: 0px; position: relative;">
                                        <canvas class="flot-base" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1225px; height: 250px;" width="1531" height="312"></canvas>
                                    <div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
                                        <div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 13px; text-align: center;" class="flot-tick-label tickLabel">0</div>
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 128px; text-align: center;" class="flot-tick-label tickLabel">2</div>
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 244px; text-align: center;" class="flot-tick-label tickLabel">4</div>
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 359px; text-align: center;" class="flot-tick-label tickLabel">6</div>
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 475px; text-align: center;" class="flot-tick-label tickLabel">8</div>
                                            <div style="position: absolute; max-width: 102px; top: 228px; left: 588px; text-align: center;" class="flot-tick-label tickLabel">10</div>
                                        </div>
                                        <div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                                            <div style="position: absolute; top: 212px; left: 5px; text-align: right;" class="flot-tick-label tickLabel">0</div>
                                            <div style="position: absolute; top: 177px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">100</div>
                                            <div style="position: absolute; top: 141px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">200</div>
                                            <div style="position: absolute; top: 106px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">300</div>
                                            <div style="position: absolute; top: 71px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">400</div>
                                            <div style="position: absolute; top: 35px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">500</div>
                                            <div style="position: absolute; top: 0px; left: 0px; text-align: right;" class="flot-tick-label tickLabel">600</div>
                                        </div>
                                    </div>
                                    <canvas class="flot-overlay" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 1225px; height: 250px;" width="1531" height="312"></canvas>
                                </div>

                                    <hr />

                                    <!--Bar chart stuffs -->
                                    <div class="btn-group stackControls">
                                        <input type="button" value="With stacking" class="btn btn-default">
                                        <input type="button" value="Without stacking" class="btn btn-default">
                                    </div>

                                    <div class="btn-group graphControls">

                                        <input type="button" value="Bars" class="btn btn-default">
                                        <input type="button" value="Lines" class="btn btn-default">
                                        <input type="button" value="Lines with steps" class="btn btn-default">
                                    </div>

                                </div>
                            </div>

                        </div>
                        <!-- Bar chart ends -->
                    </div>
                    <div class="col-md-6">
                        <!-- Pie chart starts -->
                        <div class="widget">
                            <div class="widget-head">
                                <div class="pull-left">Bio / NeBio</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="widget-content">
                                <div class="padd">

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div id="pie-chart"></div>
                                        </div>
                                        <div class="col-md-4">
                                            <div id="pie-chart2"></div>
                                        </div>
                                        <div class="col-md-4">
                                            <div id="pie-chart3"></div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- Pie chart ends -->
                    </div>
                </div>

                <div class="row">
                    <!-- Server Status -->
                    <div class="col-md-4">
                        <div class="widget">
                            <!-- Widget title -->
                            <div class="widget-head">
                                <div class="pull-left">Status skladišta 1</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <!-- Widget content -->

                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td>Lokacija skladišta</td>
                                            <td>Lokacija 1</td>
                                        </tr>
                                        <tr>
                                            <td>Skladišna mjesta</td>
                                            <td>75 / 100</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji ulaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji izlaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="widget-foot">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="widget">
                            <!-- Widget title -->
                            <div class="widget-head">
                                <div class="pull-left">Status skladišta 2</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <!-- Widget content -->

                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td>Lokacija skladišta</td>
                                            <td>Lokacija 2</td>
                                        </tr>
                                        <tr>
                                            <td>Skladišna mjesta</td>
                                            <td>75 / 100</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji ulaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji izlaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="widget-foot">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="widget">
                            <!-- Widget title -->
                            <div class="widget-head">
                                <div class="pull-left">Status skladišta 3</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="widget-content">
                                <!-- Widget content -->

                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover">
                                        <tr>
                                            <td>Lokacija skladišta</td>
                                            <td>Lokacija 3</td>
                                        </tr>
                                        <tr>
                                            <td>Skladišna mjesta</td>
                                            <td>36 / 50</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji ulaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                        <tr>
                                            <td>Zadnji izlaz</td>
                                            <td>šarža123456789</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="widget-foot">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>







            </div>
        </div>



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

</body>
</html>