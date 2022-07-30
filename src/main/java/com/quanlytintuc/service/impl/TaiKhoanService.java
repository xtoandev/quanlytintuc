package com.quanlytintuc.service.impl;

import javax.inject.Inject;

import com.quanlytintuc.dao.ITaiKhoanDAO;
import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.service.ITaiKhoanService;

public class TaiKhoanService implements ITaiKhoanService{
	@Inject
	private ITaiKhoanDAO taikhoanDAO;
	
	@Override
	public TaiKhoan findByEmailAndPassAndStatus(String email, String pass) {
		return taikhoanDAO.findByEmailAndPassAndStatus(email, pass);
	}

}
