package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.ChuDe;

public interface IChuDeService {
	List<ChuDe> findAll();
	ChuDe findOne(Long machude);
	ChuDe save(ChuDe chude);
	ChuDe update(ChuDe chude);
	void delete(long[] ids);
}
