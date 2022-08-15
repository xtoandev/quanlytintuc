<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-chude" />
<c:url var="NewURL" value="/admin-chude" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa chủ đề</title>
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
					<li><a
						href="<c:url value='/admin-baiviet?type=list&page=1&maxPageItems=5&sortName=ngaydang&sortBy=desc' />">
							<i class="fas fa-book"></i>Quản lý bài viết
					</a></li>
					<li class="active"><a
						href="<c:url value='/admin-chude?type=list' />"> <i
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

	<!-- page start-->

	<c:if test="${not empty messageResponse}">
		<div class="alert alert-${alert}">${messageResponse}</div>
	</c:if>
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<strong> <c:if test="${empty model.maChuDe }"> 
		                                        	Thêm 
		                                        </c:if> <c:if
						test="${not empty model.maChuDe }"> 
		                                        	Sửa
		                                        </c:if>
				</strong> Chủ Đề
			</div>
			<div class="card-body card-block">
				<form id="formSubmit">

					<div class="row form-group">
						<div class="col col-md-3">
							<label for="email-input" class=" form-control-label">Tên
								chủ đề</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="text-input" name="tenChuDe"
								placeholder="Nhập tên chủ đề" class="form-control"
								value="${model.tenChuDe}">

						</div>
					</div>



					<input type="hidden" value="${model.maChuDe}" id="id"
						name="maChuDe" />
			</div>
			<div class="card-footer">
				<c:if test="${not empty model.maChuDe }">
					<input type="button" class="btn btn-primary btn-sm"
						value="Cập nhật" id="btnAddOrUpdate" />
				</c:if>
				<c:if test="${empty model.maChuDe }">
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
	            addChuDe(data);
	        } else {
	            updateChuDe(data);
	        }
	    });
	    function addChuDe(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${NewURL}?type=edit&id="+result.machude+"&message=insert_success";
	            },
	            error: function (error) {
	            	window.location.href = "${NewURL}?type=list&message=error_system";
	            }
	        });
	    }
	    function updateChuDe(data) {
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
	            	window.location.href = "${NewURL}?type=list&message=error_system";
	            }
	        });
	    }
	</script>
</body>
</html>