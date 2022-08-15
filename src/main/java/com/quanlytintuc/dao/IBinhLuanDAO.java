package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.BinhLuan;

public interface IBinhLuanDAO extends GenericDAO<BinhLuan>{
	List<BinhLuan> findAll(Long mabaiviet);
	BinhLuan findOne(Long mabinhluan);
	Long save(BinhLuan binhluan);
	void update(BinhLuan binhluan);
	void delete(long id);
}
