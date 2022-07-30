<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Về chúng tôi</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Liên hệ</a></li>
                        <c:if test="${not empty TAIKHOANMODEL }"> 
                        	<li class="nav-item">${TAIKHOANMODEL.hoVaTen }</li>
                        	<li class="nav-item"><a class="nav-link " aria-current="page" href="<c:url value='/dang-nhap?action=logout' />">Dang xuat</a></li>
                        </c:if>
                         <c:if test="${ empty TAIKHOANMODEL }"> 
                       	 	<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap?action=login' />">Đăng nhập</a></li>
                    	</c:if>
                    </ul>
                </div>
            </div>
        </nav>
<!-- Page header with logo and tagline-->