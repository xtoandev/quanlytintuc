<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Danh sách bài viết</title>

</head>
<body>
<!-- page start-->

<div class="row">

    <div class="col-sm-12">
        <div style="float: right;margin-top: 10px" >
            <a id="editable-sample_new" class="btn btn-primary"  href="./yeu-cau-phan-mem?action=dang-ky">
                Tạo mới <i class="fa fa-plus"></i>
            </a>
        </div>
        
        <section class="panel">
            <header class="panel-heading">
                <span >Danh sách bài viết </span>
            </header>
            <div class="panel-body">
                <section id="unseen">
                    <table class="table table-bordered table-striped table-condensed">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tiêu Đề</th>
                                <th>Người Đăng</th>
                                <th>Mô Tả</th>
                                <th>Nội Dung</th>
                                <th>Ảnh Nền</th>
                                <th>Ngày Đăng</th>
                                <th>Chủ Đề</th>
                                <th>Trạng Thái</th>
                                <th colspan=3>Thao tác</th>
                            </tr>
                        </thead>
                         
                        <tbody>
                            <c:if test = "${fn:length(model.listData) == 0}">
                                <tr><td colspan="6">Chưa có bài viết</td></tr>
                            </c:if>
                            <c:forEach items="${model.listData}" var="o" varStatus="loop">
                                <tr>
                                    <td scope="row">${(loop.index + 1) + (model.page - 1)* model.getMaxPageItems() }</th>
                                    <td>${o.tieuDe}</td>
                                    <td>${o.maTaiKhoan}</td>
                                    <td>${o.moTa}</td>
                                    <td>${o.noiDung}</td>
                                    <td><img style="max-height: 100px;max-weight: 100px;" src= "<c:url  value='${o.anhNen}'/>" ></td>
                                    <td>${o.ngayDang}</td>
                                    <td>chude</td>
                                    <td>${o.trangThai}</td>
                                    <td><button type="button" class="btn btn-infor"><i class="fa fa-eye"></i> Xem chi tiết </button></td>
                                    <td><button type="button" class="btn btn-warning "><i class="fa fa-edit"></i> Sửa</button></td>
                                    <td><button type="button" class="btn btn-danger "><i class="fa fa-trash-o"></i> Xóa</button></td></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <form id="formPaging" action="<c:url value='/admin-danhsachbaiviet'/>" method="get" >
                     	<ul class="pagination" id="pagination"></ul>
                     	<input type="hidden" value ="" id="page" name="page"/>
                     	<input type="hidden" value ="" id="maxPageItems" name="maxPageItems"/>
                 		<input type="hidden" value ="" id="sortName" name="sortName"/>
                     	<input type="hidden" value ="" id="sortBy" name="sortBy"/>
                 	</form>
                </section>
            </div>
        </section>
       

    </div> 
</div>

<!-- page end-->

</body>

</html>

