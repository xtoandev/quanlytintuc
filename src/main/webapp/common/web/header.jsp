<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#"><%= (new java.util.Date()).toLocaleString()%></a>
                        </li>
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#">Quảng cáo</a>
                        </li>
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#">Liên hệ</a>
                        </li>
                        <c:if test="${not empty TAIKHOANMODEL }"> 
                        	<li class="nav-item">${TAIKHOANMODEL.hoVaTen }
                            	<a class="nav-link text-body small" href="<c:url value='/dang-nhap?action=logout' />">Đăng xuất</a>
                        	</li>
                        </c:if>
                         <c:if test="${ empty TAIKHOANMODEL }"> 
                       	 	<li class="nav-item">
                            	<a class="nav-link text-body small" href="<c:url value='/dang-nhap?action=login' />">Đăng nhập</a>
                        	</li>
                    	</c:if>
                        
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 text-right d-none d-md-block">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-auto mr-n2">
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-twitter"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-facebook-f"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-linkedin-in"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-instagram"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-google-plus-g"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-youtube"></small></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="row align-items-center bg-white py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="index.html" class="navbar-brand p-0 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-uppercase text-primary">PXT<span class="text-secondary font-weight-normal">News</span></h1>
                </a>
            </div>
            
        </div>
    </div>