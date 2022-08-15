package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.paging.Pageble;

public interface ITaiKhoanService {
	TaiKhoan findByEmailAndPassAndStatus(String email,String pass);
	List<TaiKhoan> findAll(Pageble pageble);
	TaiKhoan findOne(Long mataikhoan);
	TaiKhoan save(TaiKhoan taikhoan);
	TaiKhoan update(TaiKhoan taikhoan);
	void delete(long[] ids);
	Integer getTotalItems();
}
