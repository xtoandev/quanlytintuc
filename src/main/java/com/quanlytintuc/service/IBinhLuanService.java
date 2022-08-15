package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.BinhLuan;

public interface IBinhLuanService {
	List<BinhLuan> findAll(Long mabaiviet);
	BinhLuan save(BinhLuan binhluan);
	BinhLuan update(BinhLuan binhluan);
	void delete(long[] ids);
}
