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
import com.quanlytintuc.model.ChuDe;
import com.quanlytintuc.service.IChuDeService;
import com.quanlytintuc.utils.FormUtil;
import com.quanlytintuc.utils.MessageUtil;

@WebServlet(urlPatterns = {"/admin-chude"})
public class ChuDeController extends HttpServlet{
	@Inject
	private IChuDeService chudeService;
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ChuDe model = FormUtil.toModel(ChuDe.class, request);
		String view = "";
		
		if(model.getType().equals(SystemConstant.LIST)) {
			model.setListData(chudeService.findAll());
			view = "views/admin/chude/list.jsp";
			
		}else if(model.getType().equals(SystemConstant.EDIT)) {
			
			if(model.getMaChuDe() != null) {
				model = chudeService.findOne(model.getMaChuDe());
				
			}
			view = "views/admin/chude/edit.jsp";
			
		}
		
		MessageUtil.showMessage(request);
		request.setAttribute(SystemConstant.MODEL, model);
		
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
