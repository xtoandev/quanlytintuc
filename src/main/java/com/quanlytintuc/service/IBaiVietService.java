package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.BaiViet;



public interface IBaiVietService {
	List<BaiViet> findAll(int offset,int limit);
	List<BaiViet> findByMaChuDe(Long machude);
	BaiViet save(BaiViet baiviet);
	BaiViet update(BaiViet baiviet);
	void delete(long[] ids);
	Integer getTotalItems();
}
