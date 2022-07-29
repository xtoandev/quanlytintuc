package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.paging.Pageble;



public interface IBaiVietService {
	List<BaiViet> findAll(Pageble pageble);
	List<BaiViet> findByMaChuDe(Long machude);
	BaiViet save(BaiViet baiviet);
	BaiViet update(BaiViet baiviet);
	void delete(long[] ids);
	Integer getTotalItems();
}
