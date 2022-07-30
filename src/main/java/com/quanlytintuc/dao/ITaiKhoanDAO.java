package com.quanlytintuc.dao;

import com.quanlytintuc.model.TaiKhoan;

public interface ITaiKhoanDAO extends GenericDAO<TaiKhoan>{
	TaiKhoan findByEmailAndPassAndStatus(String email,String pass);
	
}
