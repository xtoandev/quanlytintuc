<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:url var="APIurl" value="/api-admin-chude" />
<c:url var="NewURL" value="/admin-chude" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách chủ đề</title>
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
	<div class="row">
		<div class="col-md-12">
			<!-- DATA TABLE -->
			<h3 class="title-5 m-b-35">Danh sách chủ đề</h3>

			<div class="table-data__tool">
				<div class="table-data__tool-left"></div>
				<div class="table-data__tool-right">
					<a class="au-btn au-btn-icon au-btn--green au-btn--small"
						href="<c:url value='/admin-chude?type=edit' />"> <i
						class="zmdi zmdi-plus"></i>Thêm chủ đề
					</a>
					<button id="btnDelete" type="button"
						class="au-btn au-btn-icon  au-btn--small btn-danger">
						<i class="zmdi zmdi-delete"></i>Xoá chủ đề
					</button>
				</div>
			</div>
			<div class="table-responsive table-responsive-data2">
				<table class="table table-data2">
					<thead
						style="background-color: #fff; border-bottom: 1px solid black;">
						<tr>
							<th><label class="au-checkbox"> <input
									type="checkbox" id="checkAll"> <span
									class="au-checkmark"></span>
							</label></th>
							<th>STT</th>
							<th>Tên chủ đề</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${fn:length(model.listData) == 0}">
							<tr>
								<td colspan="6">Chưa có chủ đề trong hệ thống!</td>
							</tr>
						</c:if>
						<c:forEach items="${model.listData}" var="o" varStatus="loop">
							<tr class="tr-shadow">
								<td><label class="au-checkbox"> <input
										type="checkbox" id="checkbox_${o.maChuDe}"
										value="${o.maChuDe}"> <span class="au-checkmark"></span>
								</label></td>
								<td id="${o.maChuDe}" scope="row">${(loop.index + 1) + (model.page - 1)* model.getMaxPageItems() }
								</th>

								<td>${o.tenChuDe}</td>

								<td><c:url var="editURL" value="/admin-chude">
										<c:param name="type" value="edit" />
										<c:param name="maChuDe" value="${item.maChuDe}" />
									</c:url> <c:url var="detailURL" value="/admin-chude">
										<c:param name="type" value="detail" />
										<c:param name="maChuDe" value="${item.maChuDe}" />
									</c:url>
									<div class="table-data-feature">

										<a
											href="<c:url value='/admin-chude?type=edit&maChuDe=${o.maChuDe}'/>"
											class="item" data-toggle="tooltip" data-placement="top"
											title="" data-original-title="Edit"> <i
											class="zmdi zmdi-edit"></i>
										</a>


									</div></td>
							</tr>
							<tr class="spacer"></tr>

						</c:forEach>
					</tbody>
				</table>

			</div>
			<!-- END DATA TABLE -->
		</div>
	</div>
	<!-- page end-->

	</script>
	<!-- pagging -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="<c:url value = '/template/admin/jquery.twbsPagination.js'/>"
		type="text/javascript"></script>
	<!--script for this page-->
	<script type="text/javascript">
		
		$("#btnDelete").click(function() {
			var data = {};
			var ids = $('tbody input[type=checkbox]:checked').map(function () {
	            return $(this).val();
	        }).get();
			data['ids'] = ids;
			deleteNew(data);
		});
		
		function deleteNew(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'DELETE',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            success: function (result) {
	                window.location.href = "${NewURL}?type=list&message=delete_success";
	            },
	            error: function (error) {
	            	window.location.href = "${NewURL}?type=list&message=error_system";
	            }
	        });
	    }
	</script>
</body>

</html>