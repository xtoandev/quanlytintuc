<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="images/icon/logo.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a href="<c:url value='/admin-trang-chu' />">
                            <i class="fas fa-home"></i>Trang chủ</a>
                        </li>
                        <li>
                            <a href=""<c:url value='/admin-danhsachbaiviet?page=1&maxPageItems=5&sortName=ngaydang&sortBy=desc' />">
                            <i class="fas fa-book"></i>Quản lý bài viết</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>