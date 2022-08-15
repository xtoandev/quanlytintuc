package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlytintuc.model.Quyen;

public class QuyenMapper implements RowMapper<Quyen>{

	@Override
	public Quyen mapRow(ResultSet rs) {
		Quyen qu = new Quyen();
		try {
			qu.setMaQuyen(rs.getLong("maquyen"));
			qu.setTenQuyen(rs.getString("tenquyen"));

			return qu;
		} catch (SQLException e1) {
			e1.printStackTrace();
			return null;
		}
	}

}
