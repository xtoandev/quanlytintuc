package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.ChuDe;

public interface IChuDeDAO extends GenericDAO<ChuDe> {
	List<ChuDe> findAll();
}
