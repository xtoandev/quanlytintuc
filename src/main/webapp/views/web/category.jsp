<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${ tenchude.tenChuDe }</title>
</head>
<body>

	 <div class="container-fluid mt-5 pt-3">
        <div class="container">
            <div class="row">
                
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">Chủ đề : ${ tenchude.tenChuDe }</h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href="">Xem tất cả</a>
                            </div>
                        </div>
                        <c:forEach items="${model.listData}" var="o" varStatus="loop">
	                        <c:if test="${ loop.index < 4 }">
		                        <div class="col-lg-3">
		                            <div class="position-relative mb-3">
		                                <img class="img-fluid w-100" src="<c:url value='${o.anhNen }'/>" style="object-fit: cover;">
		                                <div class="bg-white border border-top-0 p-4">
		                                    <div class="mb-2">
		                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
		                                            href="<c:url value='/chu-de?machude=${o.chude.maChuDe}' />">${o.chude.tenChuDe}</a>
		                                        <a class="text-body" href=""><small>${o.ngayDang }</small></a>
		                                    </div>
		                                    <a class="h5 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="<c:url value='/bai-viet?mabaiviet=${o.maBaiViet}' />">${o.tieuDe }</a>
		                                    <p class="m-0">${o.moTa }</p>
		                                </div>
		                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
		                                    <div class="d-flex align-items-center">
		                                        <img class="rounded-circle mr-2" src="template/web/img/user.jpg" width="25" height="25" alt="">
		                                        <small>${o.taikhoan.hoVaTen}</small>
		                                    </div>
		                                    
		                                </div>
		                            </div>
		                        </div>
		                	</c:if>
		                	
		                	<c:if test="${ loop.index == 9 || loop.index == 14}">
		                		<div class="col-lg-12">
		                            <div class="row news-lg mx-0 mb-3">
		                                <div class="col-md-6 h-100 px-0">
		                                    <img class="img-fluid h-100" src="<c:url value='${o.anhNen }'/>" style="object-fit: cover;">
		                                </div>
		                                <div class="col-md-6 d-flex flex-column border bg-white h-100 px-0">
		                                    <div class="mt-auto p-4">
		                                        <div class="mb-2">
		                                            <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
		                                                href="<c:url value='/chu-de?machude=${o.chude.maChuDe}' />">${o.chude.tenChuDe}</a>
		                                            <a class="text-body" href=""><small>${o.ngayDang }</small></a>
		                                        </div>
		                                        <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="<c:url value='/bai-viet?mabaiviet=${o.maBaiViet}' />">${o.tieuDe }</a>
		                                        <p class="m-0">${o.moTa }</p>
		                                    </div>
		                                    <div class="d-flex justify-content-between bg-white border-top mt-auto p-4">
		                                        <div class="d-flex align-items-center">
		                                            <img class="rounded-circle mr-2" src="template/web/img/user.jpg" width="25" height="25" alt="">
		                                            <small>${o.taikhoan.hoVaTen}</small>
		                                        </div>
		                                        <div class="d-flex align-items-center">
		                                            <small class="ml-3"><i class="far fa-eye mr-2"></i>12345</small>
		                                            <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                	</c:if>
		                	
		                	<c:if test="${ loop.index > 4 && loop.index != 9}">
			               		<div class="col-lg-6">
				                		<div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
			                                <img class="img-fluid small-image" src="<c:url value='${o.anhNen }'/>" alt="">
			                                <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
			                                    <div class="mb-2">
			                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2" href="<c:url value='/chu-de?machude=${o.chude.maChuDe}' />">${o.chude.tenChuDe}</a>
			                                        <a class="text-body" href=""><small>${o.ngayDang }</small></a>
			                                    </div>
			                                    <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="<c:url value='/bai-viet?mabaiviet=${o.maBaiViet}' />">${o.tieuDe }</a>
			                                </div>
			                            </div>
		                        </div>
		                	</c:if>
		                	
                        </c:forEach>
                        
                        </div>

                
                
                <div class="col-lg-4">
	                    <!-- Social Follow Start -->
	                   
	                    <!-- Social Follow End -->
	
	                    <!-- Ads Start -->
	                    
	                    <!-- Ads End -->
	
	                    <!-- Popular News Start -->
	                    
	                    <!-- Popular News End -->
	
	                   
	
	                   
                	</div>
            </div>	
        </div>
    </div>

</body>
</html>