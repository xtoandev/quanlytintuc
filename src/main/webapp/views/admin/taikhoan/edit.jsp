<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-taikhoan" />
<c:url var="NewURL" value="/admin-taikhoan" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm tài khoản</title>
</head>
<body>
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
					<li><a href="<c:url value='/admin-trang-chu' />"> <i
							class="fas fa-home"></i>Trang chủ
					</a></li>
					<li class="active"><a
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


	<c:if test="${not empty messageResponse}">
		<div class="alert alert-${alert}">${messageResponse}</div>
	</c:if>
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<strong> <c:if test="${empty model.maTaiKhoan }"> 
		                                        	Thêm 
		                                        </c:if> <c:if
						test="${not empty model.maTaiKhoan }"> 
		                                        	Sửa
		                                        </c:if>
				</strong> Tài Khoản
			</div>
			<div class="card-body card-block">
				<form id="formSubmit">

					<div class="row form-group">
						<div class="col col-md-3">
							<label for="email-input" class=" form-control-label">Họ
								và Tên</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="text-input" name="hoVaTen"
								placeholder="Nhập họ và tên" class="form-control"
								value="${model.hoVaTen}">

						</div>
					</div>

					<div class="row form-group">
						<div class="col col-md-3">
							<label for="email-input" class=" form-control-label">Email</label>
						</div>
						<div class="col-12 col-md-9">

							<input type="email" id="text-input" name="email"
								placeholder="Nhập email" class="form-control"
								value="${model.email}">

						</div>
					</div>

					<div class="row form-group">
						<div class="col col-md-3">
							<label for="text-input" class=" form-control-label">Mật
								khẩu</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="text-input" name="matKhau"
								placeholder="Nhập mật khẩu" class="form-control"
								value="${model.matKhau}">

						</div>
					</div>


					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Quyền</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="maQuyen" id="select" class="form-control">
								<c:if test="${empty model.maQuyen}">
									<option value="">Chọn quyền</option>
									<c:forEach var="item" items="${dsquyen}">
										<option value="${item.maQuyen}">${item.tenQuyen}</option>
									</c:forEach>
								</c:if>
								<c:if test="${not empty model.maQuyen}">
									<option value="">Chọn quyền</option>
									<c:forEach var="item" items="${dsquyen}">
										<option value="${item.maQuyen}"
											<c:if test="${item.maQuyen == model.maQuyen}">selected="selected"</c:if>>
											${item.tenQuyen}</option>
									</c:forEach>
								</c:if>
							</select>
						</div>
					</div>

					<input type="hidden" value="${model.maTaiKhoan}" id="id"
						name="maTaiKhoan" />
			</div>
			<div class="card-footer">
				<c:if test="${not empty model.maTaiKhoan }">
					<input type="button" class="btn btn-primary btn-sm"
						value="Cập nhật" id="btnAddOrUpdate" />
				</c:if>
				<c:if test="${empty model.maTaiKhoan }">
					<input type="button" class="btn btn-primary btn-sm" value="Thêm"
						id="btnAddOrUpdate" />
					<button type="reset" class="btn btn-danger btn-sm">
						<i class="fa fa-ban"></i> Xóa
					</button>
				</c:if>
			</div>
			</form>
		</div>
	</div>


	<script>
		
	    $('#btnAddOrUpdate').click(function (e) {
	        e.preventDefault();
	        var data = {};
	        var formData = $('#formSubmit').serializeArray();
	        $.each(formData, function (i, v) {
	            data[""+v.name+""] = v.value;
	        });
	        
	        var id = $('#id').val();
	        if (id == "") {
	            addTaiKhoan(data);
	        } else {
	            updateTaiKhoan(data);
	        }
	    });
	    function addTaiKhoan(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${NewURL}?type=edit&id="+result.mataikhoan+"&message=insert_success";
	            },
	            error: function (error) {
	            	window.location.href = "${NewURL}?type=list&maxPageItem=5&page=1&sortName=ngaydang&sortBy=desc&message=error_system";
	            }
	        });
	    }
	    function updateTaiKhoan(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'PUT',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${NewURL}?type=edit&id="+result.mabaiviet+"&message=update_success";
	            },
	            error: function (error) {
	            	window.location.href = "${NewURL}?type=list&maxPageItem=5&page=1&sortName=ngaydang&sortBy=desc&message=error_system";
	            }
	        });
	    }
	</script>
</body>
</html>