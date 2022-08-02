<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>  
<c:url var="APIurl" value="/api-admin-baiviet"/>
<c:url var ="NewURL" value="/admin-baiviet"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm bài viết</title>
</head>
<body>
<aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="<c:url value = '/template/admin/images/icon/logo.png'/>" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li>
                            <a href="<c:url value='/admin-trang-chu' />">
                            <i class="fas fa-home"></i>Trang chủ</a>
                        </li>
                        <li class="active">
                            <a href="<c:url value='/admin-baiviet?type=list&page=1&maxPageItems=5&sortName=ngaydang&sortBy=desc' />">
                            <i class="fas fa-book"></i>Quản lý bài viết</a>
                        </li>
                        <li>
                            <a href="<c:url value='/admin-baiviet?type=list&page=1&maxPageItems=5&sortName=ngaydang&sortBy=desc' />">
                            <i class="fas fa-user"></i>Quản lý tài khoản</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>


<c:if test="${not empty messageResponse}">
									<div class="alert alert-${alert}">
  										${messageResponse}
									</div>
</c:if>
	<div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>
	                                        <c:if test="${empty model.maBaiViet }"> 
	                                        	Thêm 
	                                        </c:if>
	                                        <c:if test="${not empty model.maBaiViet }"> 
	                                        	Sửa
	                                        </c:if>
                                        </strong> Bài Viết
                                    </div>
                                    <div class="card-body card-block">
                                        <form id="formSubmit" >
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">Người đăng</label>
                                                </div>
                                                <c:if test="${not empty model.maBaiViet }"> 
                                                	<div class="col-12 col-md-9">
                                                    	<p class="form-control-static">${model.taikhoan.getHoVaTen() }</p>
                                                	</div>
                                                	<input type="hidden" name="maTaiKhoan" value="${model.taikhoan.maTaiKhoan }" />
                                                </c:if>
                                                <c:if test="${ empty model.maBaiViet }"> 
                                                	<div class="col-12 col-md-9">
                                                    	<p class="form-control-static">${TAIKHOANMODEL.hoVaTen }</p>
                                                	</div>
                                                	<input type="hidden" name="maTaiKhoan" value="${TAIKHOANMODEL.maTaiKhoan }" />
                                                </c:if>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="disabled-input" class=" form-control-label">Ngày Đăng</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <c:if test="${not empty model.maBaiViet }"> 
                                                    	<input type="text" id="disabled-input" name="ngayDang" placeholder="Ngày đăng" value="${model.ngayDang}" disabled="" class="form-control">
                                                    </c:if>
                                                    <c:if test="${empty model.maBaiViet }"> 
                                                    	<input type="text" id="disabled-input" name="ngayDang" placeholder="Ngày đăng" value="${ngayhientai }" disabled="" class="form-control">
                                                    </c:if>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">Tiêu đề</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="tieuDe" placeholder="Nhập tiêu đề" class="form-control" value="${model.tieuDe}">
                                                    
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="email-input" class=" form-control-label">Mô tả</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="moTa" placeholder="Nhập mô tả" class="form-control" value="${model.moTa}">
                                                   
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="file-input" class=" form-control-label">Ảnh Nền</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <!--   <input type="file" id="file-input" name="file-input" class="form-control-file"> -->
                                                	<input type="text" id="text-input" name="anhNen"  class="form-control" value="${model.anhNen}">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="select" class=" form-control-label">Chủ đề</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <select name="maChuDe" id="select" class="form-control">
                                                    	<c:if test="${empty model.maChuDe}">
				                                            <option value="">Chọn chủ đề</option>
				                                            <c:forEach var="item" items="${dschude}">
				                                                <option value="${item.maChuDe}">${item.tenChuDe}</option>
				                                            </c:forEach>
				                                        </c:if>
				                                        <c:if test="${not empty model.maChuDe}">
				                                            <option value="">Chọn chủ đề</option>
				                                            <c:forEach var="item" items="${dschude}">
				                                                <option value="${item.maChuDe}" <c:if test="${item.maChuDe == model.maChuDe}">selected="selected"</c:if>>
				                                                        ${item.tenChuDe}
				                                                </option>
				                                            </c:forEach>
				                                        </c:if>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">Nội dung</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea  rows="" cols="" id="noiDung" name="noiDung" style="width: 820px;height: 175px" class="form-control">${model.noiDung}</textarea>
                                                </div>
                                            </div>
                                            <input type="hidden" value="${model.maBaiViet}" id="id" name="maBaiViet"/>
                                        
                                    </div>
                                    <div class="card-footer">
                                    	 <c:if test="${not empty model.maBaiViet }"> 
	                                    	<input type="button" class="btn btn-primary btn-sm" 
	                                         value="Cập nhật" id="btnAddOrUpdate"
	                                        />
                                    	</c:if>
                                    	 <c:if test="${empty model.maBaiViet }"> 
	                                    	<input type="button" class="btn btn-primary btn-sm" 
	                                         value="Thêm" id="btnAddOrUpdate"
	                                        />
	                                        <button type="reset" class="btn btn-danger btn-sm">
                                            	<i class="fa fa-ban"></i> Xóa 
                                        	</button>
                                    	</c:if> 
                                    </div>
                                   </form>
                                </div>
							</div>

<script>
	var editor = '';
	$(document).ready(function(){
		editor = CKEDITOR.replace( 'noiDung');
	});
    $('#btnAddOrUpdate').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["noiDung"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addBaiViet(data);
        } else {
            updateBaiViet(data);
        }
    });
    function addBaiViet(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${NewURL}?type=edit&id="+result.mabaiviet+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&sortName=ngaydang&sortBy=desc&message=error_system";
            }
        });
    }
    function updateBaiViet(data) {
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
            	window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&sortName=ngaydang&sortBy=desc&message=error_system";
            }
        });
    }
</script>
</body>
</html>