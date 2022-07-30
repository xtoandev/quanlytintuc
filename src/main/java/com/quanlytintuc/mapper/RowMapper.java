package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public interface RowMapper<T> {
	DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyyy");  
	T mapRow(ResultSet rs);
}
