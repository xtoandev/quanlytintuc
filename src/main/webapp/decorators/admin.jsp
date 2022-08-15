<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Required meta tags-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" type="image/png" href="<c:url value = 'template/login/images/icons/favicon.ico'/>" />
	<title><dec:title default="Trang Admin" /></title>
	
	<!-- Fontfaces CSS-->
	<link href="<c:url value = '/template/admin/css/font-face.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/font-awesome-4.7/css/font-awesome.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/font-awesome-5/css/fontawesome-all.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/mdi-font/css/material-design-iconic-font.min.css'/>" rel="stylesheet" media="all">
	
	<!-- Bootstrap CSS-->
	<link href="<c:url value = '/template/admin/vendor/bootstrap-4.1/bootstrap.min.css'/>" rel="stylesheet" media="all">
	
	<!-- Vendor CSS-->
	<link href="<c:url value = '/template/admin/vendor/animsition/animsition.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/wow/animate.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/css-hamburgers/hamburgers.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/slick/slick.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/select2/select2.min.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value = '/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.css'/>" rel="stylesheet" media="all">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<!-- Main CSS-->
	<link href="<c:url value = '/template/admin/css/theme.css'/>" rel="stylesheet" media="all">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="<c:url value='/ckeditor/ckeditor.js' />"></script>
</head>
<body>

	<div class="page-wrapper">
		<!-- MENU SIDEBAR-->
		<%@ include file="/common/admin/menu.jsp"%>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<%@ include file="/common/admin/header.jsp"%>
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">

						<dec:body />

						<%@ include file="/common/admin/footer.jsp"%>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT-->
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

	<!-- Jquery JS-->
	<script src="<c:url value = '/template/admin/vendor/jquery-3.2.1.min.js'/>"></script>
	<!-- Bootstrap JS-->
	<script src="<c:url value = '/template/admin/vendor/bootstrap-4.1/popper.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/bootstrap-4.1/bootstrap.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/slick/slick.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/wow/wow.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/animsition/animsition.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/counter-up/jquery.waypoints.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/counter-up/jquery.counterup.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/circle-progress/circle-progress.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/chartjs/Chart.bundle.min.js'/>"></script>
	<script src="<c:url value = '/template/admin/vendor/select2/select2.min.js'/>">
    </script>

	<!-- Main JS-->
	<script src="<c:url value = '/template/admin/js/main.js'/>"></script>




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="<c:url value = '/template/admin/jquery.twbsPagination.js'/>" type="text/javascript"></script>

</body>
</html>
