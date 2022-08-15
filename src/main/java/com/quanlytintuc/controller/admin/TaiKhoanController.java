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
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.paging.PageRequest;
import com.quanlytintuc.paging.Pageble;
import com.quanlytintuc.service.IQuyenService;
import com.quanlytintuc.service.ITaiKhoanService;
import com.quanlytintuc.sort.Sorter;
import com.quanlytintuc.utils.FormUtil;
import com.quanlytintuc.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-taikhoan"})
public class TaiKhoanController extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Inject
	private ITaiKhoanService taikhoanService;
	@Inject
	private IQuyenService quyenService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TaiKhoan model = FormUtil.toModel(TaiKhoan.class, request);
		String view = "";
		
		if(model.getType().equals(SystemConstant.LIST)) {
			Pageble pageble = new PageRequest(model.getPage(),
					model.getMaxPageItems(),
					new Sorter(model.getSortName(),model.getSortBy()));
			model.setListData(taikhoanService.findAll(pageble));
			model.setTotalItems(taikhoanService.getTotalItems());
			model.setTotalPage((int)(Math.ceil((double) model.getTotalItems() / model.getMaxPageItems())));
			view = "views/admin/taikhoan/list.jsp";
			
		}else if(model.getType().equals(SystemConstant.EDIT)) {
			
			if(model.getMaTaiKhoan() != null) {
				model = taikhoanService.findOne(model.getMaTaiKhoan());
				
			}
			view = "views/admin/taikhoan/edit.jsp";
			
		}
		
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		request.setAttribute("dsquyen",quyenService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
