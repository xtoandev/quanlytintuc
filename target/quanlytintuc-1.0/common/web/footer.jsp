<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div class="container-fluid bg-dark pt-5 px-sm-3 px-md-5 mt-5">

	<div class="row py-4">
		<div class="col-lg-3 col-md-6 mb-5">
			<h5 class="mb-4 text-white text-uppercase font-weight-bold">Liên
				Lạc</h5>
			<p class="font-weight-medium">
				<i class="fa fa-map-marker-alt mr-2"></i>48 Cao Thắng,Q.Hải Châu
				,TP.Đà Nẵng
			</p>
			<p class="font-weight-medium">
				<i class="fa fa-phone-alt mr-2"></i>+84 756970xx
			</p>
			<p class="font-weight-medium">
				<i class="fa fa-envelope mr-2"></i>phamxuantoan2001@gmail.com
			</p>

		</div>
		<div class="col-lg-3 col-md-6 mb-5">
			<h5 class="mb-4 text-white text-uppercase font-weight-bold">Bài
				viết mới</h5>
			<div class=""></div>
			<c:forEach items="${baivietmoi.listData}" var="o" varStatus="loop">
				<c:if test="${ loop.index < 4 }">
					<div class="mb-3">
						<div class="mb-2">
							<a
								class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
								href="<c:url value='/chu-de?machude=${o.chude.maChuDe}' />">${o.chude.tenChuDe }</a>
							<a class="text-body" href=""><small>${o.ngayDang }</small></a>
						</div>
						<a class="small text-body text-uppercase font-weight-medium"
							href="<c:url value='/bai-viet?mabaiviet=${o.maBaiViet}' />">${o.tieuDe }</a>
					</div>
				</c:if>
			</c:forEach>
		</div>
		<div class="col-lg-2 col-md-6 mb-5">
			<h5 class="mb-4 text-white text-uppercase font-weight-bold">Chủ
				đề</h5>
			<div class="m-n1">
				<c:forEach items="${dschude}" var="o" varStatus="loop">
					<a href="<c:url value='/chu-de?machude=${o.maChuDe}' />"
						class="btn btn-sm btn-secondary m-1">${o.tenChuDe}</a>
				</c:forEach>
			</div>
		</div>
		<div class="col-lg-4 col-md-6 mb-5">
			<!-- Newsletter Start -->
			<div class="mb-3">
				<div class="section-title mb-0">
					<h4 class="m-0 text-uppercase font-weight-bold">Nhận thông
						báo!</h4>
				</div>
				<div class="bg-white text-center border border-top-0 p-3">
					<p>Nhập vào địa chỉ email để nhận thông báo mới nhất từ chúng
						tôi.</p>
					<div class="input-group mb-2" style="width: 100%;">
						<input type="text" class="form-control form-control-lg"
							placeholder="Nhập email">
						<div class="input-group-append">
							<button class="btn btn-primary font-weight-bold px-3">Đăng
								ký</button>
						</div>
					</div>

				</div>
			</div>
			<!-- Newsletter End -->
		</div>
	</div>
</div>
<div class="container-fluid py-4 px-sm-3 px-md-5"
	style="background: #111111;">
	<p class="m-0 text-center">
		&copy; <a href="<c:url value='/trang-chu' />">PXT Blog</a>. All Rights
		Reserved.
</div>