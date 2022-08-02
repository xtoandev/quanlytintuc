<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><dec:title default="Trang Admin" /></title>
    
    <!-- Fontfaces CSS-->
    <link href="<c:url value = 'css/font-face.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/font-awesome-4.7/css/font-awesome.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/font-awesome-5/css/fontawesome-all.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/mdi-font/css/material-design-iconic-font.min.css'/>" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<c:url value = 'vendor/bootstrap-4.1/bootstrap.min.css'/>" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<c:url value = 'vendor/animsition/animsition.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/wow/animate.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/css-hamburgers/hamburgers.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/slick/slick.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/select2/select2.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value = 'vendor/perfect-scrollbar/perfect-scrollbar.css'/>" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<c:url value = 'css/theme.css'/>" rel="stylesheet" media="all">
    
</head>
<body class="animsition">
    <div class="page-wrapper">
	<!-- header -->
	    <%@ include file="/common/admin/header.jsp" %>
	<!-- header -->
	
	<!-- menu -->
	<%@ include file="/common/admin/menu.jsp" %>
	<!-- menu -->
	
	
	<!-- content -->
	<div class="main-content">
		<dec:body/>
	</div>
	<!-- content -->
	
	<!-- footer -->
	    	<%@ include file="/common/admin/footer.jsp" %>
	<!-- footer -->


<!-- Jquery JS-->
    <script src="<c:url value = 'vendor/jquery-3.2.1.min.js'/>"></script>
    <!-- Bootstrap JS-->
    <script src="<c:url value = 'vendor/bootstrap-4.1/popper.min.js'/>"></script>
    <script src="<c:url value = 'vendor/bootstrap-4.1/bootstrap.min.js'/>"></script>
    <script src="<c:url value = 'vendor/slick/slick.min.js'/>">
    </script>
    <script src="<c:url value = 'vendor/wow/wow.min.js'/>"></script>
    <script src="<c:url value = 'vendor/animsition/animsition.min.js'/>"></script>
    <script src="<c:url value = 'vendor/bootstrap-progressbar/bootstrap-progressbar.min.js'/>">
    </script>
    <script src="<c:url value = 'vendor/counter-up/jquery.waypoints.min.js'/>"></script>
    <script src="<c:url value = 'vendor/counter-up/jquery.counterup.min.js'/>">
    </script>
    <script src="<c:url value = 'vendor/circle-progress/circle-progress.min.js'/>"></script>
    <script src="<c:url value = 'vendor/perfect-scrollbar/perfect-scrollbar.js'/>"></script>
    <script src="<c:url value = 'vendor/chartjs/Chart.bundle.min.js'/>"></script>
    <script src="<c:url value = 'vendor/select2/select2.min.js'/>">
    </script>

    <!-- Main JS-->
    <script src="<c:url value = 'js/main.js'/>"></script>




<!-- pagging -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="<c:url value = 'template/admin/jquery.twbsPagination.js'/>" type="text/javascript"></script>
<!--script for this page-->
<script type="text/javascript">
	var totalPages = ${model.totalPage};
	var currentPage = ${model.page};
	var limit = 5;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages: totalPages,
			visiblePages: 5,
			startPage: currentPage,
			onPageClick: function (event, page) {
				if (currentPage != page) {
					$('#maxPageItems').val(limit);
					$('#page').val(page);
					$('#sortName').val('ngaydang');
					$('#sortBy').val('desc');
					$('#formPaging').submit();
				}
			}
		});
	});
</script>

</body>
</html>
