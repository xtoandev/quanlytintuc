package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlytintuc.model.ChuDe;

public class ChuDeMapper implements RowMapper<ChuDe>{

	@Override
	public ChuDe mapRow(ResultSet rs) {
		try {
			ChuDe cd = new ChuDe();
			cd.setMaChuDe(rs.getLong("machude"));
			cd.setTenChuDe(rs.getString("tenchude"));
			return cd;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	

}
