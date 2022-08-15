<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid d-none d-lg-block">
	<div class="row align-items-center bg-dark px-lg-5">
		<div class="col-lg-9">
			<nav class="navbar navbar-expand-sm bg-dark p-0">
				<ul class="navbar-nav ml-n2">
					<li class="nav-item border-right border-secondary"><a
						class="nav-link text-body small" href="#"><%= (new java.util.Date()).toLocaleString()%></a>
					</li>
					<li class="nav-item border-right border-secondary"><a
						class="nav-link text-body small" href="#">Quảng cáo</a></li>
					<li class="nav-item border-right border-secondary"><a
						class="nav-link text-body small" href="#">Liên hệ</a></li>
					<c:if test="${not empty TAIKHOANMODEL }">
						<li class="nav-item dropdown"><a href="#"
							class="nav-link dropdown-toggle" data-toggle="dropdown">${TAIKHOANMODEL.hoVaTen }
						</a>
							<div class="dropdown-menu rounded-0 m-0">
								<a class="nav-link text-body small dropdown-item"
									href="<c:url value='/dang-nhap?action=logout' />"><i
									class="fas fa-power-off"></i> Đăng xuất</a>
							</div></li>
					</c:if>
					<c:if test="${ empty TAIKHOANMODEL }">
						<li class="nav-item"><a class="nav-link text-body small"
							href="<c:url value='/dang-nhap?action=login' />"><i
								class="fas fa-user"></i> Đăng nhập</a></li>
					</c:if>

				</ul>
			</nav>
		</div>

	</div>
	<div class="row align-items-center bg-white py-3 px-lg-5">
		<div class="col-lg-4">
			<a href="<c:url value='/trang-chu' />"
				class="navbar-brand p-0 d-none d-lg-block">
				<h1 class="m-0 display-4 text-uppercase text-primary">
					PXT<span class="text-secondary font-weight-normal">BLOG</span>
				</h1>
			</a>
		</div>

	</div>
</div>