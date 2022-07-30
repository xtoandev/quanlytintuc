package com.quanlytintuc.service;

import com.quanlytintuc.model.TaiKhoan;

public interface ITaiKhoanService {
	TaiKhoan findByEmailAndPassAndStatus(String email,String pass);
}
