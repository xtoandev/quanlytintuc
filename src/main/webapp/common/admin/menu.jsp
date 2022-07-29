<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Trang chủ</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-laptop"></i>
                        <span>Quản lý bài viết</span>
                    </a>
                    <ul class="sub">
                       <li><a href="<c:url value = '/admin-danhsachbaiviet?page=1&maxPageItems=5' />">Danh sách bài viết</a></li>
                        <li><a href="javascript:;">Duyệt báo cáo tình trạng máy</a></li>
                        <li><a href="javascript:;">Báo cáo tình trạng máy</a></li>
                        <li><a href="javascript:;">Đăng ký sử dụng phòng máy</a></li>
                    </ul>
                </li>

                <li>
                    <a href="fontawesome.html">
                        <i class="fa fa-bullhorn"></i>
                        <span>Quản lý tài khoản</span>
                    </a>
                </li>
                
                
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->