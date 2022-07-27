package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.BaiViet;



public interface IBaiVietService {
	List<BaiViet> findAll();
	List<BaiViet> findByMaChuDe(Long machude);
}
