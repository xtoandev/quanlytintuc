package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.ChuDe;

public interface IChuDeDAO extends GenericDAO<ChuDe> {
	List<ChuDe> findAll();
	
	ChuDe findOne(Long machude);
	Long save(ChuDe chude);
	void update(ChuDe chude);
	void delete(long id);
	
}
