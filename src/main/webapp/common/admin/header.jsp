<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header-desktop">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="header-wrap">
				<form class="form-header" action="" method="POST">
					<input class="au-input au-input--xl" type="text" name="search"
						placeholder="Tìm kiếm" />
					<button class="au-btn--submit" type="submit">
						<i class="zmdi zmdi-search"></i>
					</button>
				</form>
				<div class="header-button">
					<div class="account-wrap">
						<div class="account-item clearfix js-item-menu">
							<div class="image">
								<img
									src="<c:url value= '${TAIKHOANMODEL.anhNen}'/>"
									alt="${TAIKHOANMODEL.hoVaTen }" />

							</div>
							<div class="content">
								<a class="js-acc-btn" href="#">${TAIKHOANMODEL.hoVaTen }</a>
							</div>
							<div class="account-dropdown js-dropdown">
								<div class="info clearfix">
									<div class="image">
										<a href="#"> <img
											src="<c:url value='${TAIKHOANMODEL.anhNen}'/>"
											alt="${TAIKHOANMODEL.hoVaTen }" />
										</a>
									</div>
									<div class="content">
										<h5 class="name">
											<a href="#">${TAIKHOANMODEL.hoVaTen }</a>
										</h5>
										<span class="email">${TAIKHOANMODEL.email }</span>
									</div>
								</div>

								<div class="account-dropdown__body">
									<div class="account-dropdown__item">
										<a target="_blank" href="<c:url value='/trang-chu' />"> <i
											class="zmdi zmdi-open-in-browser"></i>Tới trang web
										</a>
									</div>
								</div>

								<div class="account-dropdown__body">
									<div class="account-dropdown__item">
										<a href="#"> <i class="zmdi zmdi-account"></i>Tài khoản
										</a>
									</div>
								</div>

								<div class="account-dropdown__footer">
									<a href="<c:url value='/dang-nhap?action=logout' />"> <i
										class="zmdi zmdi-power"></i><span>Đăng xuất</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>