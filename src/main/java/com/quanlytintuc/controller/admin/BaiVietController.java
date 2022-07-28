package com.quanlytintuc.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quanlytintuc.constant.SystemConstant;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.service.IBaiVietService;

@WebServlet(urlPatterns = {"/admin-danhsachbaiviet"})
public class BaiVietController extends HttpServlet{

	/**
	 * 
	 */
	@Inject
	private IBaiVietService baivietService;

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BaiViet model = new BaiViet();
		model.setListData(baivietService.findAll());
		request.setAttribute(SystemConstant.MODEL, model);
		
		RequestDispatcher rd = request.getRequestDispatcher("views/admin/baiviet/list.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
