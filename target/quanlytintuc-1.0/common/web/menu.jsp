<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="container-fluid p-0">
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
		<a href="<c:url value='/trang-chu' />"
			class="navbar-brand d-block d-lg-none">
			<h1 class="m-0 display-4 text-uppercase text-primary">
				PXT<span class="text-white font-weight-normal">BLOG</span>
			</h1>
		</a>
		<button type="button" class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div
			class="collapse navbar-collapse justify-content-between px-0 px-lg-3"
			id="navbarCollapse">
			<div class="navbar-nav mr-auto py-0">
				<a href="<c:url value='/trang-chu' />"
					class="nav-item nav-link active">Trang chủ</a>

				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Thể
						loại </a>
					<div class="dropdown-menu rounded-0 m-0">
						<c:forEach items="${dschude}" var="o" varStatus="loop">
							<a href="<c:url value='/chu-de?machude=${o.maChuDe}' />"
								class="dropdown-item">${o.tenChuDe}</a>
						</c:forEach>
					</div>
				</div>
				<a href="#" class="nav-item nav-link">Liên hệ</a>
			</div>
			<div class="input-group ml-auto d-none d-lg-flex"
				style="width: 100%; max-width: 300px;">
				<form action="/tim-kiem">
					<input type="text" class="form-control border-0"
						placeholder="Từ khóa">
					<div class="input-group-append">
						<button type="submit"
							class="input-group-text bg-primary text-dark border-0 px-3">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	</nav>
</div>