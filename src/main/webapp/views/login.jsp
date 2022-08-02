<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

	<div class="container-login100">
			<div class="wrap-login100">
				<form id="formLogin" class="login100-form validate-form" action="<c:url value='/dang-nhap'/>" method="post">
					<span class="login100-form-title p-b-43">
						Đăng nhập 
					</span>
					<c:if test="${not empty message}">
	        			<div class="alert alert-${alert} alert-dismissible fade show au-alert au-alert--70per" role="alert">
	                        <i class="zmdi zmdi-check-circle"></i>
	                        <span class="content">${message}</span>
	                        
	                    </div>
					</c:if>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="matKhau">
						<span class="focus-input100"></span>
						<span class="label-input100">Mật khẩu</span>
					</div>
					
					<input type="hidden"  name = "action" value="login"/>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Đăng nhập
						</button>
					</div>

				</form>
				<div class="login100-more" style="background-image: url('<c:url value = "template/login/images/bg-01.jpg"/> ');">
				</div>
			</div>
		</div>
