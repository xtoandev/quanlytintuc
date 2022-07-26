<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title><dec:title default="Trang chủ" /></title>
        <!-- Favicon-->
        <link href=" <c:url value = '/template/web/assets/favicon.ico' /> " rel="icon" type="image/x-icon" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<c:url value='/template/web/css/styles.css'/>" rel="stylesheet" />
         
    </head>
    <body>
    
        <!-- Navigation-->
        <%@ include file="/common/web/menu.jsp" %>
        
        <!-- Header-->
        <%@ include file="/common/web/header.jsp" %>
        
        <!--page-->
  		<div class="container">
              <dec:body/>
        </div>

        
        <!-- Footer-->
        <%@ include file="/common/web/footer.jsp" %>
        
        
        
         <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="<c:url value='/template/web/js/scripts.js'/>"></script>
    </body>
</html>