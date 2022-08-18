<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-binhluan" />
<c:url var="NewURL" value="/bai-viet" />
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
						<img class="img-fluid w-100" src="<c:url value='${baiviet.anhNen}'/>"
							style="object-fit: cover; min-height: 400px;">
						<div class="bg-white border border-top-0 p-4">
							<div class="mb-3">
								<a
									class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
									href="<c:url value='/chu-de?machude=${baiviet.chude.maChuDe}' />">
									${ baiviet.chude.tenChuDe} </a> <a class="text-body" href="">${baiviet.ngayDang}5</a>
							</div>
							<h1 class="mb-3 text-secondary text-uppercase font-weight-bold">${baiviet.tieuDe}</h1>
							<h6>${ baiviet.moTa }</h6>
							<div>
								<div class = "news-content">${ baiviet.noiDung }</div>
							</div>

						</div>
						<div
							class="d-flex justify-content-between bg-white border border-top-0 p-4">
							<div class="d-flex align-items-center">
								<img class="rounded-circle mr-2" src="${baiviet.taikhoan.anhNen}" width="25" height="25" alt="">
								<span>${baiviet.taikhoan.hoVaTen}</span>
							</div>
							<div class="d-flex align-items-center">
								<span class="ml-3"><i class="far fa-comment mr-2"></i>${ slbinhluan}</span>
							</div>
						</div>
					</div>
					<!-- News Detail End -->

					<!-- Comment List Start -->
					<div class="mb-3">
						<div class="section-title mb-0">
							<h4 class="m-0 text-uppercase font-weight-bold">Bình Luận</h4>
						</div>
						<div class="bg-white border border-top-0 p-4">
							<c:if test="${ empty TAIKHOANMODEL }">
								<p>Bạn chưa<a href="<c:url value='/dang-nhap?action=login' />"> đăng nhập!</a></p>
							</c:if>
							<c:if test="${not empty TAIKHOANMODEL }">
								<form id="formSubmit" >
									<div class="form-row">
										<div class="form-group col-md-1">
											<img src="<c:url value='https://i.ibb.co/L50Mcn5/no-ava.png' />" alt="Image"
												class="img-fluid mr-3 mt-1"
												style="width: 45px; height: auto;">
										</div>
										<div class="form-group col-md-9">
											<input type="text" class="form-control p-4" name="noiDung"
												placeholder="Nhập nội dung bình luận!" required="required">
										</div>
										<input type="hidden" name="maBaiViet" value="${baiviet.maBaiViet}" required="required">
										<input type="hidden" id="disabled-input" name="ngayGui" value="${ngayhientai }" required="required">
										<div class="col-md-2">
											<button class="btn btn-primary font-weight-semi-bold px-1"
												style="height: 50px;" type="submit" id="btnAddComment" >Bình luận</button>
										</div>
									</div>
								</form>
							</c:if>
						</div>
						<div class="bg-white border border-top-0 p-4">
							<c:if test="${not empty commentList }">
								<c:forEach items="${commentList}" var="o" varStatus="loop">
									<div class="media mb-4">
										<img src="<c:url value='${o.taikhoan.anhNen}' />" alt="Image"
											class="img-fluid mr-3 mt-1"
											style="width: 45px; height: auto;">
										<div class="media-body">
											<h6>
												<a class="text-secondary font-weight-bold" href="">${o.taikhoan.hoVaTen}</a>
												<small><i>${o.ngayGui}</i></small>
											</h6>
											<p>${o.noiDung}</p>

										</div>
									</div>
								</c:forEach>
							</c:if>
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
	<script>
		
	    $('#btnAddComment').click(function (e) {
	        e.preventDefault();
	        var data = {};
	        var formData = $('#formSubmit').serializeArray();
	        $.each(formData, function (i, v) {
	            data[""+v.name+""] = v.value;
	        });
	        
	        
	        
	            addChuDe(data);
	        
	    });
	    function addChuDe(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'POST',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            dataType: 'json',
	            success: function (result) {
	            	window.location.href = "${NewURL}?mabaiviet="+result.maBaiViet;
	            },
	            error: function (error) {
	            	//window.location.href = "${NewURL}?type=list&message=error_system";
	            	window.location.href = "${NewURL}?mabaiviet="+result.maBaiViet;
	            }
	        });
	    }
	    
	</script>
</body>
</html>