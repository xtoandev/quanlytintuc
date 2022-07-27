package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.mapper.RowMapper;

public interface GenericDAO<T> {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
}
