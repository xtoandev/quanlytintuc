<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="<c:url value = 'images/favicon.png'/>" >
    <title><dec:title default="Trang Admin" /></title>
    <!--Core CSS -->
    <link href="<c:url value = 'template/admin/bs3/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/js/jquery-ui/jquery-ui-1.10.1.custom.min.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/css/bootstrap-reset.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/js/jvector-map/jquery-jvectormap-1.2.2.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/css/clndr.css'/>" rel="stylesheet">
    <!--clock css-->
    <link href="<c:url value = 'template/admin/js/css3clock/css/style.css'/>" rel="stylesheet">
    <!--Morris Chart CSS -->
    <link rel="template/admin/stylesheet" href="<c:url value = 'js/morris-chart/morris.css'/>">
    <!-- Custom styles for this template -->
    <link href="<c:url value = 'template/admin/css/style.css'/>" rel="stylesheet">
    <link href="<c:url value = 'template/admin/css/style-responsive.css'/>" rel="stylesheet"/>
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="<c:url value = 'template/admin/js/ie8-responsive-file-warning.js'/>"></script><![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    
    <![endif]-->
</head>
<body>
	<!-- header -->
	    <%@ include file="/common/admin/header.jsp" %>
	<!-- header -->
	
	<%@ include file="/common/admin/menu.jsp" %>
	
	<section id="container">
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<dec:body/>
			</section>
		</section>
		<!--main content end-->
	</section>
	
	
	<!-- footer -->
	    	<%@ include file="/common/admin/footer.jsp" %>
	<!-- footer -->


<!-- Placed js at the end of the document so the pages load faster -->
<!--Core js-->
<script src = " <c:url value ='template/admin/js/jquery.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery-ui/jquery-ui-1.10.1.custom.min.js'/>"></script>
<script src = " <c:url value ='template/admin/bs3/js/bootstrap.min.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery.dcjqaccordion.2.7.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery.scrollTo.min.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery.nicescroll.js'/>"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src = " <c:url value ='js/flot-chart/excanvas.min.js'/>"></script><![endif]-->
<script src = " <c:url value ='template/admin/js/skycons/skycons.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery.scrollTo/jquery.scrollTo.js'/>"></script>
<script src = "//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src = " <c:url value ='template/admin/js/calendar/clndr.js'/>"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
<script src = " <c:url value ='template/admin/js/calendar/moment-2.2.1.js'/>"></script>
<script src = " <c:url value ='template/admin/js/evnt.calendar.init.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jvector-map/jquery-jvectormap-1.2.2.min.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jvector-map/jquery-jvectormap-us-lcc-en.js'/>"></script>
<script src = " <c:url value ='template/admin/js/gauge/gauge.js'/>"></script>
<!--clock init-->
<script src = " <c:url value ='template/admin/js/css3clock/js/css3clock.js'/>"></script>
<!--Easy Pie Chart-->
<script src = " <c:url value ='template/admin/js/easypiechart/jquery.easypiechart.js'/>"></script>
<!--Sparkline Chart-->
<script src = " <c:url value ='template/admin/js/sparkline/jquery.sparkline.js'/>"></script>
<!--Morris Chart-->
<script src = " <c:url value ='template/admin/js/morris-chart/morris.js'/>"></script>
<script src = " <c:url value ='template/admin/js/morris-chart/raphael-min.js'/>"></script>
<!--jQuery Flot Chart-->
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.js'/>"></script>
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.tooltip.min.js'/>"></script>
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.resize.js'/>"></script>
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.pie.resize.js'/>"></script>
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.animator.min.js'/>"></script>
<script src = " <c:url value ='template/admin/js/flot-chart/jquery.flot.growraf.js'/>"></script>
<script src = " <c:url value ='template/admin/js/dashboard.js'/>"></script>
<script src = " <c:url value ='template/admin/js/jquery.customSelect.min.js'/>" ></script>
<!--common script init for all pages-->
<script src = " <c:url value ='template/admin/js/scripts.js'/>"></script>
<!--script for this page-->
</body>
</html>