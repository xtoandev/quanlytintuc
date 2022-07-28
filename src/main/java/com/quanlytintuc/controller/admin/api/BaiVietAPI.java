package com.quanlytintuc.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.service.IBaiVietService;
import com.quanlytintuc.utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-baiviet"})
public class BaiVietAPI extends HttpServlet{

	/**
	 * 
	 */
	@Inject
	private IBaiVietService baivietService;
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BaiViet bv = HttpUtil.of(request.getReader()).toModel(BaiViet.class);
		bv = baivietService.save(bv);
		mapper.writeValue(response.getOutputStream(), bv);
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BaiViet bvUpdate = HttpUtil.of(request.getReader()).toModel(BaiViet.class);
		bvUpdate = baivietService.update(bvUpdate);
		mapper.writeValue(response.getOutputStream(), bvUpdate);	
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BaiViet bv = HttpUtil.of(request.getReader()).toModel(BaiViet.class);
		baivietService.delete(bv.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");	
	}
	
}
