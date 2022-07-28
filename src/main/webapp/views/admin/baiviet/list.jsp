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
                            </tr>
                        </thead>
                         
                        <tbody>
                            <c:if test = "${fn:length(model.listData) == 0}">
                                <tr><td colspan="6">Chưa có bài viết</td></tr>
                            </c:if>
                            <c:forEach items="${model.listData}" var="o" varStatus="loop">
                                <tr>
                                    <td scope="row">${loop.index + 1}</th>
                                    <td>${o.tieuDe}</td>
                                    <td>${o.maTaiKhoan}</td>
                                    <td>${o.moTa}</td>
                                    <td>${o.noiDung}</td>
                                    <td>${o.anhNen}</td>
                                    <td>${o.ngayDang}</td>
                                    <td>chude</td>
                                    <td>${o.trangThai}</td>
                                    
                                    
                                </tr>
                            </c:forEach>
                           
                        </tbody>
                    </table>
                </section>
            </div>
        </section>

    </div> 
</div>
<!-- page end-->
</body>
</html>