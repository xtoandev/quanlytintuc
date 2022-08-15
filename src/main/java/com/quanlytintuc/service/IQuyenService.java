package com.quanlytintuc.service;

import java.util.List;

import com.quanlytintuc.model.Quyen;

public interface IQuyenService {
	List<Quyen> findAll();
	Quyen findOne(Long maquyen);
}
