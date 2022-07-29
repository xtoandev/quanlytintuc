package com.quanlytintuc.controller.admin;

import java.io.IOException;
import java.util.List;

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
		String pageStr = request.getParameter("page");
		String maxPageItemsStr = request.getParameter("maxPageItems");
		if(pageStr != null) {
			model.setPage(Integer.parseInt(pageStr));
			System.out.println(model.getPage());
		} else {
			model.setPage(1);
		}
		if(maxPageItemsStr != null) {
			model.setMaxPageItems(Integer.parseInt(maxPageItemsStr));
		}
		
		Integer offset = (model.getPage() - 1)* model.getMaxPageItems();
		model.setListData(baivietService.findAll(offset,model.getMaxPageItems()));
		model.setTotalItems(baivietService.getTotalItems());
		model.setTotalPage((int)(Math.ceil((double) model.getTotalItems() / model.getMaxPageItems())));

		
		
		request.setAttribute(SystemConstant.MODEL, model);
		
		RequestDispatcher rd = request.getRequestDispatcher("views/admin/baiviet/list.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
