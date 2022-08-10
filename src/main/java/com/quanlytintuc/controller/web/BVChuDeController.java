package com.quanlytintuc.controller.web;

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
import com.quanlytintuc.service.IChuDeService;

@WebServlet(urlPatterns = {"/chu-de"})
public class BVChuDeController extends HttpServlet{

	/**
	 * 
	 */
	@Inject
	private IChuDeService chudeService;
	@Inject
	private IBaiVietService baivietService;
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long cd =  Long.parseLong(request.getParameter("machude"));
		BaiViet model = new BaiViet();
		if(cd != null) {
			model.setListData(baivietService.findByMaChuDe(cd));
			request.setAttribute("tenchude", chudeService.findOne(cd));
		}
		request.setAttribute("baivietmoi", model);
		request.setAttribute("dschude",chudeService.findAll());
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("views/web/category.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
