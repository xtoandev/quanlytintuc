package com.quanlytintuc.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
