package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.TaiKhoan;
import com.quanlytintuc.paging.Pageble;

public interface ITaiKhoanDAO extends GenericDAO<TaiKhoan>{
	TaiKhoan findByEmailAndPassAndStatus(String email,String pass);
	List<TaiKhoan> findAll(Pageble pageble);
	TaiKhoan findOne(Long mataikhoan);
	Long save(TaiKhoan taikhoan);
	void update(TaiKhoan taikhoan);
	void delete(long id);
	Integer getTotalItems();
}
