<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="#"> <img style="max-height: 50px; max-wight: 50px;"
			src="<c:url value = '/template/admin/images/LOGO.png'/>"
			alt="PXT Admin" />
		</a>
		<h2 style="padding-left: 10px;">ADMIN</h2>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">
				<li class="active"><a href="<c:url value='/admin-trang-chu' />">
						<i class="fas fa-home"></i>Trang chủ
				</a></li>
				<li><a
					href="<c:url value='/admin-baiviet?type=list&page=1&maxPageItems=5&sortName=ngaydang&sortBy=desc' />">
						<i class="fas fa-book"></i>Quản lý bài viết
				</a></li>
				<li><a href="<c:url value='/admin-chude?type=list' />"> <i
						class="fas fa-bookmark"></i>Quản lý chủ đề
				</a></li>
				<li><a
					href="<c:url value='/admin-taikhoan?type=list&page=1&maxPageItems=5&sortName=mataikhoan&sortBy=desc' />">
						<i class="fas fa-user"></i>Quản lý tài khoản
				</a></li>
			</ul>
		</nav>
	</div>
</aside>