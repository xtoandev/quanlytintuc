<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="template/admin/images/favicon.png">
    <title>Đăng nhập</title>
    <!--Core CSS -->
    <link href="template/admin/bs3/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/admin/css/bootstrap-reset.css" rel="stylesheet">
    <link href="template/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="template/admin/css/style.css" rel="stylesheet">
    <link href="template/admin/css/style-responsive.css" rel="stylesheet" />
</head>
<body class="login-body">
    <div class="container">
      <form id="formLogin" class="form-signin" action="<c:url value='/dang-nhap'/>" method="post">
        <h2 class="form-signin-heading">Đăng nhập</h2>
        <div class="login-wrap">
            <div class="user-login-info">
                <input type="text" class="form-control" placeholder="Nhập email" autofocus name ="email">
                <input type="password" class="form-control" placeholder="Mật khẩu" name ="matKhau">
                <input type="hidden"  name = "action" value="login"/>
            </div> 
            <button class="btn btn-lg btn-login btn-block" type="submit">Đăng nhập</button>
        </div>
      </form>
    </div>
    <!-- Placed js at the end of the document so the pages load faster -->
    <!--Core js-->
    <script src="template/admin/js/jquery.js"></script>
    <script src="template/admin/bs3/js/bootstrap.min.js"></script>
</body>
</html>
