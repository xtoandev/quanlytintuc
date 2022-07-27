package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.BaiViet;

public interface IBaiVietDAO extends GenericDAO<BaiViet>{
	List<BaiViet> findAll();
	List<BaiViet> findByMaChuDe(Long machude);
	Long save(BaiViet baiviet);
}
