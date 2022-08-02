<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:url var="APIurl" value="/api-admin-baiviet"/>
<c:url var ="NewURL" value="/admin-baiviet"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Danh sách bài viết</title>


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


<!-- page start-->

<c:if test="${not empty messageResponse}">
									<div class="alert alert-${alert}">
  										${messageResponse}
									</div>
</c:if>
<div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Danh sách bài viết</h3>
                                <!--  
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div class="rs-select2--light rs-select2--md">
                                            <select class="js-select2 select2-hidden-accessible" name="property" tabindex="-1" aria-hidden="true">
                                                <option selected="selected">All Properties</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 126.8px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-property-ji-container"><span class="select2-selection__rendered" id="select2-property-ji-container" title="All Properties">All Properties</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2 select2-hidden-accessible" name="time" tabindex="-1" aria-hidden="true">
                                                <option selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 77.2px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-time-sq-container"><span class="select2-selection__rendered" id="select2-time-sq-container" title="Today">Today</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>add item</button>
                                        <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2 select2-hidden-accessible" name="type" tabindex="-1" aria-hidden="true">
                                                <option selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 90.8px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-type-4k-container"><span class="select2-selection__rendered" id="select2-type-4k-container" title="Export">Export</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                
                                -->
                                <div class="table-data__tool">
                                	<div class="table-data__tool-left"></div>
	                                <div class="table-data__tool-right">
	                                        <a class="au-btn au-btn-icon au-btn--green au-btn--small" href="<c:url value='/admin-baiviet?type=edit' />">
	                                            <i class="zmdi zmdi-plus"></i>Thêm bài viết</a>
	                                        <button id="btnDelete" type="button" class="au-btn au-btn-icon  au-btn--small btn-danger">
	                                            <i class="zmdi zmdi-delete"></i>Xoá bài viết</button>
	                                </div>
	                            </div>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead style="background-color: #fff;border-bottom: 1px solid black;">
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox" id="checkAll">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                 <th>STT</th>
				                                <th>Tiêu Đề</th>
				                                <th>Người Đăng</th>
				                                <th>Mô Tả</th>
				                         
				                                <th>Ảnh Nền</th>
				                                <th>Ngày Đăng</th>
				                                <th>Chủ Đề</th>
				                                <th>Trạng Thái</th>
                                                <th>Thao tac</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:if test = "${fn:length(model.listData) == 0}">
			                                <tr><td colspan="6">Chưa có bài viết</td></tr>
			                            </c:if>
			                            <c:forEach items="${model.listData}" var="o" varStatus="loop">
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox" id="checkbox_${o.maBaiViet}" value="${o.maBaiViet}">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td id="${o.maBaiViet}" scope="row">${(loop.index + 1) + (model.page - 1)* model.getMaxPageItems() }</th>
                                    			
                                    			<td>${o.tieuDe}</td>
                                    			<td>${o.taikhoan.hoVaTen}</td>
                                    			<td>${o.moTa}</td>
                              
                                    			<td><img style="max-height: 100px;max-weight: 100px;" src= "<c:url  value='${o.anhNen}'/>" ></td>
                                    			<td>${o.ngayDang}</td>
                                    			<td>${o.chude.tenChuDe}</td>
                                    			<td>
                                    				<c:if test="${o.trangThai == 1}">
                                    					<span class="status--process">Đã duyệt</span>
                                    				</c:if>
                                    				<c:if test="${o.trangThai == 0}">
                                    					<span class="status--denied">Chưa duyệt</span>
                                    				</c:if>
                                    			</td>
                                                
                                                <td>
                                                	<c:url var="editURL" value="/admin-baiviet">
														<c:param name="type" value="edit"/>
														<c:param name="maTaiKhoan" value="${item.maTaiKhoan}"/>
													</c:url>
													<c:url var="detailURL" value="/admin-baiviet">
														<c:param name="type" value="detail"/>
														<c:param name="maTaiKhoan" value="${item.maTaiKhoan}"/>
													</c:url>
                                                    <div class="table-data-feature">
                                                        <a class="item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Send">
                                                            <i class="fa fa-eye"></i>
                                                        </a>
                                                        <a href="<c:url value='/admin-baiviet?type=edit&maBaiViet=${o.maBaiViet}'/> " class="item" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </a>
                                                      
                                                        
                                                    </div>
                                                </td>
                                            	</tr>
                                            	<tr class="spacer"></tr>
                                            
                                           </c:forEach>
                                        </tbody>
                                    </table>
                                     <form id="formPaging" action="<c:url value='/admin-baiviet'/>" method="get" >
				                     	<ul class="pagination" id="pagination"></ul>
				                     	<input type="hidden" value ="" id="page" name="page"/>
				                     	<input type="hidden" value ="" id="maxPageItems" name="maxPageItems"/>
				                 		<input type="hidden" value ="" id="sortName" name="sortName"/>
				                     	<input type="hidden" value ="" id="sortBy" name="sortBy"/>
				                     	<input type="hidden" value ="list" id="type" name="type"/>
				                 	</form>
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
<!-- page end-->

</script><!-- pagging -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="<c:url value = '/template/admin/jquery.twbsPagination.js'/>" type="text/javascript"></script>
<!--script for this page-->
<script type="text/javascript">
	var totalPages = ${model.totalPage};
	var currentPage = ${model.page};
	var limit = 5;
	$(function () {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages: totalPages,
			visiblePages: 5,
			startPage: currentPage,
			onPageClick: function (event, page) {
				if (currentPage != page) {
					$('#maxPageItems').val(limit);
					$('#page').val(page);
					$('#sortName').val('ngaydang');
					$('#sortBy').val('desc');
					$('#formPaging').submit();
				}
			}
		});
	});
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
                window.location.href = "${NewURL}?type=list&maxPageItems=5&page=1&sortName=ngaydang&sortBy=desc&message=delete_success";
            },
            error: function (error) {
            	window.location.href = "${NewURL}?type=list&maxPageItems=5&page=1&sortName=ngaydang&sortBy=desc&message=error_system";
            }
        });
    }
</script>
</body>

</html>

