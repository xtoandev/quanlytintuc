package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.ITaiKhoanDAO;
import com.quanlytintuc.mapper.TaiKhoanMapper;
import com.quanlytintuc.model.TaiKhoan;

public class TaiKhoanDAO extends AbstractDAO<TaiKhoan> implements ITaiKhoanDAO{

	@Override
	public TaiKhoan findByEmailAndPassAndStatus(String email, String pass) {
		String sql = "SELECT * FROM taikhoan " + 
				" LEFT JOIN quyen" + 
				" ON taikhoan.maquyen = quyen.maquyen" + 
				" WHERE email = ? and matkhau = ?";
		
		List<TaiKhoan> taikhoan = query(sql, new TaiKhoanMapper(),email,pass);
		return taikhoan.isEmpty() ? null : taikhoan.get(0);
	}

	

}
