package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IQuyenDAO;
import com.quanlytintuc.model.Quyen;
import com.quanlytintuc.service.IQuyenService;

public class QuyenService implements IQuyenService{
	@Inject
	private IQuyenDAO quyenDAO;
	@Override
	public List<Quyen> findAll() {
		// TODO Auto-generated method stub
		return quyenDAO.findAll();
	}

	@Override
	public Quyen findOne(Long maquyen) {
		// TODO Auto-generated method stub
		return quyenDAO.findOne(maquyen);
	}
	
}
