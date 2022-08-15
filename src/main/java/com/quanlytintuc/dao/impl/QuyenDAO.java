package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IQuyenDAO;
import com.quanlytintuc.mapper.QuyenMapper;
import com.quanlytintuc.model.Quyen;

public class QuyenDAO extends AbstractDAO<Quyen> implements IQuyenDAO{
	@Override
	public List<Quyen> findAll() {
		String sql = "Select * From quyen";
		return query(sql, new QuyenMapper());
	}

	@Override
	public Quyen findOne(Long maquyen) {
		String sql = "Select * From quyen "
				+" where quyen.maquyen = ?";
		List<Quyen> bvs = query(sql, new QuyenMapper(),maquyen);
		return bvs.isEmpty() ? null : bvs.get(0);
	}
}
