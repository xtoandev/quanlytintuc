package com.quanlytintuc.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.quanlytintuc.model.ChuDe;
import com.quanlytintuc.service.IChuDeService;
import com.quanlytintuc.utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-chude"})
public class ChuDeAPI extends HttpServlet{
	@Inject
	private IChuDeService chudeService;
	
private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ChuDe tk = HttpUtil.of(request.getReader()).toModel(ChuDe.class);
		tk = chudeService.save(tk);
		mapper.writeValue(response.getOutputStream(), tk);
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ChuDe bvUpdate = HttpUtil.of(request.getReader()).toModel(ChuDe.class);
		bvUpdate = chudeService.update(bvUpdate);
		mapper.writeValue(response.getOutputStream(), bvUpdate);	
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ChuDe bv = HttpUtil.of(request.getReader()).toModel(ChuDe.class);
		chudeService.delete(bv.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");	
	}
}
