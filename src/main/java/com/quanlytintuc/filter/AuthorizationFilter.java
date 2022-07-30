package com.quanlytintuc.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.quanlytintuc.constant.SystemConstant;
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.utils.SessionUtil;

public class AuthorizationFilter implements Filter {
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest  servletRequest, ServletResponse  servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        
        if (url.startsWith(request.getContextPath()+"/admin")) {
        	TaiKhoan model = (TaiKhoan) SessionUtil.getInstance().getValue(request, "TAIKHOANMODEL");
        	if (model != null) {
        		if (model.getQuyen().getTenQuyen().equals(SystemConstant.ADMIN)) {
        			filterChain.doFilter(servletRequest, servletResponse);
                } else if (model.getQuyen().getTenQuyen().equals(SystemConstant.NGUOIDUNG)) {
                    response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_permission&alert=danger");
                }
        	}else {
        		 response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
        	}
        }else {
        	filterChain.doFilter(servletRequest, servletResponse);
        }
        
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	

}
