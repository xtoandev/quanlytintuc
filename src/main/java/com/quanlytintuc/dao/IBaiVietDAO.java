package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.BaiViet;

public interface IBaiVietDAO extends GenericDAO<BaiViet>{
	
	List<BaiViet> findAll(int offset,int limit);
	BaiViet findOne(Long mabaiviet);
	List<BaiViet> findByMaChuDe(Long machude);
	Long save(BaiViet baiviet);
	void update(BaiViet baiviet);
	void delete(long id);
	Integer getTotalItems();
	
	
	
}
