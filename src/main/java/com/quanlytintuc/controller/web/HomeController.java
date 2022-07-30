package com.quanlytintuc.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.service.IBaiVietService;
import com.quanlytintuc.service.ITaiKhoanService;
import com.quanlytintuc.utils.FormUtil;
import com.quanlytintuc.utils.SessionUtil;



@WebServlet(urlPatterns = {"/trang-chu","/dang-nhap","/dang-xuat"})
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	@Inject
	private IBaiVietService baivietService;
	@Inject
	private ITaiKhoanService taikhoanService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String message = request.getParameter("message");
		String alert = request.getParameter("alert");
		if(message != null && alert != null) {
			request.setAttribute("message", resourceBundle.getString(message));
			request.setAttribute("alert", alert);
		}
		
		
		if(action!= null && action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
			rd.forward(request, response);
		}else if(action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "TAIKHOANMODEL");
			response.sendRedirect(request.getContextPath()+"/trang-chu");
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("views/web/home.jsp");
			rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action!= null && action.equals("login")) {
			TaiKhoan user = FormUtil.toModel(TaiKhoan.class, request);
			
			user = taikhoanService.findByEmailAndPassAndStatus(user.getEmail(), user.getMatKhau());
			
			if(user != null && user.getTrangThai() == 1) {
				SessionUtil.getInstance().putValue(request, "TAIKHOANMODEL", user);
				if(user.getQuyen().getTenQuyen().equals("admin")) {
					response.sendRedirect(request.getContextPath()+"/admin-trang-chu");
				}else if(user.getQuyen().getTenQuyen().equals("nguoidung")) {
					response.sendRedirect(request.getContextPath()+"/trang-chu");
				}
			}else {
				response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}
	
	
}
