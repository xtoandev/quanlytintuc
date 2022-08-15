package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.Quyen;

public interface IQuyenDAO extends GenericDAO<Quyen>{
	List<Quyen> findAll();
	Quyen findOne(Long maquyen);
}
