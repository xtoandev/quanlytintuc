<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
</head>
<body>
	<!-- Main News Slider Start -->
    
    <!-- Main News Slider End -->
 
    <!-- Breaking News Start -->
    
    <!-- Breaking News End -->
    
    <!-- Featured News Slider Start -->
    
    <!-- Featured News Slider End -->
    <!-- News With Sidebar Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">Latest News</h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                            </div>
                        </div>
                        <c:forEach items="${baivietmoi.listData}" var="o" varStatus="loop">
	                        <div class="col-lg-6">
	                            <div class="position-relative mb-3">
	                                <img class="img-fluid w-100" src="<c:url value='${o.anhNen }'/>" style="object-fit: cover;">
	                                <div class="bg-white border border-top-0 p-4">
	                                    <div class="mb-2">
	                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
	                                            href="">${o.chude.tenChuDe}</a>
	                                        <a class="text-body" href=""><small>${o.ngayDang }</small></a>
	                                    </div>
	                                    <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="">${o.tieuDe }</a>
	                                    <p class="m-0">${o.moTa }</p>
	                                </div>
	                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
	                                    <div class="d-flex align-items-center">
	                                        <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
	                                        <small>${o.taikhoan.hoVaTen}</small>
	                                    </div>
	                                    
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                        
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                   
                    <!-- Social Follow End -->

                    <!-- Ads Start -->
                    
                    <!-- Ads End -->

                    <!-- Popular News Start -->
                    
                    <!-- Popular News End -->

                    <!-- Newsletter Start -->
                    
                    <!-- Newsletter End -->

                    <!-- Tags Start -->
                    
                    <!-- Tags End -->
                </div>
            </div>
        </div>
    </div>
    <!-- News With Sidebar End -->
</body>
</html>