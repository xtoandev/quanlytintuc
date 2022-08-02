package com.quanlytintuc.controller.admin;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quanlytintuc.constant.SystemConstant;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.paging.PageRequest;
import com.quanlytintuc.paging.Pageble;
import com.quanlytintuc.service.IBaiVietService;
import com.quanlytintuc.service.IChuDeService;
import com.quanlytintuc.sort.Sorter;
import com.quanlytintuc.utils.FormUtil;
import com.quanlytintuc.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-baiviet"})
public class BaiVietController extends HttpServlet{

	/**
	 * 
	 */
	@Inject
	private IBaiVietService baivietService;
	@Inject
	private IChuDeService chudeService;
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		BaiViet model = FormUtil.toModel(BaiViet.class, request);
		Pageble pageble = new PageRequest(model.getPage(),
											model.getMaxPageItems(),
											new Sorter(model.getSortName(),model.getSortBy()));
		model.setListData(baivietService.findAll(pageble));
		model.setTotalItems(baivietService.getTotalItems());
		model.setTotalPage((int)(Math.ceil((double) model.getTotalItems() / model.getMaxPageItems())));
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("views/admin/baiviet/list.jsp");
		rd.forward(request, response);*/
		
		BaiViet model = FormUtil.toModel(BaiViet.class, request);
		String view = "";
		
		if(model.getType().equals(SystemConstant.LIST)) {
			Pageble pageble = new PageRequest(model.getPage(),
					model.getMaxPageItems(),
					new Sorter(model.getSortName(),model.getSortBy()));
			model.setListData(baivietService.findAll(pageble));
			model.setTotalItems(baivietService.getTotalItems());
			model.setTotalPage((int)(Math.ceil((double) model.getTotalItems() / model.getMaxPageItems())));
			view = "views/admin/baiviet/list.jsp";
			
		}else if(model.getType().equals(SystemConstant.EDIT)) {
			
			if(model.getMaBaiViet() != null) {
				model = baivietService.findOne(model.getMaBaiViet());
				
			}
			view = "views/admin/baiviet/edit.jsp";
			LocalDate date = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
			request.setAttribute("ngayhientai",date.format(formatter).toString());
		}
		
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		request.setAttribute("dschude",chudeService.findAll());
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
