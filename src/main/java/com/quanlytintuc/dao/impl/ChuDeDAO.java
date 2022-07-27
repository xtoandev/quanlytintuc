package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IChuDeDAO;
import com.quanlytintuc.mapper.ChuDeMapper;
import com.quanlytintuc.model.ChuDe;

public class ChuDeDAO extends AbstractDAO<ChuDe> implements IChuDeDAO{
	
	
	
	@Override
	public List<ChuDe> findAll() {
		String sql = "Select * From chude";
		return query(sql, new ChuDeMapper());
	}
	
}
