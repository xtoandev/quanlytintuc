<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${baiviet.tieuDe}</title>

</head>
<body>

<div class="container-fluid mt-5 mb-3 pt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- News Detail Start -->
                    <div class="position-relative mb-3">
                        <img class="img-fluid w-100" src="<c:url value='${baiviet.anhNen}'/>" style="object-fit: cover;">
                        <div class="bg-white border border-top-0 p-4">
                            <div class="mb-3">
                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                    href="<c:url value='/chu-de?machude=${baiviet.chude.maChuDe}' />"> ${ baiviet.chude.tenChuDe} </a>
                                <a class="text-body" href="">${baiviet.ngayDang}5</a>
                            </div>
                            <h1 class="mb-3 text-secondary text-uppercase font-weight-bold">${baiviet.tieuDe}</h1>
                            <h6>
                            	${ baiviet.moTa }
                           </h6>
                            <div>
                            	${ baiviet.noiDung }
                            </div>
                            
                        </div>
                        <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle mr-2" src="template/web/img/user.jpg" width="25" height="25" alt="">
                                <span>${baiviet.taikhoan.hoVaTen}</span>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="ml-3"><i class="far fa-eye mr-2"></i>12345</span>
                                <span class="ml-3"><i class="far fa-comment mr-2"></i>123</span>
                            </div>
                        </div>
                    </div>
                    <!-- News Detail End -->

                    <!-- Comment List Start -->
                    <div class="mb-3">
                        <div class="section-title mb-0">
                            <h4 class="m-0 text-uppercase font-weight-bold">3 Bình Luận</h4>
                        </div>
                        <div class="bg-white border border-top-0 p-4">
                            <div class="media mb-4">
                                <img src="template/web/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;height: auto;">
                                <div class="media-body">
                                    <h6><a class="text-secondary font-weight-bold" href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                                    <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor labore
                                        accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                    <button class="btn btn-sm btn-outline-secondary">Trả lời</button>
                                </div>
                            </div>
                            <div class="media">
                                <img src="template/web/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;height: auto;">
                                <div class="media-body">
                                    <h6><a class="text-secondary font-weight-bold" href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                                    <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor labore
                                        accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                    <button class="btn btn-sm btn-outline-secondary">Trả lời</button>
                                    <div class="media mt-4">
                                        <img src="template/web/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1"
                                            style="width: 45px;height: auto;">
                                        <div class="media-body">
                                            <h6><a class="text-secondary font-weight-bold" href="">John Doe</a> <small><i>01 Jan 2045</i></small></h6>
                                            <p>Diam amet duo labore stet elitr invidunt ea clita ipsum voluptua, tempor
                                                labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed
                                                eirmod ipsum.</p>
                                            <button class="btn btn-sm btn-outline-secondary">Trả lời</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Comment List End -->

                    <!-- Comment Form Start -->
                    
                    <!-- Comment Form End -->
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

</body>
</html>