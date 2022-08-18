package com.quanlytintuc.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.quanlytintuc.model.BinhLuan;
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.service.IBinhLuanService;
import com.quanlytintuc.utils.HttpUtil;
import com.quanlytintuc.utils.SessionUtil;
@WebServlet(urlPatterns = {"/api-admin-binhluan"})
public class BinhLuanAPI extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	@Inject
	private IBinhLuanService binhluanService;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BinhLuan tk = HttpUtil.of(request.getReader()).toModel(BinhLuan.class);
		TaiKhoan taikhoan = (TaiKhoan) SessionUtil.getInstance().getValue(request, "TAIKHOANMODEL");
		tk.setMaTaiKhoan(taikhoan.getMaTaiKhoan());
		tk = binhluanService.save(tk);
		mapper.writeValue(response.getOutputStream(), tk);
	}
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BinhLuan bvUpdate = HttpUtil.of(request.getReader()).toModel(BinhLuan.class);
		bvUpdate = binhluanService.update(bvUpdate);
		mapper.writeValue(response.getOutputStream(), bvUpdate);	
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		BinhLuan bv = HttpUtil.of(request.getReader()).toModel(BinhLuan.class);
		binhluanService.delete(bv.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");	
	}
}
