package com.quanlytintuc.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.service.IBaiVietService;
import com.quanlytintuc.service.IChuDeService;

@WebServlet(urlPatterns = {"/admin-trang-chu"})
public class HomeController extends HttpServlet{

	/**
	 * 
	 */

	@Inject
	private IBaiVietService baivietService;
	
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tieude = "Bài Viết 6";
		Long mataikhoan = (long) 2;
		String mota = "mota66";
		String noidung = "baivie666";
		String anhnen = "anh";
		String ngaydang = "2022-07-27";
		int  trangthai = 1;
				
		BaiViet bv = new BaiViet();
		bv.setTieuDe(tieude);
		bv.setMaTaiKhoan(mataikhoan);
		bv.setMoTa(mota);
		bv.setNoiDung(noidung);
		bv.setAnhNen(anhnen);
		bv.setNgayDang(ngaydang);
		bv.setTrangThai(trangthai);
		//baivietService.save(bv);
		
		RequestDispatcher rd = request.getRequestDispatcher("views/admin/home.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	

}
